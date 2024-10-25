// ----------------------------------------------------------
// File: RTL_dos.pas
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
{$ifdef windows_header}
{$mode delphi}
{$M-}
type
    Windows_Class = class
    public
        constructor Create;
        destructor Destroy;
        
        procedure Free; virtual;
        
        function MessageBox(AText, ATitle: String): DWORD;
    end;
var
    Windows: Windows_Class;
    
procedure InitWindows;  // constructor; GUI
procedure DoneWindows;  // destroy: GUI

{$endif}

{$ifdef windows_source}
{$mode delphi}
{$M-}

procedure InitWindows;
begin
    Windows := Windows_Class.Create;
end;
procedure DoneWindows;
begin
    if Windows <> nil then
    Windows.Free;
end;

constructor Windows_Class.Create;
begin
    inherited Create;
end;

destructor Windows_Class.Destroy;
begin
    inherited Destroy;
end;
procedure Windows_Class.Free;
begin
    if self <> nil then
    self.Destroy;
end;

function Windows_Class.MessageBox(AText, ATitle: String): DWORD;
begin
    MessageBoxA(0, PChar(AText), PChar(ATitle), 0);
    result := 0;
end;

{$endif}
