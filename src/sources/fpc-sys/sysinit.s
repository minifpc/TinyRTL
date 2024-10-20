BITS 64
default rel
CPU x64

EXTERN	_$dll$user32$MessageBoxA
EXTERN	_$dll$kernel32$ExitProcess
EXTERN	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
EXTERN	fpc_ansistr_assign
EXTERN	fpc_reraise
EXTERN	FPC_DONEEXCEPTION
EXTERN	SYSTEM$_$TOBJECT_$__$$_DESTROY
EXTERN	fpc_ansistr_incr_ref
EXTERN	FPC_EMPTYCHAR
EXTERN	_$dll$msvcrt$printf
EXTERN	fpc_ansistr_decr_ref
EXTERN	_$dll$kernel32$GetStdHandle
EXTERN	_$dll$kernel32$SetStdHandle
EXTERN	VMT_$SYSTEM_$$_TOBJECT$indirect
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
EXTERN	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
EXTERN	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
EXTERN	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
EXTERN	FPC_EMPTYMETHOD
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING$indirect
EXTERN	RTTI_$SYSTEM_$$_TOBJECT$indirect
; Begin asmlist al_procedures

SECTION .text
SYSINIT_$$_STRINGLENGTH$ANSISTRING$$LONGDWORD:
..@c1:
		xor	eax,eax
		jmp	..@j6
..@j5:
		inc	eax
..@j6:
		mov	edx,eax
		inc	rdx
		cmp	byte [rcx+rdx*1-1],0
		jne	..@j5
		ret
..@c2:

SECTION .text
	GLOBAL SYSINIT_$$_WRITE$ANSISTRING
SYSINIT_$$_WRITE$ANSISTRING:
..@c3:
		push	rbx
		lea	rsp,[rsp-32]
..@c5:
		mov	rbx,rcx
		cmp	qword [U_$SYSINIT_$$_DOS],0
		je	..@j10
		cmp	qword [U_$SYSINIT_$$_WINDOWS],0
		jne	..@j12
..@j10:
		xor	r9d,r9d
		lea	r8,[_$SYSINIT$_Ld1]
		lea	rdx,[_$SYSINIT$_Ld2]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
		jmp	..@j13
..@j12:
		mov	rdx,rbx
		mov	rcx,qword [U_$SYSINIT_$$_DOS]
		call	SYSINIT$_$DOS_CLASS_$__$$_WRITE$ANSISTRING
..@j13:
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c4:

SECTION .text
	GLOBAL SYSINIT_$$_WRITELN$ANSISTRING
SYSINIT_$$_WRITELN$ANSISTRING:
..@c6:
		push	rbx
		lea	rsp,[rsp-32]
..@c8:
		mov	rbx,rcx
		cmp	qword [U_$SYSINIT_$$_DOS],0
		je	..@j16
		cmp	qword [U_$SYSINIT_$$_WINDOWS],0
		jne	..@j18
..@j16:
		xor	r9d,r9d
		lea	r8,[_$SYSINIT$_Ld1]
		lea	rdx,[_$SYSINIT$_Ld2]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
		jmp	..@j19
..@j18:
		mov	rdx,rbx
		mov	rcx,qword [U_$SYSINIT_$$_DOS]
		call	SYSINIT$_$DOS_CLASS_$__$$_WRITELN$ANSISTRING
..@j19:
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c7:

SECTION .text
	GLOBAL SYSINIT_$$_INITCONSOLE
SYSINIT_$$_INITCONSOLE:
..@c9:
		lea	rsp,[rsp-40]
..@c11:
		mov	eax,1
		lea	rcx,[VMT_$SYSINIT_$$_DOS_CLASS]
		mov	rdx,rax
		call	SYSINIT$_$DOS_CLASS_$__$$_CREATE$$DOS_CLASS
		mov	qword [U_$SYSINIT_$$_DOS],rax
		nop
		lea	rsp,[rsp+40]
		ret
..@c10:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_CREATE$$DOS_CLASS
SYSINIT$_$DOS_CLASS_$__$$_CREATE$$DOS_CLASS:
..@c12:
		push	rbp
..@c14:
..@c15:
		mov	rbp,rsp
..@c16:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j25
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j25:
		cmp	qword [rbp-16],0
		je	..@j22
..@j33:
		nop
..@j32:
		mov	qword [rbp-24],-1
		mov	rcx,qword [rbp-16]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	rax,qword [rbp-16]
		lea	rcx,[rax+16]
		lea	rdx,[..@d3]
		call	fpc_ansistr_assign
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j30
		cmp	qword [rbp-8],0
		je	..@j30
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+160]
		jmp	..@j30
