// ----------------------------------------------------------
// This file is part of RTL.
//
// (c) Copyright 2021 Jens Kallup - paule32
// only for non-profit usage !!!
// ----------------------------------------------------------
{$mode delphi}
unit sysinit;

interface

const STD_INPUT_HANDLE  = DWORD(-10);
const STD_OUTPUT_HANDLE = DWORD(-11);
const STD_ERROR_HANDLE  = DWORD(-12);

type
    STD_HANDLES  = (
        shInput  = STD_INPUT_HANDLE ,
        shOutput = STD_OUTPUT_HANDLE,
        shError  = STD_ERROR_HANDLE
    );
type
    DOS_Class = class
    private
        FConsoleHandle: THandle;
        FNewLine: String;
        FStdIn, FStdOut, FStdErr: THandle;
    protected
        procedure set_StdIn (AValue: THandle);
        procedure set_StdOut(AValue: THandle);
        procedure set_StdErr(AValue: THandle);
        
        procedure SetConsoleHandle(AValue: THandle);
    public
        constructor Create;
        destructor Destroy;
        
        function MessageBox(AText, ATitle: String): DWORD;
        procedure Write(const msg: String);
        procedure WriteLn(const msg: String);
    published
        property StdIn : THandle read FStdIn  write set_StdIn ;
        property StdOut: THandle read FStdOut write set_StdOut;
        property StdErr: THandle read FStdErr write set_StdErr;
        //
        property NewLine: String read FNewLine;
    end;
var
    DOS: DOS_Class;

function MessageBoxA(
    hWnd: HWND;
    lpText, lpCaption: PChar;
    uType: UINT
):  Integer; stdcall;
    external 'user32.dll';

function WriteConsole(
    hConsoleOutput: THandle;
    lpBuffer: Pointer;
    nNumberOfCharsToWrite: DWORD;
    var lpNumberOfCharsWritten: DWORD;
    lpReserved: Pointer
):  BOOL; stdcall;
    external 'kernel32.dll'
    name 'WriteConsoleA';

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
        MessageBox(0,
        'Error: Console not init.',
        'Error', 0);
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
        MessageBox(0,
        'Error: Console not init.',
        'Error', 0);
        ExitProcess(1);
    end else
    begin
        DOS.WriteLn(msg);
    end;
end;

{ DOS_Class }

procedure InitConsole;
begin
    MessageBox(0,'before create','info',0);
    DOS := DOS_Class.Create;
    MessageBox(0,'after create','info',0);
end;

constructor DOS_Class.Create;
begin
    MessageBoxA(0,'before class create','info',0);
    FNewLine := #13#10;
    MessageBoxA(0,'after class create','info',0);
end;

destructor DOS_Class.Destroy;
begin
    MessageBoxA(0,'before destroy','info',0);
end;

function DOS_Class.MessageBox(AText, ATitle: String): DWORD;
begin
    self.MessageBox(AText, ATitle);
    result := 0;
end;

procedure DOS_Class.Write(const msg: String);
var
    written: DWORD;
begin
    WriteConsole(
    FConsoleHandle,
    PChar(msg),
    StringLength(msg),  // todo: Length implementation !
    written,
    nil);
end;

procedure DOS_Class.WriteLn(const msg: String);
var
    written: DWORD;
    //s: String;
begin
    //s := msg + NewLine;
    //
    WriteConsole(
    FConsoleHandle,
    PChar(msg),         // todo: strCopy !
    StringLength(msg),  // todo: Length implementation !
    written,
    nil);
end;

procedure DOS_Class.set_StdIn (AValue: THandle); begin SetConsoleHandle(AValue); end;
procedure DOS_Class.set_StdOut(AValue: THandle); begin SetConsoleHandle(AValue); end;
procedure DOS_CLass.set_StdErr(AValue: THandle); begin SetConsoleHandle(AValue); end;

procedure DOS_Class.SetConsoleHandle(AValue: THandle);
begin
    case AValue of
        STD_INPUT_HANDLE : begin FStdIn  := AValue; end;
        STD_OUTPUT_HANDLE: begin FStdOut := AValue; end;
        STD_ERROR_HANDLE : begin FStdErr := AValue; end;
        else begin
            self.MessageBox(
            'console handle can not be set',
            'Error');
            ExitProcess(0);
        end;
    end;
    FConsoleHandle := AValue;
end;


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
