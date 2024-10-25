// ----------------------------------------------------------
// File: RTL_DosCmd.pas
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
{$ifdef windows_header}
{$mode delphi}
{$M-}
type
    TDosCmd = class(TObject)
    private
        FConsoleHandle: DWORD;
        FNewLine: String;
        FStdIn, FStdOut, FStdErr: DWORD;
    public
        constructor Create;
        destructor Destroy; override;
        
        procedure Free; virtual;
        
        procedure ClrScr;
        procedure ClearScreen;
        procedure Cls;
        
        function MessageBox(AText, ATitle: String): DWORD;
        
        procedure Write  (const msg: String);
        procedure WriteLn(const msg: String);

        function  get_StdIn : DWORD;
        function  get_StdOut: DWORD;
        function  get_StdErr: DWORD;
        
        procedure set_StdIn (AValueDST, AValueSRC: DWORD);
        procedure set_StdOut(AValueDST, AValueSRC: DWORD);
        procedure set_StdErr(AValueDST, AValueSRC: DWORD);

        property StdIn : DWORD read get_StdIn ;
        property StdOut: DWORD read get_StdOut;
        property StdErr: DWORD read get_StdErr;
        
        property NewLine: String read FNewLine;
    end;
var
    DOS: TDosCmd;
    
procedure InitConsole;  // constructor: TUI
procedure DoneConsole;  // destroy: TUI

{$endif}

{$ifdef windows_source}
{$mode delphi}
{$M-}
function StringLength(const S: String): DWORD;
var
    len: DWORD;
begin
    len := 0;
    while S[len + 1] <> #0 do
    inc(len);
    result := len;
end;

(*
procedure Write(const msg: String);
begin
    if (DOS = nil) or (Windows = nil) then
    begin
        MessageBoxA(0,
        PChar('Error: Console not init.'),
        PChar('Error'), 0);
        ExitProcess(1);
    end else
    begin
        DOS.Write(msg);
    end;
end;

procedure WriteLn(const msg: String);
begin
    if (DOS = nil) or (Windows = nil) then
    begin
        MessageBoxA(0,
        PChar('Error: Console not init.'),
        PChar('Error'), 0);
        ExitProcess(1);
    end else
    begin
        DOS.WriteLn(msg);
    end;
end;*)


{ TDosCmd }

procedure InitConsole;
begin
    DOS := TDosCmd.Create;
end;
procedure DoneConsole;
begin
    //if DOS <> nil then
    //DOS.Free;
end;

constructor TDosCmd.Create;
begin
    inherited Create;
    
    FNewLine := #13#10;
end;

destructor TDosCmd.Destroy;
begin
    inherited Destroy;
end;
procedure TDosCmd.Free;
begin
    if self <> nil then
    self.Destroy;
end;

procedure TDosCmd.Cls;
begin
//
end;
procedure TDosCmd.ClrScr;      begin Cls; end;
procedure TDosCmd.ClearScreen; begin Cls; end;

function TDosCmd.MessageBox(AText, ATitle: String): DWORD;
begin
    printf('Message: %s', PChar(AText ));
    printf('Title  : %s', PChar(ATitle));
    result := 0;
end;

procedure TDosCmd.Write(const msg: String);
begin
    printf('%s', PChar(msg));
end;

procedure TDosCmd.WriteLn(const msg: String);
begin
    printf('%s'#13#10, PChar(msg));
end;

function  TDosCmd.get_StdIn : DWORD; begin result := GetStdHandle(STD_INPUT_HANDLE ); end;
function  TDosCmd.get_StdOut: DWORD; begin result := GetStdHandle(STD_OUTPUT_HANDLE); end;
function  TDosCmd.get_StdErr: DWORD; begin result := GetStdHandle(STD_ERROR_HANDLE ); end;

procedure TDosCmd.set_StdIn (AValueDST, AValueSRC: DWORD); begin SetStdHandle(AValueSRC, GetStdHandle(AValueDST)); end;
procedure TDosCmd.set_StdOut(AValueDST, AValueSRC: DWORD); begin SetStdHandle(AValueSRC, GetStdHandle(AValueDST)); end;
procedure TDosCmd.set_StdErr(AValueDST, AValueSRC: DWORD); begin SetStdHandle(AValueSRC, GetStdHandle(AValueDST)); end;

{$endif}
