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

procedure fpc_ansistr_decr_ref (Var S : Pointer); compilerproc;
procedure fpc_AnsiStr_Incr_Ref (    S : Pointer); compilerproc; inline;

procedure fpc_AnsiStr_Assign (var   DestS : Pointer;           S2: Pointer);            compilerproc;
procedure fpc_AnsiStr_Concat (var   dst   : Pointer; const S1, S2: Pointer; cp: DWORD); compilerproc;
function  fpc_AnsiStr_Unique (var   S     : Pointer):              Pointer;             compilerproc;

function  fpc_AnsiStr_Compare_Equal (const S1, S2: Pointer): BOOL compilerproc;

function  fpc_char_to_ansistr (c :  char): AnsiString; compilerproc;
function  fpc_pchar_to_ansistr(const p : PAnsiChar): AnsiString; compilerproc; overload;

procedure fpc_EmptyChar( var DestS: Pointer); compilerproc;

function  fpc_get_input: PText;         compilerproc;
procedure fpc_iocheck;                  compilerproc;
procedure fpc_readln_end(var f: Text);	compilerproc;

function  fpc_help_constructor (_self: pointer; var _vmt: pointer; _vmt_pos: cardinal): Pointer;  compilerproc;
procedure fpc_help_fail        (_self: pointer; var _vmt: pointer;  vmt_pos: cardinal);           compilerproc;
procedure fpc_help_destructor  (_self,              _vmt: pointer;  vmt_pos: cardinal);           compilerproc;

procedure fpc_doneexception; compilerproc;

procedure fpc_ReRaise; compilerproc;

procedure fpc_initializeunits; compilerproc;
procedure fpc_libinitializeunits; compilerproc;

procedure fpc_finalize(Data,TypeInfo: Pointer); compilerproc;
procedure fpc_copy_proc(Src, Dest, TypeInfo : Pointer); compilerproc; inline;
procedure fpc_do_exit; external name 'FPC_DO_EXIT'; compilerproc;

procedure EmptyMethod; external name 'FPC_EMPTYMETHOD';

procedure move(const source; var dest; count: DWord); stdcall; external 'fpc_rtl.dll';
{$endif}

{$ifdef windows_source}
function sizeByte : Byte; inline; begin result :=  1; end;
function sizeChar : Byte; inline; begin result :=  2; end;
function sizeWord : Byte; inline; begin result :=  4; end;
function sizeDWord: Byte; inline; begin result :=  8; end;
function sizeQWord: Byte; inline; begin result := 16; end;

procedure fpc_doneexception; [public, alias: 'FPC_DONEEXCEPTION'] compilerproc;
begin
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

procedure fpc_ansistr_decr_ref(Var S: Pointer); [public, alias: 'FPC_ANSISTR_DECR_REF'];  compilerproc;
Begin
end;

procedure fpc_AnsiStr_Incr_Ref (S : Pointer); [public, alias: 'FPC_ANSISTR_INCR_REF'];  compilerproc; inline;
Begin
end;

function  fpc_char_to_ansistr(c : char): AnsiString; compilerproc;
var
    MyHeap: THandle;
    DestS: PChar;
begin
MessageBox(0,'s11111 111','s2',0);
    MyHeap := THandle( HeapCreate( HEAP_NO_SERIALIZE, $ffff, 0 ) );
    if MyHeap = 0 then
    begin
        MessageBox( 0,'Error: creating private heap.', 'Error', 0 );
        exit;
    end;
    DestS  := PChar( LocalAlloc( LHND, 2 ) );
    DestS^ := c;
    
    (DestS + 1)^ := #0;
    
    LocalFree( Pointer( MyHeap ) );
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
    i, len: Integer;
    s: PChar;
    a: AnsiString;
begin
    s   := '';
    i   :=  0;
    len :=  2;;
    
    Pointer(s) := VirtualAlloc(nil, len,
    MEM_COMMIT or MEM_RESERVE, PAGE_READWRITE );
    
    strcpy( s, Pointer( p ) );
    
    a := AnsiString( @s );
    result := a;
end;


procedure fpc_ansistr_assign(var DestS: Pointer; S2: Pointer); [public, alias: 'FPC_ANSISTR_ASSIGN']; compilerproc;
var
    SLen: SIZE_T;
begin
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
    maxi, temp: DWORD;
begin
    if Pointer( S1 ) = Pointer( S2 ) then
    begin
        result := 1;
        exit;
    end;
    
    maxi := strlen( S1 );
    temp := strlen( S2 );
    
    result := maxi - temp;
    
    if result = 0 then
    begin
        if maxi > 0 then
        begin
            result := 1;
            exit;
        end;
        result := 0;
        exit;
    end;
    result := 1;
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
begin end;

procedure fpc_ReRaise; compilerproc;
begin end;

procedure fpc_finalize(Data,TypeInfo: Pointer); compilerproc;
begin end;

procedure fpc_initializeunits;    [public, alias:'FPC_INITIALIZEUNITS']; compilerproc;
begin
    MessageBox(0,'uzy','2121212',0);
end;
procedure fpc_libinitializeunits; [public, alias:'FPC_LIBINITIALIZEUNITS']; compilerproc; begin end;

{$endif}