..@j29:
		cmp	qword [rbp-8],0
		je	..@j39
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+96]
..@j39:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j40:
		nop
..@j30:
..@j22:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c13:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_DESTROY
SYSINIT$_$DOS_CLASS_$__$$_DESTROY:
..@c17:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c19:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j44
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+168]
..@j44:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j46
		test	rsi,rsi
		je	..@j46
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j46:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c18:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_CLS
SYSINIT$_$DOS_CLASS_$__$$_CLS:
..@c20:
		mov	rax,rcx
		ret
..@c21:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_CLRSCR
SYSINIT$_$DOS_CLASS_$__$$_CLRSCR:
..@c22:
		lea	rsp,[rsp-40]
..@c24:
		call	SYSINIT$_$DOS_CLASS_$__$$_CLS
		nop
		lea	rsp,[rsp+40]
		ret
..@c23:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_CLEARSCREEN
SYSINIT$_$DOS_CLASS_$__$$_CLEARSCREEN:
..@c25:
		lea	rsp,[rsp-40]
..@c27:
		call	SYSINIT$_$DOS_CLASS_$__$$_CLS
		nop
		lea	rsp,[rsp+40]
		ret
..@c26:

SECTION .text
SYSINIT$_$DOS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$00000031:
..@c28:
		push	rbp
..@c30:
..@c31:
		mov	rbp,rcx
..@c32:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c29:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD
SYSINIT$_$DOS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD:
..@c33:
		push	rbp
..@c35:
..@c36:
		mov	rbp,rsp
..@c37:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
		mov	rcx,qword [rbp-16]
		call	fpc_ansistr_incr_ref
..@j62:
		nop
..@j58:
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		jne	..@j63
		lea	rdx,[FPC_EMPTYCHAR]
..@j63:
		lea	rcx,[_$SYSINIT$_Ld4]
		call	_$dll$msvcrt$printf
		mov	rdx,qword [rbp-16]
		test	rdx,rdx
		jne	..@j64
		lea	rdx,[FPC_EMPTYCHAR]
..@j64:
		lea	rcx,[_$SYSINIT$_Ld5]
		call	_$dll$msvcrt$printf
		xor	ebx,ebx
..@j60:
		nop
..@j59:
		mov	rcx,rbp
		call	SYSINIT$_$DOS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$00000031
		mov	eax,ebx
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c34:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_WRITE$ANSISTRING
SYSINIT$_$DOS_CLASS_$__$$_WRITE$ANSISTRING:
..@c38:
		lea	rsp,[rsp-40]
..@c40:
		mov	rax,rcx
		test	rdx,rdx
		jne	..@j67
		lea	rdx,[FPC_EMPTYCHAR]
..@j67:
		lea	rcx,[_$SYSINIT$_Ld6]
		call	_$dll$msvcrt$printf
		nop
		lea	rsp,[rsp+40]
		ret
..@c39:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_WRITELN$ANSISTRING
SYSINIT$_$DOS_CLASS_$__$$_WRITELN$ANSISTRING:
..@c41:
		lea	rsp,[rsp-40]
..@c43:
		mov	rax,rcx
		test	rdx,rdx
		jne	..@j70
		lea	rdx,[FPC_EMPTYCHAR]
..@j70:
		lea	rcx,[_$SYSINIT$_Ld7]
		call	_$dll$msvcrt$printf
		nop
		lea	rsp,[rsp+40]
		ret
..@c42:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_GET_STDIN$$LONGDWORD
SYSINIT$_$DOS_CLASS_$__$$_GET_STDIN$$LONGDWORD:
..@c44:
		lea	rsp,[rsp-40]
..@c46:
		mov	ecx,-10
		call	_$dll$kernel32$GetStdHandle
		nop
		lea	rsp,[rsp+40]
		ret
..@c45:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_GET_STDOUT$$LONGDWORD
SYSINIT$_$DOS_CLASS_$__$$_GET_STDOUT$$LONGDWORD:
..@c47:
		lea	rsp,[rsp-40]
..@c49:
		mov	ecx,-11
		call	_$dll$kernel32$GetStdHandle
		nop
		lea	rsp,[rsp+40]
		ret
..@c48:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_GET_STDERR$$LONGDWORD
SYSINIT$_$DOS_CLASS_$__$$_GET_STDERR$$LONGDWORD:
..@c50:
		lea	rsp,[rsp-40]
