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

const STD_INPUT_HANDLE  = DWORD(-10);
const STD_OUTPUT_HANDLE = DWORD(-11);
const STD_ERROR_HANDLE  = DWORD(-12);

type
    STD_HANDLES  = (
        shInput  = STD_INPUT_HANDLE ,
        shOutput = STD_OUTPUT_HANDLE,
        shError  = STD_ERROR_HANDLE
    );

const ATTACH_PARENT_PROCESS = -1;

type
    COORD = record
        X: Smallint;
        Y: Smallint;
    end;
type
    SMALL_RECT = record
        Left: Smallint;
        Top: Smallint;
        Right: Smallint;
        Bottom: Smallint;
    end;
type
    CONSOLE_SCREEN_BUFFER_INFO = record
        dwSize: COORD;
        dwCursorPosition: COORD;
        wAttributes: WORD;
        srWindow: SMALL_RECT;
        dwMaximumWindowSize: COORD;
    end;

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
        
        procedure ClrScr;
        procedure ClearScreen;
        procedure Cls;
        
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
    external 'user32.dll'
    name 'MessageBoxA';

function AllocConsole
:   DWORD; stdcall;
    external 'kernel32.dll'
    name 'AllocConsole';

function AttachConsole(
    dwProcessId: DWORD
):  DWORD; stdcall;
    external 'kernel32.dll'
    name 'AttachConsole';

function GetConsoleScreenBufferInfo(
    hConsoleOutput: THandle;
    var lpConsoleScreenBufferInfo: CONSOLE_SCREEN_BUFFER_INFO
):  DWORD; stdcall;
    external 'kernel32.dll'
    name 'GetConsoleScreenBufferInfo';

function GetStdHandle(
    nStdHandle: DWORD
):  THandle; stdcall;
    external 'kernel32.dll'
    name 'GetStdHandle';

function FillConsoleOutputCharacter(
    hConsoleOutput: THandle;
    cCharacter: Char;
    nLength: DWORD;
    dwWriteCoord: COORD;
    var lpNumberOfCharsWritten: DWORD
):  DWORD; stdcall;
    external 'kernel32.dll'
    name 'FillConsoleOutputCharacterA';

function FillConsoleOutputAttribute(
    hConsoleOutput: THandle;
    wAttribute: WORD;
    nLength: DWORD;
    dwWriteCoord: COORD;
    var lpNumberOfAttrsWritten: DWORD
):  DWORD; stdcall;
    external 'kernel32.dll'
    name 'FillConsoleOutputAttribute';

function SetConsoleCursorPosition(
    hConsoleOutput: THandle;
    dwCursorPosition: COORD
):  DWORD; stdcall;
    external 'kernel32.dll'
    name 'SetConsoleCursorPosition';

function WriteConsoleA(
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
    MessageBoxA(0,'before create','info',0);
    DOS := DOS_Class.Create;
    MessageBoxA(0,'after DOOOOSSSS create','info',0);
end;

constructor DOS_Class.Create;
begin
    MessageBoxA(0,'before DOS class create','info',0);
    FNewLine := #13#10;
    FConsoleHandle := GetStdHandle(STD_OUTPUT_HANDLE);
    
    if (FConsoleHandle = 0) or (FConsoleHandle = INVALID_HANDLE_VALUE) then
    begin
        if AllocConsole = 0 then
        begin
            if AttachConsole(ATTACH_PARENT_PROCESS) = 0 then
            begin
                MessageBoxA(0,
                PChar('Error: Console handle invalid.'),
                PChar('Error'), 0);
                ExitProcess(1);
            end;
        end;
    end;
    
    FConsoleHandle := GetStdHandle(STD_OUTPUT_HANDLE);
    
    if (FConsoleHandle = 0) or (FConsoleHandle = INVALID_HANDLE_VALUE) then
    begin
        MessageBoxA(0,
        PChar('Error: could not create a console.'),
        PChar('Error'), 0);
        ExitProcess(1);
    end;
    
    MessageBoxA(0,'AAAAAAAAAAAAAAAAAAAAAAAAAAAA','cxxxxx',0);
    self.SetConsoleHandle(GetStdHandle(STD_OUTPUT_HANDLE));

    //self.Write('hallo ich');
    MessageBoxA(0, PChar('after class create'), PChar('info'), 0);
end;

destructor DOS_Class.Destroy;
begin
    MessageBoxA(0, PChar('before destroy'), PChar('info'), 0);
end;

procedure DOS_Class.Cls;
var
  coordScreen: COORD;
  cCharsWritten: DWORD;
  csbi: CONSOLE_SCREEN_BUFFER_INFO;
  dwConSize: DWORD;
begin
  coordScreen.X := 0;
  coordScreen.Y := 0;

  // Get the number of character cells in the current buffer.
  if GetConsoleScreenBufferInfo(
  FConsoleHandle, csbi) = 0 then exit;

  dwConSize := csbi.dwSize.X * csbi.dwSize.Y;

  // Fill the entire screen with blanks.
  if FillConsoleOutputCharacter(
  FConsoleHandle, ' ',
  dwConSize,
  coordScreen,
  cCharsWritten) = 0 then exit;

  // Get the current text attribute.
  if GetConsoleScreenBufferInfo(
  FConsoleHandle, csbi) = 0 then exit;

  // Set the buffer's attributes accordingly.
  if FillConsoleOutputAttribute(
  FConsoleHandle,
  csbi.wAttributes,
  dwConSize,
  coordScreen,
  cCharsWritten) = 0 then exit;

  // Put the cursor at its home coordinates.
  SetConsoleCursorPosition(FConsoleHandle, coordScreen);
end;
procedure DOS_CLass.ClrScr;      begin Cls; end;
procedure DOS_Class.ClearScreen; begin Cls; end;

function DOS_Class.MessageBox(AText, ATitle: String): DWORD;
begin
    self.MessageBox(AText, ATitle);
    result := 0;
end;

procedure DOS_Class.Write(const msg: String);
var
    written: DWORD;
begin
    if (FConsoleHandle = 0)
    or (FConsoleHandle = INVALID_HANDLE_VALUE) then
    begin
        MessageBoxA(0,
        PChar('Error: no valid console handle.'),
        PChar('Error'), 0);
        ExitProcess(1)
    end;
    if WriteConsoleA(
    FConsoleHandle, PChar(msg), 5, written, nil) = 0 then
    begin
        MessageBoxA(0,
        PChar('Error: error during console write.'),
        PChar('Error'), 0);
        ExitProcess(1);
    end;
end;

procedure DOS_Class.WriteLn(const msg: String);
var
    written: DWORD;
    //s: String;
begin
    //s := msg + NewLine;
    //
    WriteConsoleA(
    FConsoleHandle,
    PChar(msg),         // todo: strCopy !
    StringLength(msg),  // todo: Length implementation !
    written,
    nil);
end;

procedure DOS_Class.set_StdIn (AValue: THandle); begin self.SetConsoleHandle(AValue); end;
procedure DOS_Class.set_StdOut(AValue: THandle); begin self.SetConsoleHandle(AValue); end;
procedure DOS_CLass.set_StdErr(AValue: THandle); begin self.SetConsoleHandle(AValue); end;

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
