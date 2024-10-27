// ---------------------------------------------------------------------------
// File:   FPC_System.pas
// Author: Jens Kallup - paule32
//
// This file is part of RTL.
//
// (c) Copyright 2024 Jens Kallup - paule32
// only for non-profit usage !!!
// ---------------------------------------------------------------------------
{$ifdef windows_header}
{$M-}

{$if declared(TSystemCodePage) = false}
    type TSystemCodePage = Word;
{$endif}

function MessageBoxA(
    hWnd: HWND;
    lpText, lpCaption: PChar;
    uType: UINT
):  Integer; stdcall;
    external 'user32.dll';

function memcpy(
    dest: Pointer;
    const src: Pointer;
    count: DWORD
):  Pointer; cdecl; external 'msvcrt.dll' name 'memcpy';

function memmove(
    dest: Pointer;
    const src: Pointer;
    count: DWORD
):  Pointer; cdecl; external 'msvcrt.dll' name 'memmove';

function strcmp(
    str1: PChar;
    str2: PChar
):  DWORD; cdecl; external 'msvcrt.dll' name 'strcmp';

procedure fpc_Addref(Data,TypeInfo : Pointer); compilerproc;
procedure fpc_DecRef(Data,TypeInfo : Pointer); compilerproc;

procedure fpc_ansistr_decr_ref (Var S : Pointer); compilerproc;
procedure fpc_AnsiStr_Incr_Ref (    S : Pointer); compilerproc; inline;

procedure fpc_AnsiStr_Assign (var   DestS : Pointer;           S2: Pointer);            compilerproc;
procedure fpc_AnsiStr_Concat (var   dst   : Pointer; const S1, S2: Pointer; cp: DWORD); compilerproc;
function  fpc_AnsiStr_Unique (var   S     : Pointer):              Pointer;             compilerproc;

function  fpc_AnsiStr_Compare_Equal (const S1, S2: Pointer): BOOL compilerproc;

function  fpc_char_to_ansistr (const c :  Char; cp : TSystemCodePage): AnsiString; compilerproc;
function  fpc_pchar_to_ansistr(const p : PAnsiChar): AnsiString; compilerproc;

procedure fpc_EmptyChar( var DestS: Pointer); compilerproc;

function  fpc_get_input: PText;         compilerproc;
procedure fpc_iocheck;                  compilerproc;
procedure fpc_readln_end(var f: Text);	compilerproc;

function  fpc_help_constructor (_self: pointer; var _vmt: pointer; _vmt_pos: cardinal): Pointer;  compilerproc;
procedure fpc_help_fail        (_self: pointer; var _vmt: pointer;  vmt_pos: cardinal);           compilerproc;
procedure fpc_help_destructor  (_self,              _vmt: pointer;  vmt_pos: cardinal);           compilerproc;

procedure fpc_doneexception; compilerproc;

procedure fpc_reraise; compilerproc;

procedure fpc_initializeunits; compilerproc;
procedure fpc_libinitializeunits; compilerproc;

procedure fpc_finalize(Data,TypeInfo: Pointer); compilerproc;
procedure fpc_copy_proc(Src, Dest, TypeInfo : Pointer); compilerproc; inline;
procedure fpc_do_exit; external name 'FPC_DO_EXIT'; compilerproc;

procedure EmptyMethod; external name 'FPC_EMPTYMETHOD';

procedure move(const source; var dest; count: DWORD); stdcall;

procedure main; stdcall;
procedure PascalMain; external name 'PASCALMAIN';
{$endif}

{$ifdef windows_source}
{$M-}
procedure main; stdcall; [public, alias: '_mainCRTStartup'];
begin
    PascalMain;
end;

function sizeByte : Byte; inline; begin result :=  1; end;
function sizeChar : Byte; inline; begin result :=  2; end;
function sizeWord : Byte; inline; begin result :=  4; end;
function sizeDWord: Byte; inline; begin result :=  8; end;
function sizeQWord: Byte; inline; begin result := 16; end;

procedure fpc_doneexception; [public, alias: 'FPC_DONEEXCEPTION'] compilerproc;
begin
    MessageBoxA(0, PChar('fpc_doneexceptions'), PChar('system.pas'), 0);
end;

procedure fpc_emptymethod; [public, alias : 'FPC_EMPTYMETHOD'];
begin
end;

procedure fpc_copy_proc(Src, Dest, TypeInfo : Pointer);compilerproc; inline;
begin end;

procedure fpc_EmptyChar( var DestS: Pointer); [public, alias: 'FPC_EMPTYCHAR']; compilerproc;
var
    SA: PChar;