..@c52:
		mov	ecx,-12
		call	_$dll$kernel32$GetStdHandle
		nop
		lea	rsp,[rsp+40]
		ret
..@c51:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_SET_STDIN$LONGDWORD$LONGDWORD
SYSINIT$_$DOS_CLASS_$__$$_SET_STDIN$LONGDWORD$LONGDWORD:
..@c53:
		push	rbx
		lea	rsp,[rsp-32]
..@c55:
		mov	rax,rcx
		mov	ecx,edx
		mov	ebx,r8d
		call	_$dll$kernel32$GetStdHandle
		mov	edx,eax
		mov	ecx,ebx
		call	_$dll$kernel32$SetStdHandle
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c54:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_SET_STDOUT$LONGDWORD$LONGDWORD
SYSINIT$_$DOS_CLASS_$__$$_SET_STDOUT$LONGDWORD$LONGDWORD:
..@c56:
		push	rbx
		lea	rsp,[rsp-32]
..@c58:
		mov	rax,rcx
		mov	ecx,edx
		mov	ebx,r8d
		call	_$dll$kernel32$GetStdHandle
		mov	edx,eax
		mov	ecx,ebx
		call	_$dll$kernel32$SetStdHandle
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c57:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_SET_STDERR$LONGDWORD$LONGDWORD
SYSINIT$_$DOS_CLASS_$__$$_SET_STDERR$LONGDWORD$LONGDWORD:
..@c59:
		push	rbx
		lea	rsp,[rsp-32]
..@c61:
		mov	rax,rcx
		mov	ecx,edx
		mov	ebx,r8d
		call	_$dll$kernel32$GetStdHandle
		mov	edx,eax
		mov	ecx,ebx
		call	_$dll$kernel32$SetStdHandle
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c60:

SECTION .text
	GLOBAL SYSINIT_$$_INITWINDOWS
SYSINIT_$$_INITWINDOWS:
..@c62:
		lea	rsp,[rsp-40]
..@c64:
		mov	eax,1
		lea	rcx,[VMT_$SYSINIT_$$_WINDOWS_CLASS]
		mov	rdx,rax
		call	SYSINIT$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS
		mov	qword [U_$SYSINIT_$$_WINDOWS],rax
		nop
		lea	rsp,[rsp+40]
		ret
..@c63:

SECTION .text
	GLOBAL SYSINIT$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS
SYSINIT$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS:
..@c65:
		push	rbp
..@c67:
..@c68:
		mov	rbp,rsp
..@c69:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j88
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j88:
		cmp	qword [rbp-16],0
		je	..@j85
..@j96:
		nop
..@j95:
		mov	qword [rbp-24],-1
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j93
		cmp	qword [rbp-8],0
		je	..@j93
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+160]
		jmp	..@j93
..@j92:
		cmp	qword [rbp-8],0
		je	..@j102
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSINIT$_$WINDOWS_CLASS_$__$$_DESTROY
..@j102:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j103:
		nop
..@j93:
..@j85:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c66:

SECTION .text
	GLOBAL SYSINIT$_$WINDOWS_CLASS_$__$$_DESTROY
SYSINIT$_$WINDOWS_CLASS_$__$$_DESTROY:
..@c70:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c72:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j107
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+168]
..@j107:
		test	rbx,rbx
		je	..@j109
		test	rsi,rsi
		je	..@j109
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j109:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c71:

SECTION .text
SYSINIT$_$WINDOWS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$00000032:
..@c73:
		push	rbp
..@c75:
..@c76:
		mov	rbp,rcx
..@c77:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c74:

SECTION .text
	GLOBAL SYSINIT$_$WINDOWS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD
SYSINIT$_$WINDOWS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD:
..@c78:
		push	rbp
..@c80:
..@c81:
		mov	rbp,rsp
..@c82:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
		mov	rcx,qword [rbp-16]
		call	fpc_ansistr_incr_ref
..@j119:
		nop
..@j115:
		mov	r8,qword [rbp-16]
		test	r8,r8
		jne	..@j120
		lea	r8,[FPC_EMPTYCHAR]
..@j120:
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		jne	..@j121
		lea	rdx,[FPC_EMPTYCHAR]
..@j121:
		xor	r9d,r9d
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		xor	ebx,ebx
..@j117:
		nop
..@j116:
		mov	rcx,rbp
		call	SYSINIT$_$WINDOWS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$00000032
		mov	eax,ebx
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c79:
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION .bss
	ALIGNB 8
	GLOBAL U_$SYSINIT_$$_DOS
