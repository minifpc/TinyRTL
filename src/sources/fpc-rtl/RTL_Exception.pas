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
    Exception = class
    private
        FMessage: TString;
        FErrorC : DWORD;
    public
        constructor Create(const AString: TString; AnAddr: codepointer = Pointer($a1); AFrame: Pointer = Pointer($b1));
        
        function ClassName: TString; virtual;
        
        property Message: TString read FMessage write FMessage;
        property ErrorCode: DWORD read FErrorC  write FErrorC ;
    end;

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
        MessageBoxA(0,TString('fpc_raiseexception'),TString('inngo'),0);
        obj := Exception.Create(TString('execp'), anaddr, aframe);
    end;
end;

function Exception.ClassName: TString;
begin
    result := 'Exception';
end;

constructor Exception.Create(const AString: TString; AnAddr: CodePointer; AFrame: Pointer);
//var
//    seh : TSEHHandlerData;
begin
    printf('woooopsss'#13#10);
    //MessageBoxA(0,TString('Enil'),TString('inngo'),0);
    //inherited Create;
    FMessage := AString;
end;

{$endif}
