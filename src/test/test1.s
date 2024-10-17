BITS 64
default rel
CPU x64

EXTERN	VMT_$QT_STRING_$$_QSTRING
EXTERN	QT_STRING$_$QSTRING_$__$$_CREATE$PCHAR$$QSTRING
EXTERN	_$dll$user32$MessageBoxA
EXTERN	_$dll$kernel32$ExitProcess
EXTERN	VMT_$SYSTEM_$$_TANSISTRINGMEMORYMANAGER
EXTERN	SYSTEM$_$TANSISTRINGMEMORYMANAGER_$__$$_CREATE$$TANSISTRINGMEMORYMANAGER
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	fpc_initializeunits
EXTERN	FPC_DO_EXIT
; Begin asmlist al_procedures

SECTION .text
	GLOBAL P$TEST1_$$_ENTRY
P$TEST1_$$_ENTRY:
..@c1:
; [test1.pas]
; [19] begin
%LINE 19+0 test1.pas
		lea	rsp,[rsp-40]
..@c3:
; Var hm located in register rax
; Var qs located in register rax
; [20] qs := QString.Create('one string');
%LINE 20+0
		lea	r8,[_$TEST1$_Ld1]
		mov	edx,1
		lea	rcx,[VMT_$QT_STRING_$$_QSTRING]
		call	QT_STRING$_$QSTRING_$__$$_CREATE$PCHAR$$QSTRING
; Var qs located in register rax
; [23] MessageBox(0,'qs','Information',0);
%LINE 23+0
		xor	r9d,r9d
		lea	r8,[_$TEST1$_Ld2]
		lea	rdx,[_$TEST1$_Ld3]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
; [24] ExitProcess(0);
%LINE 24+0
		xor	ecx,ecx
		call	_$dll$kernel32$ExitProcess
; [25] end;
%LINE 25+0
		nop
		lea	rsp,[rsp+40]
		ret
..@c2:

SECTION .text
	GLOBAL PASCALMAIN
PASCALMAIN:
	GLOBAL main
main:
..@c4:
; [29] begin
%LINE 29+0
		push	rbp
..@c6:
..@c7:
		mov	rbp,rsp
..@c8:
		lea	rsp,[rsp-32]
		call	fpc_initializeunits
; [30] MemoryManager := TAnsiStringMemoryManager.Create;
%LINE 30+0
		mov	eax,1
		lea	rcx,[VMT_$SYSTEM_$$_TANSISTRINGMEMORYMANAGER]
		mov	rdx,rax
		call	SYSTEM$_$TANSISTRINGMEMORYMANAGER_$__$$_CREATE$$TANSISTRINGMEMORYMANAGER
		mov	qword [U_$P$TEST1_$$_MEMORYMANAGER],rax
; [33] MemoryManager.Free;
%LINE 33+0
		mov	rcx,rax
		call	SYSTEM$_$TOBJECT_$__$$_FREE
; [36] Entry;
%LINE 36+0
		call	P$TEST1_$$_ENTRY
; [37] end.
%LINE 37+0
		call	FPC_DO_EXIT
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c5:
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION .bss
	ALIGNB 8
; [28] MemoryManager: TAnsiStringMemoryManager;
%LINE 28+0 test1.pas
U_$P$TEST1_$$_MEMORYMANAGER:	RESB	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INITFINAL
INITFINAL	DQ	0,0
%LINE 0+0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL FPC_THREADVARTABLES
FPC_THREADVARTABLES	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL FPC_RESOURCESTRINGTABLES
FPC_RESOURCESTRINGTABLES	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL FPC_WIDEINITTABLES
FPC_WIDEINITTABLES	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL FPC_RESSTRINITTABLES
FPC_RESSTRINITTABLES	DQ	0

SECTION .fpc
__fpc_ident		DB	"FPC 3.2.2 [2021/05/15] for x86_64 - Win64"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL __heapsize
__heapsize	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL __fpc_valgrind
__fpc_valgrind	DB	0
; End asmlist al_globals
; Begin asmlist al_typedconsts

SECTION .rodata
_$TEST1$_Ld1:
%LINE 20+0 test1.pas
		DB	"one string",0

SECTION .rodata
_$TEST1$_Ld2:
%LINE 23+0
		DB	"Information",0

SECTION .rodata
_$TEST1$_Ld3:
		DB	"qs",0
; End asmlist al_typedconsts
; Begin asmlist al_dwarf_frame

SECTION .debug_frame
..@c9:
	DD	..@c11-..@c10
..@c10:
	DD	-1
	DB	1,0
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_SLEB128BIT	
	DB	16,12
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c11:
	DD	..@c13-..@c12
..@c12:
	DQ	..@c1,..@c2-..@c1
	DB	4
	DD	..@c3-..@c1
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c13:
	DD	..@c15-..@c14
..@c14:
	DQ	..@c4,..@c5-..@c4
	DB	4
	DD	..@c6-..@c4
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c7-..@c6
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c8-..@c7
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c15:
; End asmlist al_dwarf_frame