U_$SYSINIT_$$_DOS:	RESB	8

SECTION .bss
	ALIGNB 8
	GLOBAL U_$SYSINIT_$$_WINDOWS
U_$SYSINIT_$$_WINDOWS:	RESB	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSINIT_$$_DOS_CLASS
VMT_$SYSINIT_$$_DOS_CLASS	DQ	40,-40,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d8,0,0,0,RTTI_$SYSINIT_$$_DOS_CLASS
	DQ	INIT_$SYSINIT_$$_DOS_CLASS,0,0,0,SYSINIT$_$DOS_CLASS_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSINIT_$$_WINDOWS_CLASS
VMT_$SYSINIT_$$_WINDOWS_CLASS	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d9,0,0,0,RTTI_$SYSINIT_$$_WINDOWS_CLASS
	DQ	0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD,0
; End asmlist al_globals
; Begin asmlist al_const

SECTION .data
	ALIGN 8,DB 0
..@d8:
	DB	9
		DB	"DOS_Class"

SECTION .data
	ALIGN 8,DB 0
..@d9:
	DB	13
		DB	"Windows_Class"
; End asmlist al_const
; Begin asmlist al_typedconsts

SECTION .rodata
_$SYSINIT$_Ld1:
		DB	"Error",0

SECTION .rodata
_$SYSINIT$_Ld2:
		DB	"Error: Console not init.",0

SECTION .rodata
..@d3$strlab:
	DW	0,1
	DD	0
	DQ	-1,2
..@d3:
		DB	13,10,0

SECTION .rodata
_$SYSINIT$_Ld4:
		DB	"Message: %s",0

SECTION .rodata
_$SYSINIT$_Ld5:
		DB	"Title  : %s",0

SECTION .rodata
_$SYSINIT$_Ld6:
		DB	"%s",0

SECTION .rodata
_$SYSINIT$_Ld7:
		DB	"%s",13,10,0
; End asmlist al_typedconsts
; Begin asmlist al_rtti

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSINIT_$$_DOS_CLASS
INIT_$SYSINIT_$$_DOS_CLASS	DB	15,9
		DB	"DOS_Class"
	DQ	0
	DD	8
	DQ	0,0
	DD	1
	DQ	RTTI_$SYSTEM_$$_ANSISTRING$indirect,16

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSINIT_$$_DOS_CLASS
RTTI_$SYSINIT_$$_DOS_CLASS	DB	15,9
		DB	"DOS_Class"
	DQ	VMT_$SYSINIT_$$_DOS_CLASS,RTTI_$SYSTEM_$$_TOBJECT$indirect
	DW	0
	DB	7
		DB	"sysinit"
	DW	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSINIT_$$_WINDOWS_CLASS
INIT_$SYSINIT_$$_WINDOWS_CLASS	DB	15,13
		DB	"Windows_Class"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSINIT_$$_WINDOWS_CLASS
RTTI_$SYSINIT_$$_WINDOWS_CLASS	DB	15,13
		DB	"Windows_Class"
	DQ	VMT_$SYSINIT_$$_WINDOWS_CLASS,RTTI_$SYSTEM_$$_TOBJECT$indirect
	DW	0
	DB	7
		DB	"sysinit"
	DW	0
; End asmlist al_rtti
; Begin asmlist al_indirectglobals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSINIT_$$_DOS_CLASS$indirect
VMT_$SYSINIT_$$_DOS_CLASS$indirect	DQ	VMT_$SYSINIT_$$_DOS_CLASS

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSINIT_$$_WINDOWS_CLASS$indirect
VMT_$SYSINIT_$$_WINDOWS_CLASS$indirect	DQ	VMT_$SYSINIT_$$_WINDOWS_CLASS

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSINIT_$$_DOS_CLASS$indirect
INIT_$SYSINIT_$$_DOS_CLASS$indirect	DQ	INIT_$SYSINIT_$$_DOS_CLASS

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSINIT_$$_DOS_CLASS$indirect
RTTI_$SYSINIT_$$_DOS_CLASS$indirect	DQ	RTTI_$SYSINIT_$$_DOS_CLASS

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSINIT_$$_WINDOWS_CLASS$indirect
INIT_$SYSINIT_$$_WINDOWS_CLASS$indirect	DQ	INIT_$SYSINIT_$$_WINDOWS_CLASS

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSINIT_$$_WINDOWS_CLASS$indirect
RTTI_$SYSINIT_$$_WINDOWS_CLASS$indirect	DQ	RTTI_$SYSINIT_$$_WINDOWS_CLASS
; End asmlist al_indirectglobals
; Begin asmlist al_dwarf_frame

