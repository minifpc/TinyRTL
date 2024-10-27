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
        
        procedure Write  (const msg: PChar  ); overload;
        procedure Write  (const msg: String ); overload;
        //
        procedure WriteLn(const msg: PChar  ); overload;
        procedure WriteLn(const msg: String ); overload;

        procedure ReadLn (var S1: String; const AString: String); overload;
        procedure Read   (var S1: String; const AString: String); overload;
        
        procedure ReadLn (var S1: String); overload;
        procedure Read   (var S1: String); overload;
        
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
    dos: TDosCmd = nil;
    
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


{ TDosCmd }

constructor TDosCmd.Create;
begin
    inherited Create;
    
    fstdin  := self.get_stdin ;
    fstdout := self.get_stdout;
    fstderr := self.get_stderr;
    
    if (fstdin  = INVALID_HANDLE_VALUE)
    or (fstdout = INVALID_HANDLE_VALUE)
    or (fstderr = INVALID_HANDLE_VALUE) then
    begin
        MessageBoxA(0,
            PChar('Error: io handles.'),
            PChar('Error'), 0);
        ExitProcess(1);
    end;
    
    FNewLine := #13#10;
    
    SetConsoleOutputCP(CP_UTF8);
    SetConsoleCP(CP_UTF8);
    
    self.writeln('xxxxx');
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

procedure TDosCmd.Write(const msg: PChar);
begin
    printf('%s', msg);
end;

procedure TDosCmd.WriteLn(const msg: PChar);
begin
    printf('%s'#13#10, msg);
end;

procedure TDosCmd.Write(const msg: String);
begin
    dos.Write(PChar(msg));
end;
procedure TDosCmd.WriteLn(const msg: String);
begin
    dos.WriteLn(PChar(msg));
end;

procedure TDosCmd.ReadLn(var S1: String; const AString: String);
begin
    dos.WriteLn('PChar(AString)');
    
    scanf('%s', @S1);
    //result := String(S1);
end;
procedure TDosCmd.ReadLn(var S1: String);
begin
    //result := dos.ReadLn(' ');
end;

procedure TDosCmd.Read(var S1: String; const AString: String);
const
    BufferSize = 255;
var
    Buffer   : array[0..BufferSize] of Char;
    charsRead: DWORD;
    ch: Char;
    p : Pointer;
    ident, tmpstr: String;
    Success  : DWORD;
begin
    dos.Write(AString);
    scanf('%s', @S1);
    
    ch := 'A';
    p  := @ch;
    
    ident := '';
    tmpstr := ch;
    ident := ident;
    
    exit;
    exit;
    while True do
    begin
        //ch := getch;
        if ch = #13 then break;
        //ident := ident + Pointer(@ch)^;
    end;
    
    dos.writeln(ident);
    
    exit;
    Success := DWORD(ReadConsoleA(
        HANDLE(self.stdin),
        @Buffer,
        BufferSize - 1,
        @charsRead,
        nil));
    if Boolean(Success) = False then
    begin
        MessageBoxA(0,
            PChar('Error: could not read data.'),
            PChar('Error'), 0);
        Exit;
    end;
printf('chars read: %d'#13#10,charsRead);
    // --------------------------------
    // string termination, and cut the
    // end of line CRLF chars ...
    // --------------------------------
    Buffer[charsRead - 2] := #0;
    MessageBoxA(0,
        PChar(Buffer),
        PChar('info'), 0);
    
    //scanf('%s', @S1);
    //dos.Writeln(@S1);
end;
procedure TDosCmd.Read(var S1: String);
begin
    dos.writeln('uhuhuhuhu');
    //result := self.Read('');
end;

procedure check_result(AHandle: DWORD);
begin
    if AHandle = INVALID_HANDLE_VALUE then
    begin
        MessageBoxA(0,
            PChar('Error: invalide handle.'),
            PChar('Error'), 0);
        ExitProcess(1);
    end;
end;

function  TDosCmd.get_StdIn : DWORD; begin result := GetStdHandle(STD_INPUT_HANDLE ); check_result(self.stdin ); end;
function  TDosCmd.get_StdOut: DWORD; begin result := GetStdHandle(STD_OUTPUT_HANDLE); check_result(self.stdout); end;
function  TDosCmd.get_StdErr: DWORD; begin result := GetStdHandle(STD_ERROR_HANDLE ); check_result(self.stderr); end;

procedure TDosCmd.set_StdIn (AValueDST, AValueSRC: DWORD); begin SetStdHandle(AValueSRC, GetStdHandle(AValueDST)); end;
procedure TDosCmd.set_StdOut(AValueDST, AValueSRC: DWORD); begin SetStdHandle(AValueSRC, GetStdHandle(AValueDST)); end;
procedure TDosCmd.set_StdErr(AValueDST, AValueSRC: DWORD); begin SetStdHandle(AValueSRC, GetStdHandle(AValueDST)); end;

{$endif}
