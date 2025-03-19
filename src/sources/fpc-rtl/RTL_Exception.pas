// -----------------------------------------------------------------
// File:   RTL_Exception.pas
// Author: (c) 2024 Jens Kallup - paule32
// All rights reserved
//
// only for education, and non-profit usage !
// -----------------------------------------------------------------
{$ifdef windows_header}
{$mode delphi}
{$define FPC_USE_WIN32_SEH}
{$M-}

{$if declared(TObject) = false}
{$I RTL_Object.pas}
{$endif}

const
    SCOPE_FINALLY  = 0; // finally code in RvaHandler
    SCOPE_CATCHALL = 1; // unwinds to RvaEnd, RvaHandler is the end of except block
    SCOPE_IMPLICIT = 2; // finally code in RvaHandler, unwinds to RvaEnd
                        // otherwise: except with 'on' stmts, value is RVA of filter data
                      
const
    ExitProc: CodePointer = nil;
    ErrorAddr: CodePointer = nil;
    ErrorCode: Word = 0;
    ErrorBase: Pointer = nil; public name 'FPC_ERRORBASE';

const
    EXCEPTION_MAXIMUM_PARAMETERS = 15;

    { exception flags (not everything applies to Win32!) }
    EXCEPTION_NONCONTINUABLE  = $01;
    EXCEPTION_UNWINDING       = $02;
    EXCEPTION_EXIT_UNWIND     = $04;
    EXCEPTION_STACK_INVALID   = $08;
    EXCEPTION_NESTED_CALL     = $10;
    EXCEPTION_TARGET_UNWIND   = $20;
    EXCEPTION_COLLIDED_UNWIND = $40;
    
    EXCEPTION_UNWIND = EXCEPTION_UNWINDING or EXCEPTION_EXIT_UNWIND;
    
type
    EXCEPTION_DISPOSITION = (
        ExceptionContinueExecution,
        ExceptionContinueSearch,
        ExceptionNestedException,
        ExceptionCollidedUnwind
    );

type
    PEXCEPTION_RECORD = ^EXCEPTION_RECORD;
    EXCEPTION_RECORD  = record
        ExceptionCode   : DWORD;
        ExceptionFlags  : DWORD;
        ExceptionRecord : PEXCEPTION_RECORD;
        ExceptionAddress: Pointer;
        NumberParameters: DWORD;
        ExceptionInformation: array[0..(EXCEPTION_MAXIMUM_PARAMETERS)-1] of ULONG_PTR;
    end;

    PSEHFrame = ^TSEHFrame;
    TSEHFrame = record
        Next: PSEHFrame;
        Addr: Pointer;
        _EBP: PtrUint;
        HandlerArg: Pointer;
    end;

type
    PScopeRec = ^TScopeRec;
    TScopeRec = record
        Typ: DWord;
        RvaStart: DWord;
        RvaEnd: DWord;
        RvaHandler: DWord;
    end;
    
type
    TSEHHandlerData = record
        Version            : LongWord;  // Version des Handlers (entspricht .long 1)
        Flags              : LongWord;  // Flags für spezielle Handling-Informationen (entspricht .long 1)
        SpecificHandlerRVA : Pointer ;  // Adresse für den spezifischen Handler
        ExceptCodeRVA      : Pointer ;  // Adresse für den Except-Code
        UnwindCodeRVA      : Pointer ;  // Adresse für das Stack-Unwinding
    end;

    { Exception object stack }
    PExceptObject = ^TExceptObject;
    TExceptObject = record
        FObject: TObject;
        Addr: codepointer;
        Next: PExceptObject;
        refcount: longint;
        Framecount: longint;
        Frames: PCodePointer;
        
        {$ifdef FPC_USE_WIN32_SEH}
        SEHFrame  : Pointer;
        ExceptRec : Pointer;
        ReraiseBuf: jmp_buf;
        {$endif FPC_USE_WIN32_SEH}
    end;