SECTION .debug_frame
..@c83:
	DD	..@c85-..@c84
..@c84:
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
..@c85:
	DD	..@c87-..@c86
..@c86:
	DQ	..@c1,..@c2-..@c1
	ALIGN 4,DB 0
..@c87:
	DD	..@c89-..@c88
..@c88:
	DQ	..@c3,..@c4-..@c3
	DB	4
	DD	..@c5-..@c3
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c89:
	DD	..@c91-..@c90
..@c90:
	DQ	..@c6,..@c7-..@c6
	DB	4
	DD	..@c8-..@c6
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c91:
	DD	..@c93-..@c92
..@c92:
	DQ	..@c9,..@c10-..@c9
	DB	4
	DD	..@c11-..@c9
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c93:
	DD	..@c95-..@c94
..@c94:
	DQ	..@c12,..@c13-..@c12
	DB	4
	DD	..@c14-..@c12
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c15-..@c14
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c16-..@c15
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c95:
	DD	..@c97-..@c96
..@c96:
	DQ	..@c17,..@c18-..@c17
	DB	4
	DD	..@c19-..@c17
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c97:
	DD	..@c99-..@c98
..@c98:
	DQ	..@c20,..@c21-..@c20
	ALIGN 4,DB 0
..@c99:
	DD	..@c101-..@c100
..@c100:
	DQ	..@c22,..@c23-..@c22
	DB	4
	DD	..@c24-..@c22
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c101:
	DD	..@c103-..@c102
..@c102:
	DQ	..@c25,..@c26-..@c25
	DB	4
	DD	..@c27-..@c25
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c103:
	DD	..@c105-..@c104
..@c104:
	DQ	..@c28,..@c29-..@c28
	DB	4
	DD	..@c30-..@c28
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c31-..@c30
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c32-..@c31
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c105:
	DD	..@c107-..@c106
..@c106:
	DQ	..@c33,..@c34-..@c33
	DB	4
	DD	..@c35-..@c33
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c36-..@c35
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c37-..@c36
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c107:
	DD	..@c109-..@c108
..@c108:
	DQ	..@c38,..@c39-..@c38
	DB	4
	DD	..@c40-..@c38
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c109:
	DD	..@c111-..@c110
..@c110:
	DQ	..@c41,..@c42-..@c41
	DB	4
	DD	..@c43-..@c41
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c111:
	DD	..@c113-..@c112
..@c112:
	DQ	..@c44,..@c45-..@c44
	DB	4
	DD	..@c46-..@c44
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c113:
	DD	..@c115-..@c114
..@c114:
	DQ	..@c47,..@c48-..@c47
	DB	4
	DD	..@c49-..@c47
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c115:
	DD	..@c117-..@c116
..@c116:
	DQ	..@c50,..@c51-..@c50
	DB	4
	DD	..@c52-..@c50
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c117:
	DD	..@c119-..@c118
..@c118:
	DQ	..@c53,..@c54-..@c53
	DB	4
	DD	..@c55-..@c53
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c119:
	DD	..@c121-..@c120
..@c120:
	DQ	..@c56,..@c57-..@c56
	DB	4
	DD	..@c58-..@c56
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c121:
	DD	..@c123-..@c122
..@c122:
	DQ	..@c59,..@c60-..@c59
	DB	4
	DD	..@c61-..@c59
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c123:
	DD	..@c125-..@c124
..@c124:
	DQ	..@c62,..@c63-..@c62
	DB	4
	DD	..@c64-..@c62
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c125:
	DD	..@c127-..@c126
..@c126:
	DQ	..@c65,..@c66-..@c65
	DB	4
	DD	..@c67-..@c65
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c68-..@c67
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c69-..@c68
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c127:
	DD	..@c129-..@c128
..@c128:
	DQ	..@c70,..@c71-..@c70
	DB	4
	DD	..@c72-..@c70
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c129:
	DD	..@c131-..@c130
..@c130:
	DQ	..@c73,..@c74-..@c73
	DB	4
	DD	..@c75-..@c73
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c76-..@c75
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c77-..@c76
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c131:
	DD	..@c133-..@c132
..@c132:
	DQ	..@c78,..@c79-..@c78
	DB	4
	DD	..@c80-..@c78
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c81-..@c80
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c82-..@c81
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c133:
; End asmlist al_dwarf_frame

