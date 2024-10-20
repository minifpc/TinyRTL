BITS 64
default rel
CPU x64

EXTERN	SYSTEM_$$_INITMEMORY
EXTERN	SYSINIT_$$_INITCONSOLE
EXTERN	U_$SYSINIT_$$_DOS
EXTERN	SYSINIT$_$DOS_CLASS_$__$$_WRITELN$ANSISTRING
EXTERN	SYSTEM_$$_DONEMEMORY
EXTERN	_$dll$user32$MessageBoxA
EXTERN	_$dll$kernel32$ExitProcess
EXTERN	fpc_initializeunits
EXTERN	FPC_DO_EXIT
; Begin asmlist al_procedures

SECTION .text
P$TEST1$_$ENTRY_$$_fin$00000001:
..@c1:
		push	rbp
..@c3:
..@c4:
		mov	rbp,rcx
..@c5:
		lea	rsp,[rsp-32]
		mov	rax,qword [U_$SYSINIT_$$_DOS]
		lea	rdx,[..@d2]
		mov	rcx,rax
		call	SYSINIT$_$DOS_CLASS_$__$$_WRITELN$ANSISTRING
		call	SYSTEM_$$_DONEMEMORY
		xor	r9d,r9d
		lea	r8,[_$TEST1$_Ld3]
		lea	rdx,[_$TEST1$_Ld4]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		xor	ecx,ecx
		call	_$dll$kernel32$ExitProcess
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c2:

SECTION .text
	GLOBAL P$TEST1_$$_ENTRY
P$TEST1_$$_ENTRY:
	GLOBAL _mainCRTStartup
_mainCRTStartup:
..@c6:
		push	rbp
..@c8:
..@c9:
		mov	rbp,rsp
..@c10:
		lea	rsp,[rsp-32]
..@j11:
		nop
..@j7:
		call	SYSTEM_$$_INITMEMORY
		call	SYSINIT_$$_INITCONSOLE
		mov	rax,qword [U_$SYSINIT_$$_DOS]
		lea	rdx,[..@d1]
		mov	rcx,rax
		call	SYSINIT$_$DOS_CLASS_$__$$_WRITELN$ANSISTRING
..@j9:
		nop
..@j8:
		mov	rcx,rbp
		call	P$TEST1$_$ENTRY_$$_fin$00000001
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c7:

SECTION .text
	GLOBAL PASCALMAIN
PASCALMAIN:
	GLOBAL PASCALMAIN
PASCALMAIN:
..@c11:
		lea	rsp,[rsp-40]
..@c13:
		call	fpc_initializeunits
		call	FPC_DO_EXIT
		nop
		lea	rsp,[rsp+40]
		ret
..@c12:
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INITFINAL
INITFINAL	DQ	0,0

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
..@d1$strlab:
	DW	0,1
	DD	0
	DQ	-1,32
..@d1:
		DB	"mem, windows: initialized... ok.",0

SECTION .rodata
..@d2$strlab:
	DW	0,1
	DD	0
	DQ	-1,11
..@d2:
		DB	"clean up...",0

SECTION .rodata
_$TEST1$_Ld3:
		DB	"Information",0

SECTION .rodata
_$TEST1$_Ld4:
		DB	"Hello Fresh",0
; End asmlist al_typedconsts
; Begin asmlist al_dwarf_frame

SECTION .debug_frame
..@c14:
	DD	..@c16-..@c15
..@c15:
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
..@c16:
	DD	..@c18-..@c17
..@c17:
	DQ	..@c1,..@c2-..@c1
	DB	4
	DD	..@c3-..@c1
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c4-..@c3
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c5-..@c4
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c18:
	DD	..@c20-..@c19
..@c19:
	DQ	..@c6,..@c7-..@c6
	DB	4
	DD	..@c8-..@c6
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c9-..@c8
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c10-..@c9
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c20:
	DD	..@c22-..@c21
..@c21:
	DQ	..@c11,..@c12-..@c11
	DB	4
	DD	..@c13-..@c11
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c22:
; End asmlist al_dwarf_frame

