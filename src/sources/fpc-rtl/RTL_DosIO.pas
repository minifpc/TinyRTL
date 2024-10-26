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
        procedure WriteLn(const AString: String); overload;
        procedure WriteLn(const AString: PChar ); overload;
        
        procedure Write  (const AString: String);
        
        procedure ReadLn (var S1: String; const AString: String); overload;
        procedure Read   (var S1: String; const AString: String); overload;
        
        procedure ReadLn (var S1: String); overload;
        procedure Read   (var S1: String); overload;
        
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
    dos.WriteLn(PChar(AString));
end;
class operator TDosIO.>(A: TDosIO; AString: String): Boolean;
var
    S1: String;
begin
    if dos = nil then
    InitConsole;
    dos.Write(PChar(AString));
    dos.Read;
    result := True;
end;
class operator TDosIO.>(A: TDosIO; AValue: DWORD): Integer;
begin
    if dos = nil then
    InitConsole;
    dos.Write(PChar('gugu'));
    result := 1;
end;

procedure TDosIO.WriteLn(const AString: String);
begin
    if dos = nil then
    InitConsole;
    dos.WriteLn(PChar(AString));
end;
procedure TDosIO.WriteLn(const AString: PChar);
begin
    if dos = nil then
    InitConsole;
    dos.WriteLn(AString);
end;

procedure TDosIO.Write(const AString: String);
begin
    if dos = nil then
    InitConsole;
    dos.Write(PChar(AString));
end;

procedure TDosIO.ReadLn(var S1: String; const AString: String);
begin
    if dos = nil then
    InitConsole;
    
    dos.WriteLn(PChar(AString));
    
    scanf('%s', @S1);
    //result := String(S1);
end;
procedure TDosIO.ReadLn(var S1: String);
begin
    //result := dos.ReadLn(' ');
end;

procedure TDosIO.Read(var S1: String; const AString: String);
begin
    if dos = nil then
    InitConsole;
    
    dos.Write(PChar(AString));
    scanf('%s', @S1);
end;
procedure TDosIO.Read(var S1: String);
begin
    //result := self.Read('');
end;

{$endif}
