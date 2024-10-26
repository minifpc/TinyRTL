// ---------------------------------------------------------------------------
// File:   RTL_DosIO.pas
// Author: Jens Kallup - paule32
//
// This file is part of RTL.
//
// (c) Copyright 2024 Jens Kallup - paule32
// only for non-profit usage !!!
// ---------------------------------------------------------------------------
{$ifdef windows_header}
{$mode delphi}
{$M-}
type
    TDosIO = record
    public
        procedure WriteLn(const AString: String);
        procedure Write  (const AString: String);
        
        function ReadLn (const AString: String): String; overload;
        function Read   (const AString: String): String; overload;
        
        function ReadLn: String; overload;
        function Read:   String; overload;
        
        class operator < (A: TDosIO; AString: String): Boolean;
        class operator > (A: TDosIO; AString: String): Boolean; overload;
        class operator > (A: TDosIO; AValue :  DWORD): Integer; overload;
    end;

{$endif}

{$ifdef windows_source}
{$mode delphi}
{$M-}

class operator TDosIO.<(A: TDosIO; AString: String): Boolean;
begin
    if dos = nil then
    InitConsole;
    dos.WriteLn(AString);
end;
class operator TDosIO.>(A: TDosIO; AString: String): Boolean;
var
    S1: String;
begin
    if dos = nil then
    InitConsole;
    dos.Write(AString);
    dos.Read;
    result := True;
end;
class operator TDosIO.>(A: TDosIO; AValue: DWORD): Integer;
begin
    if dos = nil then
    InitConsole;
    dos.Write('gugu');
    result := 1;
end;

procedure TDosIO.WriteLn(const AString: String);
begin
    if dos = nil then
    InitConsole;
    dos.WriteLn(AString);
end;

procedure TDosIO.Write(const AString: String);
begin
    if dos = nil then
    InitConsole;
    dos.Write(AString);
end;

function TDosIO.ReadLn(const AString: String): String;
var
    S1: String;
begin
    if dos = nil then
    InitConsole;
    
    dos.WriteLn(AString);
    
    scanf('%s', @S1);
    result := S1;
end;
function TDosIO.ReadLn: String;
begin
    result := dos.ReadLn(' ');
end;

function TDosIO.Read(const AString: String): String;
var
    S1: String;
begin
    if dos = nil then
    InitConsole;
    
    dos.Write(AString);
    
    S1 := dos.ReadLn(AString);
    result := S1;
end;
function TDosIO.Read: String;
begin
    result := self.Read('');
end;

{$endif}
