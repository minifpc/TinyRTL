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

procedure fpc_reraise; compilerproc;

procedure fpc_initializeunits; compilerproc;
procedure fpc_libinitializeunits; compilerproc;

procedure fpc_finalize(Data,TypeInfo: Pointer); compilerproc;
procedure fpc_copy_proc(Src, Dest, TypeInfo : Pointer); compilerproc; inline;
procedure fpc_do_exit; external name 'FPC_DO_EXIT'; compilerproc;

procedure EmptyMethod; external name 'FPC_EMPTYMETHOD';

procedure move(const source; var dest; count: DWord); stdcall;
{$endif}

{$ifdef windows_source}
{$M-}
function sizeByte : Byte; inline; begin result :=  1; end;
function sizeChar : Byte; inline; begin result :=  2; end;
function sizeWord : Byte; inline; begin result :=  4; end;
function sizeDWord: Byte; inline; begin result :=  8; end;
function sizeQWord: Byte; inline; begin result := 16; end;

procedure fpc_doneexception; [public, alias: 'FPC_DONEEXCEPTION'] compilerproc;
begin
    MessageBox(0,'fpc_doneexceptions','system.pas',0);
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
    MessageBox(0,'getparent','system',0);
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
    MessageBox(0,'fpc_do_exit','system.pas',0);
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

procedure fpc_ReRaise; [public, alias:'fpc_reraise']; compilerproc;
begin
    MessageBox(0,'fpc_ReRaise','inform',0)
end;

procedure fpc_finalize(Data,TypeInfo: Pointer); compilerproc;
begin end;

procedure fpc_initializeunits; [public, alias:'FPC_INITIALIZEUNITS']; compilerproc;
begin
    MessageBox(0,'uzy','2121212',0);
end;
procedure fpc_libinitializeunits; [public, alias:'FPC_LIBINITIALIZEUNITS']; compilerproc; begin end;

procedure move(const source; var dest; count: DWord); [public, alias:'FPC_move']; assembler; nostackframe; stdcall;
asm
    mov    %r8, %rax
    sub    %rdx, %rcx            { rcx = src - dest }
    jz     .Lquit                { exit if src=dest }
    jnb    .L1                   { src>dest => forward move }

    add    %rcx, %rax            { rcx is negative => r8+rcx > 0 if regions overlap }
    jb     .Lback                { if no overlap, still do forward move }

.L1:
    cmp    $8, %r8
    jl     .Lless8f              { signed compare, negative count not allowed }
    test   $7, %dl
    je     .Ldestaligned

    test   $1, %dl               { align dest by moving first 1+2+4 bytes }
    je     .L2f
    mov    (%rcx,%rdx,1),%al
    dec    %r8
    mov    %al, (%rdx)
    add    $1, %rdx
.L2f:
    test   $2, %dl
    je     .L4f
    mov    (%rcx,%rdx,1),%ax
    sub    $2, %r8
    mov    %ax, (%rdx)
    add    $2, %rdx
.L4f:
    test   $4, %dl
    je     .Ldestaligned
    mov    (%rcx,%rdx,1),%eax
    sub    $4, %r8
    mov    %eax, (%rdx)
    add    $4, %rdx

.Ldestaligned:
    mov    %r8, %r9
    shr    $5, %r9
    jne    .Lmore32

.Ltail:
    mov    %r8, %r9
    shr    $3, %r9
    je     .Lless8f

    .balign 16
.Lloop8f:                             { max. 8 iterations }
    mov    (%rcx,%rdx,1),%rax
    mov    %rax, (%rdx)
    add    $8, %rdx
    dec    %r9
    jne    .Lloop8f
    and    $7, %r8

.Lless8f:
    test   %r8, %r8
    jle    .Lquit

    .balign 16
.Lloop1f:
    mov    (%rcx,%rdx,1),%al
    mov    %al,(%rdx)
    inc    %rdx
    dec    %r8
    jne    .Lloop1f
.Lquit:
    retq


