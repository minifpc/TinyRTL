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
        
        function MessageBox(AText, ATitle: PChar): DWORD;
        
        procedure Write  (const msg: PChar ) ; overload;
        procedure WriteLn(const msg: PChar ) ; overload;

        procedure ReadLn (var S1: PChar; const AString: PChar); overload;
        procedure Read   (var S1: PChar; const AString: PChar); overload;
        
        procedure ReadLn (var S1: PChar) ; overload;
        procedure Read   (var S1: PChar) ; overload;
        
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

procedure InitConsole;
procedure DoneConsole;

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

procedure InitConsole;
begin
    dos := TDosCmd.Create;
end;
procedure DoneConsole;
begin
    if dos <> nil then
    dos.Free;
end;

constructor TDosCmd.Create;
begin
    inherited Create;
    
    fstdin  := self.get_stdin ;
    fstdout := self.get_stdout;
    fstderr := self.get_stderr;
    
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

function TDosCmd.MessageBox(AText, ATitle: PChar): DWORD;
begin
    printf('Message: %s', PChar(AText ));
    printf('Title  : %s', PChar(ATitle));
    result := 0;
end;

procedure TDosCmd.Write  (const msg: PChar); begin printf('%s'      , msg); end;
procedure TDosCmd.WriteLn(const msg: PChar); begin printf('%s'#13#10, msg); end;

procedure TDosCmd.ReadLn(var S1: PChar; const AString: PChar);
begin
    dos.WriteLn('PChar(AString)');
    
    scanf('%s', @S1);
    //result := String(S1);
end;
procedure TDosCmd.ReadLn(var S1: PChar);
begin
    //result := dos.ReadLn(' ');
end;

function get_string: PChar; cdecl; external 'utils.dll';
procedure TDosCmd.Read(var S1: PChar; const AString: PChar);
begin
    dos.Write(AString);
    GetMem(S1, 200);
    strcpy(S1, get_string);
    printf('>>----->>> %s', S1);
    
    dos.Writeln(PChar('-----------> '+S1));
end;
procedure TDosCmd.Read(var S1: PChar);
begin
    dos.writeln('uhuhuhuhu');
    //result := self.Read('');
end;

function  TDosCmd.get_StdIn : DWORD; begin result := GetStdHandle(STD_INPUT_HANDLE); end;
function  TDosCmd.get_StdErr: DWORD; begin result := GetStdHandle(STD_ERROR_HANDLE); end;
function  TDosCmd.get_StdOut: DWORD; begin result := GetStdHandle(STD_OUTPUT_HANDLE); end;

procedure TDosCmd.set_StdIn (AValueDST, AValueSRC: DWORD); begin SetStdHandle(AValueSRC, GetStdHandle(AValueDST)); end;
procedure TDosCmd.set_StdOut(AValueDST, AValueSRC: DWORD); begin SetStdHandle(AValueSRC, GetStdHandle(AValueDST)); end;
procedure TDosCmd.set_StdErr(AValueDST, AValueSRC: DWORD); begin SetStdHandle(AValueSRC, GetStdHandle(AValueDST)); end;

{$endif}