type
    PM128A = ^M128A;
    M128A = record
        Low: QWord;
        High: int64;
    end;

    PContext = ^TContext;
    TContext = record
        P1Home: QWord;
        P2Home: QWord;
        P3Home: QWord;
        P4Home: QWord;
        P5Home: QWord;
        P6Home: QWord;
        
        ContextFlags: DWord;
        MxCsr : DWord;
        
        SegCs : word;
        SegDs : word;
        SegEs : word;
        SegFs : word;
        SegGs : word;
        SegSs : word;
        
        EFlags: DWord;
        
        Dr0   : QWord;
        Dr1   : QWord;
        Dr2   : QWord;
        Dr3   : QWord;
        Dr6   : QWord;
        Dr7   : QWord;
        Rax   : QWord;
        Rcx   : QWord;
        Rdx   : QWord;
        Rbx   : QWord;
        Rsp   : QWord;
        Rbp   : QWord;
        Rsi   : QWord;
        Rdi   : QWord;
        R8    : QWord;
        R9    : QWord;
        R10   : QWord;
        R11   : QWord;
        R12   : QWord;
        R13   : QWord;
        R14   : QWord;
        R15   : QWord;
        Rip   : QWord;
        
        Header: array[0..1] of M128A;
        Legacy: array[0..7] of M128A;
        
        Xmm0  : M128A;
        Xmm1  : M128A;
        Xmm2  : M128A;
        Xmm3  : M128A;
        Xmm4  : M128A;
        Xmm5  : M128A;
        Xmm6  : M128A;
        Xmm7  : M128A;
        Xmm8  : M128A;
        Xmm9  : M128A;
        Xmm10 : M128A;
        Xmm11 : M128A;
        Xmm12 : M128A;
        Xmm13 : M128A;
        Xmm14 : M128A;
        Xmm15 : M128A;
        
        VectorRegister      : array[0..25] of M128A;
        VectorControl       : QWord;
        DebugControl        : QWord;
        LastBranchToRip     : QWord;
        LastBranchFromRip   : QWord;
        LastExceptionToRip  : QWord;
        LastExceptionFromRip: QWord;
    end;

EXCEPTION_ROUTINE = function(var ExceptionRecord: EXCEPTION_RECORD; EstablisherFrame: Pointer; var ContextRecord: TContext; DispatcherContext: Pointer): EXCEPTION_DISPOSITION;

    PDispatcherContext = ^TDispatcherContext;
    TDispatcherContext = record
        ControlPc       : QWord;
        ImageBase       : QWord;
        
        FunctionEntry   : Pointer;//PRUNTIME_FUNCTION;
        
        EstablisherFrame: QWord;
        TargetIp        : QWord;
        ContextRecord   : PContext;
        
        LanguageHandler : EXCEPTION_ROUTINE;
        
        HandlerData     : Pointer;
        HistoryTable    : Pointer;//PUNWIND_HISTORY_TABLE;
        
        ScopeIndex      : DWord;
        Fill0           : DWord;
    end;

type
    Exception = class(TObject)
    private
        FMessage: TString;
        FErrorC : DWORD;
    public
        constructor Create(const AString: TString; AnAddr: codepointer = Pointer($a1); AFrame: Pointer = Pointer($b1));
        constructor Create(const AString: TString; const errcode: integer);
        
        function ClassName: TString; virtual;
        
        procedure handleException(AnAddr: CodePointer);
        
        property Message: TString read FMessage write FMessage;
        property ErrorCode: DWORD read FErrorC  write FErrorC ;
    end;

    EDivByZero       = class(Exception) end;  
    EOutOfMemory     = class(Exception) end;
    EAccessViolation = class(Exception) end;

const
    exception_classes: array[200..236] of TClass = (
        { 0   DivByZero           RangeError         StackOverflow     OutOfMemory/HeapOverflow InvalidPointerOperation  }
        EDivByZero, nil, nil, EOutOfMemory, nil,
        
        { 5   Overflow            Underflow          InvalidOp         ZeroDivide               209                      }
        nil, nil, nil, nil, nil,
        
        { 10  ObjectCheckError    AbstractError      ExternalException 213                      BusError                 }
        nil, nil, nil, nil, nil,               
        
        { 15  IntOverflow         AccessViolation    ControlC          Privilege                InvalidCast              }
        nil, EAccessViolation, nil, nil, nil,  
        
        { 20  InvalidVarCast      InvalidVarOp       DispatchError     VarArrayCreate           VarNotArray              }
        nil, nil, nil, nil, nil, 
        
        { 25  VarArrayBounds      226                AssertionFailed   IntfCastError            SafecallException        }
        nil, nil, nil, nil, nil,    
        
        { 30  230                 iconvError         NoThreadSupport   SigQuit                  MissingWStringManager    }
        nil, nil, nil, nil, nil,    
        
        { 35  NoDynLibsSupport    ThreadError                                                                            }
        nil, nil
    );