.Lmore32:
    cmp    $0x2000, %r9          { this limit must be processor-specific (1/2 L2 cache size) }
    jnae   .Lloop32
    cmp    $0x1000, %rcx         { but don't bother bypassing cache if src and dest }
    jnb    .Lntloopf             { are close to each other}

    .balign 16
.Lloop32:
    add    $32,%rdx
    mov    -32(%rcx,%rdx,1),%rax
    mov    -24(%rcx,%rdx,1),%r10
    mov    %rax,-32(%rdx)
    mov    %r10,-24(%rdx)
    dec    %r9
    mov    -16(%rcx,%rdx,1),%rax
    mov    -8(%rcx,%rdx,1),%r10
    mov    %rax,-16(%rdx)
    mov    %r10,-8(%rdx)
    jne    .Lloop32

    and    $0x1f, %r8
    jmpq   .Ltail

.Lntloopf:
    mov    $32, %eax

    .balign 16
.Lpref:
    prefetchnta (%rcx,%rdx,1)
    prefetchnta 0x40(%rcx,%rdx,1)
    add    $0x80, %rdx
    dec    %eax
    jne    .Lpref

    sub    $0x1000, %rdx
    mov    $64, %eax

    .balign 16
.Loop64:
    add    $64, %rdx
    mov    -64(%rcx,%rdx,1), %r9
    mov    -56(%rcx,%rdx,1), %r10
    movnti %r9, -64(%rdx)
    movnti %r10, -56(%rdx)

    mov    -48(%rcx,%rdx,1), %r9
    mov    -40(%rcx,%rdx,1), %r10
    movnti %r9, -48(%rdx)
    movnti %r10, -40(%rdx)
    dec    %eax
    mov    -32(%rcx,%rdx,1), %r9
    mov    -24(%rcx,%rdx,1), %r10
    movnti %r9, -32(%rdx)
    movnti %r10, -24(%rdx)

    mov    -16(%rcx,%rdx,1), %r9
    mov    -8(%rcx,%rdx,1), %r10
    movnti %r9, -16(%rdx)
    movnti %r10, -8(%rdx)
    jne    .Loop64

    sub    $0x1000, %r8
    cmp    $0x1000, %r8
    jae    .Lntloopf

    mfence
    jmpq    .Ldestaligned        { go handle remaining bytes }

{ backwards move }
.Lback:
    add    %r8, %rdx             { points to the end of dest }
    cmp    $8, %r8
    jl     .Lless8b              { signed compare, negative count not allowed }
    test   $7, %dl
    je     .Ldestalignedb
    test   $1, %dl
    je     .L2b
    dec    %rdx
    mov    (%rcx,%rdx,1), %al
    dec    %r8
    mov    %al, (%rdx)
.L2b:
    test   $2, %dl
    je     .L4b
    sub    $2, %rdx
    mov    (%rcx,%rdx,1), %ax
    sub    $2, %r8
    mov    %ax, (%rdx)
.L4b:
    test   $4, %dl
    je     .Ldestalignedb
    sub    $4, %rdx
    mov    (%rcx,%rdx,1), %eax
    sub    $4, %r8
    mov    %eax, (%rdx)

.Ldestalignedb:
    mov    %r8, %r9
    shr    $5, %r9
    jne    .Lmore32b

.Ltailb:
    mov    %r8, %r9
    shr    $3, %r9
    je     .Lless8b

.Lloop8b:
    sub    $8, %rdx
    mov    (%rcx,%rdx,1), %rax
    dec    %r9
    mov    %rax, (%rdx)
    jne    .Lloop8b
    and    $7, %r8

.Lless8b:
    test   %r8, %r8
    jle    .Lquit2

    .balign 16
.Lsmallb:
    dec   %rdx
    mov   (%rcx,%rdx,1), %al
    dec   %r8
    mov   %al,(%rdx)
    jnz   .Lsmallb
.Lquit2:
    retq

.Lmore32b:
    cmp   $0x2000, %r9
    jnae  .Lloop32b
    cmp    $0xfffffffffffff000,%rcx
    jb     .Lntloopb

    .balign 16
.Lloop32b:
    sub    $32, %rdx
    mov    24(%rcx,%rdx,1), %rax
    mov    16(%rcx,%rdx,1), %r10
    mov    %rax, 24(%rdx)
    mov    %r10, 16(%rdx)
    dec    %r9
    mov    8(%rcx,%rdx,1),%rax
    mov    (%rcx,%rdx,1), %r10
    mov    %rax, 8(%rdx)
    mov    %r10, (%rdx)
    jne    .Lloop32b
    and    $0x1f, %r8
    jmpq   .Ltailb

.Lntloopb:
    mov    $32, %eax

    .balign 16
.Lprefb:
    sub    $0x80, %rdx
    prefetchnta (%rcx,%rdx,1)
    prefetchnta 0x40(%rcx,%rdx,1)
    dec    %eax
    jnz    .Lprefb

    add    $0x1000, %rdx
    mov    $0x40, %eax

    .balign 16
.Lloop64b:
    sub    $64, %rdx
    mov    56(%rcx,%rdx,1), %r9
    mov    48(%rcx,%rdx,1), %r10
    movnti %r9, 56(%rdx)
    movnti %r10, 48(%rdx)

    mov    40(%rcx,%rdx,1), %r9
    mov    32(%rcx,%rdx,1), %r10
    movnti %r9, 40(%rdx)
    movnti %r10, 32(%rdx)
    dec    %eax
    mov    24(%rcx,%rdx,1), %r9
    mov    16(%rcx,%rdx,1), %r10
    movnti %r9, 24(%rdx)
    movnti %r10, 16(%rdx)

    mov    8(%rcx,%rdx,1), %r9
    mov    (%rcx,%rdx,1), %r10
    movnti %r9, 8(%rdx)
    movnti %r10, (%rdx)
    jne    .Lloop64b

    sub    $0x1000, %r8
    cmp    $0x1000, %r8
    jae    .Lntloopb
    mfence
    jmpq   .Ldestalignedb
end;

{$endif}
