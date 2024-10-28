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
{$mode delphi}
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

{$if declared(FillChar) = false}
procedure FillChar  ( var Dest; Count: Integer; Value: Char );
procedure FreeMem   ( var p: Pointer );
procedure GetMem    ( var p: Pointer; size: DWORD );
{$endif}

procedure fpc_Addref(Data,TypeInfo : Pointer); compilerproc;
procedure fpc_DecRef(Data,TypeInfo : Pointer); compilerproc;

procedure fpc_ansistr_decr_ref (Var S : Pointer); compilerproc;
procedure fpc_AnsiStr_Incr_Ref (    S : Pointer); compilerproc; inline;

procedure fpc_ansistr_assign       (var dst: Pointer;       S2: Pointer);   compilerproc;
procedure fpc_ansistr_concat       (var dst: String ; const S1: String; const S2: String; cp: Word); compilerproc;
procedure fpc_ansistr_concat_multi (var dst: Pointer; const sa: array   of  String; cp: TSystemCodePage); compilerproc;

function  fpc_AnsiStr_Unique (var   S     : Pointer):              Pointer;     compilerproc;

function  fpc_AnsiStr_Compare_Equal (const S1, S2: Pointer): BOOL compilerproc;

function  fpc_char_to_ansistr (const c :  Char; cp : TSystemCodePage): String; compilerproc;
function  fpc_pchar_to_ansistr(const p : PChar; cp : TSystemCodePage): String; compilerproc;

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
    GetMem(DestS, sizeof(Char));
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

procedure fpc_AnsiStr_Incr_Ref (S : Pointer); [public, alias: 'FPC_ANSISTR_INCR_REF'];  compilerproc; //inline;
begin

end;

function  fpc_char_to_ansistr(const c : Char; cp : TSystemCodePage): String; compilerproc;
var
    dst: String;
begin
    GetMem(Pointer(dst), sizeof(Char));
    memset(Pointer(dst), DWORD(c), sizeof(Char));

    result := dst;
end;

function fpc_AnsiStr_Unique(var S: Pointer): Pointer; compilerproc;
begin
    Pointer( result ) := Pointer( S );
    if Pointer( S ) = nil then exit;
    
    result := S;
end;

function fpc_pchar_to_ansistr(const p: PChar; cp : Word): String;
var
    len : DWORD;
    S   : String;
begin
    len := strlen(p) + 1;
    S   := String(malloc(len));
    
    strcpy(PChar(S), PChar(p));
    result := S;
end;

procedure fpc_ansistr_assign(
    var dst: Pointer;
         S2: Pointer
);  [public, alias: 'FPC_ANSISTR_ASSIGN']; compilerproc;
var
    len: DWORD;
begin
    len := strlen(PChar(String(@S2)));
    dst := malloc(len + 1);
    
    strcpy(PChar(String(@dst)), PChar(String(@S2)));
end;

procedure fpc_ansistr_concat(
    var  dst: String;
    const S1: String;
    const S2: String;
          cp: Word
);  compilerproc;
var
    S1_Len : SIZE_T;
    S2_Len : SIZE_T;
    S3_len : SIZE_T;
    CS1, CS2: String;
    same   : Boolean;
    i: DWORD;
    
    pch: PChar;
begin
    S1_len := strlen(PChar(S1));
    S2_len := strlen(PChar(S2));

    S3_len := S1_len + S2_len + 1;

    dst := String(malloc(s3_len));

    strcpy(PChar(pch), PChar(S1));
    strcat(PChar(pch), PChar(S2));
    
    strcpy(PChar(dst),pch);
end;

procedure fpc_ansistr_Concat_multi(
    var   dst: Pointer;
    const  sa: array of String;
           cp: TSystemCodePage
); compilerproc;
begin

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
    
end;

procedure fpc_reraise; compilerproc; //[public, alias:'fpc_reraise']; compilerproc;
begin
    
end;

procedure fpc_finalize(Data,TypeInfo: Pointer); compilerproc;
begin end;

procedure fpc_initializeunits; [public, alias:'FPC_INITIALIZEUNITS']; compilerproc;
    procedure CallProcedure(proc: TProcedure);
    begin
        if Assigned(proc) then
            TProcedure(proc)();
    end;
var
    Index: DWORD;
begin
    printf('Count Items: %d'#13#10, InitFinalTable.TableCount);
    if InitFinalTable.TableCount > 0 then
    begin
        for Index := 1 to InitFinalTable.TableCount - 1 do
        CallProcedure(InitFinalTable.Procs[Index].InitProc);
    end;
end;
procedure fpc_libinitializeunits; [public, alias:'FPC_LIBINITIALIZEUNITS']; compilerproc; begin end;

procedure move(const source; var dest; count: DWORD); [public, alias:'FPC_move']; stdcall;
begin
    memmove(@dest, @source, count);
end;

{$endif}