begin
    DestS := VirtualAlloc( nil, sizeof( Char ), MEM_COMMIT or MEM_RESERVE, PAGE_READWRITE );
    if (not (DestS = nil)) then
    begin
        FillChar(  DestS^, sizeof( Char ), #0 );
        move( SA^, DestS^, sizeof( Char ) );
    end else
    begin
        MessageBox( 0, 'Error: fpc_AnsiStr_EmptyChar memory allocation fail.', 'Error', 0 );
        ExitProcess( 1 );
    end;
    // TODO: delete DestS
end;

procedure fpc_Addref(Data,TypeInfo : Pointer); [public, alias: 'FPC_ADDREF']; compilerproc;
begin
end;

procedure fpc_decref(Data,TypeInfo : Pointer); [public, alias: 'FPC_DECREF']; compilerproc;
begin
end;

procedure fpc_ansistr_decr_ref(Var S: Pointer); [public, alias: 'FPC_ANSISTR_DECR_REF'];  compilerproc;
Begin
end;

procedure fpc_AnsiStr_Incr_Ref (S : Pointer); [public, alias: 'FPC_ANSISTR_INCR_REF'];  compilerproc; inline;
Begin
end;

function  fpc_char_to_ansistr(const c : Char; cp : TSystemCodePage): AnsiString; compilerproc;
begin
    result := String(c);
end;

function fpc_AnsiStr_Unique(var S: Pointer): Pointer; compilerproc;
begin
    Pointer( result ) := Pointer( S );
    if Pointer( S ) = nil then exit;
    
    result := S;
end;

function PCharToAnsiString( charPointer: PChar): AnsiString;
var
    len: Integer;
    i  : Integer;
begin
    len := 0;
    while charPointer[len] <> #0 do
    len := len + 1;
    
    Pointer( result ) := VirtualAlloc(nil, len,
    MEM_COMMIT or MEM_RESERVE, PAGE_READWRITE );
    
    for i := 1 to len do
    result[i] := charPointer[i - 1];
end;

function fpc_pchar_to_ansistr(const p: PAnsiChar): AnsiString;
var
    len: SIZE_T;
    s: PAnsiChar;
begin
    if p = nil then begin
        result := '';
        exit;
    end;
    
    len := strlen(PChar(p));
    
    s := VirtualAlloc(nil, len + 1,
    MEM_COMMIT or MEM_RESERVE, PAGE_READWRITE );
    
    if s = nil then begin
        MessageBox(0,
        PChar('Error: no more memory available.'),
        PChar('Error'), 0);
        ExitProcess(1);
    end;
    
    strcpy(PChar(s), PChar(p));
    
    result := String(@s);
    ///VirtualFree(s, 0, MEM_RELEASE);
end;

procedure fpc_ansistr_assign(var DestS: Pointer; S2: Pointer); [public, alias: 'FPC_ANSISTR_ASSIGN']; compilerproc;
var
    SLen: SIZE_T;
begin
(*
    SLen  := strlen( ( S2 ) );
    GetMem( DestS, SLen );

    if (not (DestS = nil)) then
    begin
        FillChar( DestS^, SLen, #0 );
        move( S2^, DestS^, SLen );
    end else
    begin
        MessageBox( 0, 'Error: fpc_AnsiStr_Assign memory allocation fail.', 'Error', 0 );
        ExitProcess( 1 );
    end;
*)
    // TODO: add delete
    //VirtualFree( DestS, 0, MEM_RELEASE );
end;

procedure fpc_ansistr_concat(var dst: Pointer; const S1,S2: Pointer; cp: DWORD); compilerproc;
var
    S1Len, S2Len, S3Len: SIZE_T;
    DestS: Pointer;
begin
    S1Len := strlen( S1 );
    S2Len := strlen( S2 );
    
    dst := VirtualAlloc(nil, S1Len + 1,
    MEM_COMMIT or MEM_RESERVE, PAGE_READWRITE );
    
    if not (dst = nil) then
    begin
        FillChar( dst, S1Len, #0 );
        strcpy( dst, S1 );
        strcat( dst, S2 );
    end else
    begin
        MessageBox( 0, 'Error: fpc_AnsiStr_Concat memory allocation fail.', 'Error', 0 );
        ExitProcess( 1 );
    end;
end;
function  fpc_AnsiStr_Compare_Equal (const S1, S2: Pointer): BOOL; [public, alias: 'FPC_ANSISTR_COMPARE_EQUAL'] compilerproc;
var
    res: DWORD;
begin
    res := strcmp(PChar(S1), PChar(S2));
    if res = 0 then
    result := BOOL(true) else
    result := BOOL(false);
end;

function TVmt.GetvParent: PVMT;
begin
	result := nil;
end;

function  fpc_get_input: PText; compilerproc;
begin
	result := nil;
end;

procedure fpc_readln_end(var f: Text); [public,alias:'FPC_READLN_END']; iocheck; compilerproc;
begin end;

procedure fpc_do_exit; [public,alias: 'FPC_DO_EXIT']; compilerproc;
begin
    ExitProcess(0);
end;

procedure fpc_iocheck; compilerproc;
begin end;

// -----------------------------------------------------
// object pascal ...
// -----------------------------------------------------
function  fpc_help_constructor(_self:pointer;var _vmt:pointer;_vmt_pos:cardinal):pointer;compilerproc;
begin result := nil end;

procedure fpc_help_destructor(_self,_vmt:pointer;vmt_pos:cardinal);compilerproc;
begin end;

procedure fpc_help_fail(_self:pointer;var _vmt:pointer;vmt_pos:cardinal);compilerproc;
begin
    MessageBoxA(0,'ddddddd','dddddddd',0);
end;

procedure fpc_reraise; compilerproc; //[public, alias:'fpc_reraise']; compilerproc;
begin
    
end;

procedure fpc_finalize(Data,TypeInfo: Pointer); compilerproc;
begin end;

procedure fpc_initializeunits; [public, alias:'FPC_INITIALIZEUNITS']; compilerproc;
begin
    //MessageBoxA(0, PChar('uzy'), PChar('2121212'), 0);
end;
procedure fpc_libinitializeunits; [public, alias:'FPC_LIBINITIALIZEUNITS']; compilerproc; begin end;

procedure move(const source; var dest; count: DWORD); [public, alias:'FPC_move']; stdcall;
begin
    memmove(@dest, @source, count);
end;

{$endif}
