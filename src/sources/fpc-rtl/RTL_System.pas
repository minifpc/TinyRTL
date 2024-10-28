// ---------------------------------------------------------------------------
// File:   RTL_System.pas
// Author: Jens Kallup - paule32
//
// This file is part of RTL.
//
// (c) Copyright 2024 Jens Kallup - paule32
// only for non-profit usage !!!
// ---------------------------------------------------------------------------
{$ifdef windows_header}
{$mode delphi}
type
    TSystem = class(TObject)
    private
        class var      FSystemIO  : TSystemIO;
        class var   FClassParent  : TObject;
        class var      FMemClass  : TMemory;
        class var      FCpuClass  : TCPU;
        class var      FVgaClass  : TVgaIO;
        class function GetMemory  : TMemory; static;
    public
        constructor Create;
        destructor Destroy;
        
        class function ClassName: String;
        
        class property cpu: TCPU read FCpuClass;
        class property mem: TMemory read GetMemory;
        class property vga: TVgaIO read FVgaClass;
        //
        class property io : TSystemIO read FSystemIO;
    end;
var
    sys: TSystem = nil;

procedure InitSystem;
procedure DoneSystem;

{$endif}

{$ifdef windows_source}
{$mode delphi}
{$M-}

procedure InitSystem;
begin
    if GetConsoleWindow <> 0 then
    begin
        InitConsole;
    end;
    sys := TSystem.Create;
    mem := TMemory.Create;
    dos.writeln('start...');
end;
procedure DoneSystem;
begin
    if GetConsoleWindow <> 0 then
    begin
        DoneConsole;
    end;
    //sys.Free;
    //mem.Free;
    //dos.Free;
end;


{ TSystem }

constructor TSystem.Create;
begin
    inherited Create;
    FMemClass := TMemory.Create;
end;
destructor TSystem.Destroy;
begin
    if FMemClass <> nil then
    begin
        FMemClass.Free;
        FMemClass := nil;
    end;
    
    inherited Destroy;
end;

class function TSystem.GetMemory: TMemory;
begin
    if FMemClass = nil then
    FMemClass := TMemory.Create;
    result := FMemClass;
end;
class function TSystem.ClassName: String;
begin
    result := 'TSystem';;
end;

{$endif}
