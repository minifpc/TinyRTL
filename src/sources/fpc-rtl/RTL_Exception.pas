// -----------------------------------------------------------------
// File:   RTL_Exception.pas
// Author: (c) 2024 Jens Kallup - paule32
// All rights reserved
//
// only for education, and non-profit usage !
// -----------------------------------------------------------------
{$ifdef windows_header}
{$mode delphi}
{$M-}

{$if declared(TObject) = false}
{$I RTL_Object.pas}
{$endif}

type
    TSEHHandlerData = record
        Version            : LongWord;  // Version des Handlers (entspricht .long 1)
        Flags              : LongWord;  // Flags für spezielle Handling-Informationen (entspricht .long 1)
        SpecificHandlerRVA : Pointer ;  // Adresse für den spezifischen Handler
        ExceptCodeRVA      : Pointer ;  // Adresse für den Except-Code
        UnwindCodeRVA      : Pointer ;  // Adresse für das Stack-Unwinding
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

procedure fpc_raiseexception(obj: Exception; anaddr: codepointer; aframe: pointer); compilerproc;
{$endif}

{$ifdef windows_source}
{$mode delphi}
{$M-}

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
