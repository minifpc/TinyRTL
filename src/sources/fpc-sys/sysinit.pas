// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
{$mode delphi}
{$M-}
unit sysinit;

interface

type
    DOS_Class = class(TObject)
    private
        FConsoleHandle: DWORD;
        FNewLine: String;
        FStdIn, FStdOut, FStdErr: DWORD;
    public
        constructor Create;
        destructor Destroy; override;
        
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
    DOS: DOS_Class;

type
    Windows_Class = class
    public
        constructor Create;
        destructor Destroy;
        
        function MessageBox(AText, ATitle: String): DWORD;
    end;
var
    Windows: Windows_Class;
    
procedure InitConsole;  // TUI
procedure InitWindows;  // GUI

procedure WriteLn(const msg: String);
procedure Write  (const msg: String);

implementation

function StringLength(const S: String): DWORD;
var
    len: DWORD;
begin
    len := 0;
    while S[len + 1] <> #0 do
    inc(len);
    result := len;
end;

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
end;

{ DOS_Class }

procedure InitConsole;
begin
    DOS := DOS_Class.Create;
end;

constructor DOS_Class.Create;
begin
    inherited Create;
    
    FNewLine := #13#10;
end;

destructor DOS_Class.Destroy;
begin
    inherited Destroy;
end;

procedure DOS_Class.Cls;
begin
//
end;
procedure DOS_CLass.ClrScr;      begin Cls; end;
procedure DOS_Class.ClearScreen; begin Cls; end;

function DOS_Class.MessageBox(AText, ATitle: String): DWORD;
begin
    printf('Message: %s', PChar(AText ));
    printf('Title  : %s', PChar(ATitle));
    result := 0;
end;

procedure DOS_Class.Write(const msg: String);
begin
    printf('%s', PChar(msg));
end;

procedure DOS_Class.WriteLn(const msg: String);
begin
    printf('%s'#13#10, PChar(msg));
end;

function  DOS_Class.get_StdIn : DWORD; begin result := GetStdHandle(STD_INPUT_HANDLE ); end;
function  DOS_Class.get_StdOut: DWORD; begin result := GetStdHandle(STD_OUTPUT_HANDLE); end;
function  DOS_Class.get_StdErr: DWORD; begin result := GetStdHandle(STD_ERROR_HANDLE ); end;

procedure DOS_Class.set_StdIn (AValueDST, AValueSRC: DWORD); begin SetStdHandle(AValueSRC, GetStdHandle(AValueDST)); end;
procedure DOS_Class.set_StdOut(AValueDST, AValueSRC: DWORD); begin SetStdHandle(AValueSRC, GetStdHandle(AValueDST)); end;
procedure DOS_CLass.set_StdErr(AValueDST, AValueSRC: DWORD); begin SetStdHandle(AValueSRC, GetStdHandle(AValueDST)); end;

{ Windows_Class }

procedure InitWindows;
begin
    Windows := Windows_Class.Create;
end;

constructor Windows_Class.Create;
begin
end;

destructor Windows_Class.Destroy;
begin
end;

function Windows_Class.MessageBox(AText, ATitle: String): DWORD;
begin
    MessageBoxA(0, PChar(AText), PChar(ATitle), 0);
    result := 0;
end;

end.