function __FPC_specific_handler(var rec: EXCEPTION_RECORD; var frame: TSEHFrame; var context: TContext; var dispatch: TDispatcherContext): EXCEPTION_DISPOSITION;
procedure fpc_raiseexception(obj: Exception; anaddr: codepointer; aframe: pointer); compilerproc;

var
    ExceptAddrStack:   PExceptAddr;
    ExceptObjectStack: PExceptObject;
  
{$endif}

{$ifdef windows_source}
{$mode delphi}
{$define FPC_USE_WIN32_SEH}
{$M-}

// we need to return the exception object to dispose it
function fpc_popobjectstack: TObject; [public , alias: 'FPC_POPOBJECTSTACK']; compilerproc;
var
  hp: PExceptObject;
begin
  hp := ExceptObjectStack;
  if hp = nil then
    ExitProcess(1)
  else begin
    if hp^.refcount = 0 then result := hp^.FObject else result := nil;
    ExceptObjectStack := hp^.next;
    //if assigned(hp^.frames) then freemem(hp^.frames);
    //dispose(hp);
    erroraddr := nil;
  end;
end;

function internal_popobjectstack: TObject; external name 'FPC_POPOBJECTSTACK';

// this is required for x64 only?
{ This handler is installed by compiler for every try..finally and try..except statement, including implicit ones. }
function __FPC_specific_handler(
  var rec: EXCEPTION_RECORD;
  var frame: TSEHFrame;
  var context: TCONTEXT;
  var dispatch: TDispatcherContext): EXCEPTION_DISPOSITION; [public, alias: '__FPC_specific_handler'];
begin
    result := ExceptionContinueExecution;
end;
// ----

function FilterException(var rec: EXCEPTION_RECORD; imagebase: PtrUInt; filterRva: DWord; errcode: longint): Pointer;
begin
  result := nil;
end;

procedure fpc_raiseexception(
    obj: Exception; anaddr: codepointer; aframe: pointer
);  compilerproc;
begin
    if aframe = nil then
    MessageBoxA(0,TString('pointer adrame'),TString('dfegf'),0);
    
    if anaddr = nil then
    MessageBoxA(0,TString('andaddr'),TString('ino'),0);
    
    if not Assigned(obj) then
    begin
        MessageBoxA(0,TString('1 fpc_raiseexception'),TString('inngo'),0);
        obj := Exception.Create(TString('execp'), anaddr, aframe);
        obj.handleException(AnAddr);
        MessageBoxA(0,TString('2 fpc_raiseexception'),TString('inngo'),0);
    end;
end;

function Exception.ClassName: TString;
begin
    result := 'Exception';
end;

constructor Exception.Create(const AString: TString; AnAddr: CodePointer; AFrame: Pointer);
var
    t: procedure;
begin
    MessageBoxA(0,'exerc','exerc',0);
    if not Assigned(AnAddr) then
    printf('anAddr is not assigned.');
    
    printf('woooopsss'#13#10);
    Pointer(t) := AnAddr;
    
    MessageBoxA(0,TString('wooooopppsss'),TString('inngo'),0);
    
    t;
    
    MessageBoxA(0,TString('okokik'),TString('inngo'),0);
    //inherited Create;
    FMessage := AString;
end;
constructor Exception.Create(
    const AString: TString;
    const errcode: integer);
begin
    Message := AString;
    self.ErrorCode := errcode;
end;

procedure Exception.handleException(AnAddr: CodePointer);
var
    t: procedure;
begin
    printf('woooopsss'#13#10);
    Pointer(t) := AnAddr;
    
    MessageBoxA(0,TString('22 wooooopppsss'),TString('inngo'),0);
    
    t;
end;

{$endif}
