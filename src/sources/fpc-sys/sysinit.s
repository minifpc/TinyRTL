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
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
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
	GLOBAL SYSINIT_$$_DONECONSOLE
SYSINIT_$$_DONECONSOLE:
..@c12:
		ret
..@c13:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_CREATE$$DOS_CLASS
SYSINIT$_$DOS_CLASS_$__$$_CREATE$$DOS_CLASS:
..@c14:
		push	rbp
..@c16:
..@c17:
		mov	rbp,rsp
..@c18:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j27
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j27:
		cmp	qword [rbp-16],0
		je	..@j24
..@j35:
		nop
..@j34:
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
		je	..@j32
		cmp	qword [rbp-8],0
		je	..@j32
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j32
..@j31:
		cmp	qword [rbp-8],0
		je	..@j41
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+96]
..@j41:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j42:
		nop
..@j32:
..@j24:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c15:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_DESTROY
SYSINIT$_$DOS_CLASS_$__$$_DESTROY:
..@c19:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c21:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j46
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j46:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j48
		test	rsi,rsi
		je	..@j48
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j48:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c20:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_FREE
SYSINIT$_$DOS_CLASS_$__$$_FREE:
..@c22:
		lea	rsp,[rsp-40]
..@c24:
		mov	rax,rcx
		test	rcx,rcx
		je	..@j53
		mov	rcx,rax
		mov	edx,1
		mov	rax,qword [rax]
		call	[rax+96]
..@j53:
		nop
		lea	rsp,[rsp+40]
		ret
..@c23:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_CLS
SYSINIT$_$DOS_CLASS_$__$$_CLS:
..@c25:
		mov	rax,rcx
		ret
..@c26:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_CLRSCR
SYSINIT$_$DOS_CLASS_$__$$_CLRSCR:
..@c27:
		lea	rsp,[rsp-40]
..@c29:
		call	SYSINIT$_$DOS_CLASS_$__$$_CLS
		nop
		lea	rsp,[rsp+40]
		ret
..@c28:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_CLEARSCREEN
SYSINIT$_$DOS_CLASS_$__$$_CLEARSCREEN:
..@c30:
		lea	rsp,[rsp-40]
..@c32:
		call	SYSINIT$_$DOS_CLASS_$__$$_CLS
		nop
		lea	rsp,[rsp+40]
		ret
..@c31:

SECTION .text
SYSINIT$_$DOS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$00000038:
..@c33:
		push	rbp
..@c35:
..@c36:
		mov	rbp,rcx
..@c37:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c34:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD
SYSINIT$_$DOS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD:
..@c38:
		push	rbp
..@c40:
..@c41:
		mov	rbp,rsp
..@c42:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
		mov	rcx,qword [rbp-16]
		call	fpc_ansistr_incr_ref
..@j68:
		nop
..@j64:
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		jne	..@j69
		lea	rdx,[FPC_EMPTYCHAR]
..@j69:
		lea	rcx,[_$SYSINIT$_Ld4]
		call	_$dll$msvcrt$printf
		mov	rdx,qword [rbp-16]
		test	rdx,rdx
		jne	..@j70
		lea	rdx,[FPC_EMPTYCHAR]
..@j70:
		lea	rcx,[_$SYSINIT$_Ld5]
		call	_$dll$msvcrt$printf
		xor	ebx,ebx
..@j66:
		nop
..@j65:
		mov	rcx,rbp
		call	SYSINIT$_$DOS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$00000038
		mov	eax,ebx
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c39:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_WRITE$ANSISTRING
SYSINIT$_$DOS_CLASS_$__$$_WRITE$ANSISTRING:
..@c43:
		lea	rsp,[rsp-40]
..@c45:
		mov	rax,rcx
		test	rdx,rdx
		jne	..@j73
		lea	rdx,[FPC_EMPTYCHAR]
..@j73:
		lea	rcx,[_$SYSINIT$_Ld6]
		call	_$dll$msvcrt$printf
		nop
		lea	rsp,[rsp+40]
		ret
..@c44:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_WRITELN$ANSISTRING
SYSINIT$_$DOS_CLASS_$__$$_WRITELN$ANSISTRING:
..@c46:
		lea	rsp,[rsp-40]
..@c48:
		mov	rax,rcx
		test	rdx,rdx
		jne	..@j76
		lea	rdx,[FPC_EMPTYCHAR]
..@j76:
		lea	rcx,[_$SYSINIT$_Ld7]
		call	_$dll$msvcrt$printf
		nop
		lea	rsp,[rsp+40]
		ret
..@c47:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_GET_STDIN$$LONGDWORD
SYSINIT$_$DOS_CLASS_$__$$_GET_STDIN$$LONGDWORD:
..@c49:
		lea	rsp,[rsp-40]
..@c51:
		mov	ecx,-10
		call	_$dll$kernel32$GetStdHandle
		nop
		lea	rsp,[rsp+40]
		ret
..@c50:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_GET_STDOUT$$LONGDWORD
SYSINIT$_$DOS_CLASS_$__$$_GET_STDOUT$$LONGDWORD:
..@c52:
		lea	rsp,[rsp-40]
..@c54:
		mov	ecx,-11
		call	_$dll$kernel32$GetStdHandle
		nop
		lea	rsp,[rsp+40]
		ret
..@c53:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_GET_STDERR$$LONGDWORD
SYSINIT$_$DOS_CLASS_$__$$_GET_STDERR$$LONGDWORD:
..@c55:
		lea	rsp,[rsp-40]
..@c57:
		mov	ecx,-12
		call	_$dll$kernel32$GetStdHandle
		nop
		lea	rsp,[rsp+40]
		ret
..@c56:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_SET_STDIN$LONGDWORD$LONGDWORD
SYSINIT$_$DOS_CLASS_$__$$_SET_STDIN$LONGDWORD$LONGDWORD:
..@c58:
		push	rbx
		lea	rsp,[rsp-32]
..@c60:
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
..@c59:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_SET_STDOUT$LONGDWORD$LONGDWORD
SYSINIT$_$DOS_CLASS_$__$$_SET_STDOUT$LONGDWORD$LONGDWORD:
..@c61:
		push	rbx
		lea	rsp,[rsp-32]
..@c63:
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
..@c62:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_SET_STDERR$LONGDWORD$LONGDWORD
SYSINIT$_$DOS_CLASS_$__$$_SET_STDERR$LONGDWORD$LONGDWORD:
..@c64:
		push	rbx
		lea	rsp,[rsp-32]
..@c66:
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
..@c65:

SECTION .text
	GLOBAL SYSINIT_$$_INITWINDOWS
SYSINIT_$$_INITWINDOWS:
..@c67:
		lea	rsp,[rsp-40]
..@c69:
		mov	eax,1
		lea	rcx,[VMT_$SYSINIT_$$_WINDOWS_CLASS]
		mov	rdx,rax
		call	SYSINIT$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS
		mov	qword [U_$SYSINIT_$$_WINDOWS],rax
		nop
		lea	rsp,[rsp+40]
		ret
..@c68:

SECTION .text
	GLOBAL SYSINIT_$$_DONEWINDOWS
SYSINIT_$$_DONEWINDOWS:
..@c70:
		lea	rsp,[rsp-40]
..@c72:
		cmp	qword [U_$SYSINIT_$$_WINDOWS],0
		je	..@j94
		mov	rax,qword [U_$SYSINIT_$$_WINDOWS]
		mov	rdx,qword [U_$SYSINIT_$$_WINDOWS]
		mov	rdx,qword [rdx]
		mov	rcx,rax
		call	[rdx+184]
..@j94:
		nop
		lea	rsp,[rsp+40]
		ret
..@c71:

SECTION .text
	GLOBAL SYSINIT$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS
SYSINIT$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS:
..@c73:
		push	rbp
..@c75:
..@c76:
		mov	rbp,rsp
..@c77:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j98
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j98:
		cmp	qword [rbp-16],0
		je	..@j95
..@j106:
		nop
..@j105:
		mov	qword [rbp-24],-1
		mov	rcx,qword [rbp-16]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j103
		cmp	qword [rbp-8],0
		je	..@j103
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j103
..@j102:
		cmp	qword [rbp-8],0
		je	..@j112
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSINIT$_$WINDOWS_CLASS_$__$$_DESTROY
..@j112:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j113:
		nop
..@j103:
..@j95:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c74:

SECTION .text
	GLOBAL SYSINIT$_$WINDOWS_CLASS_$__$$_DESTROY
SYSINIT$_$WINDOWS_CLASS_$__$$_DESTROY:
..@c78:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c80:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j117
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j117:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j119
		test	rsi,rsi
		je	..@j119
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j119:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c79:

SECTION .text
	GLOBAL SYSINIT$_$WINDOWS_CLASS_$__$$_FREE
SYSINIT$_$WINDOWS_CLASS_$__$$_FREE:
..@c81:
		lea	rsp,[rsp-40]
..@c83:
		mov	rax,rcx
		test	rcx,rcx
		je	..@j124
		mov	rcx,rax
		mov	edx,1
		call	SYSINIT$_$WINDOWS_CLASS_$__$$_DESTROY
..@j124:
		nop
		lea	rsp,[rsp+40]
		ret
..@c82:

SECTION .text
SYSINIT$_$WINDOWS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$00000039:
..@c84:
		push	rbp
..@c86:
..@c87:
		mov	rbp,rcx
..@c88:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c85:

SECTION .text
	GLOBAL SYSINIT$_$WINDOWS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD
SYSINIT$_$WINDOWS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD:
..@c89:
		push	rbp
..@c91:
..@c92:
		mov	rbp,rsp
..@c93:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
		mov	rcx,qword [rbp-16]
		call	fpc_ansistr_incr_ref
..@j133:
		nop
..@j129:
		mov	r8,qword [rbp-16]
		test	r8,r8
		jne	..@j134
		lea	r8,[FPC_EMPTYCHAR]
..@j134:
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		jne	..@j135
		lea	rdx,[FPC_EMPTYCHAR]
..@j135:
		xor	r9d,r9d
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		xor	ebx,ebx
..@j131:
		nop
..@j130:
		mov	rcx,rbp
		call	SYSINIT$_$WINDOWS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$00000039
		mov	eax,ebx
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c90:
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
	DQ	FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_FREE,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD
	DQ	SYSINIT$_$DOS_CLASS_$__$$_FREE,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSINIT_$$_WINDOWS_CLASS
VMT_$SYSINIT_$$_WINDOWS_CLASS	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d9,0,0,0,RTTI_$SYSINIT_$$_WINDOWS_CLASS
	DQ	0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_FREE,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD
	DQ	SYSINIT$_$WINDOWS_CLASS_$__$$_FREE,0
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
..@c94:
	DD	..@c96-..@c95
..@c95:
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
..@c96:
	DD	..@c98-..@c97
..@c97:
	DQ	..@c1,..@c2-..@c1
	ALIGN 4,DB 0
..@c98:
	DD	..@c100-..@c99
..@c99:
	DQ	..@c3,..@c4-..@c3
	DB	4
	DD	..@c5-..@c3
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c100:
	DD	..@c102-..@c101
..@c101:
	DQ	..@c6,..@c7-..@c6
	DB	4
	DD	..@c8-..@c6
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c102:
	DD	..@c104-..@c103
..@c103:
	DQ	..@c9,..@c10-..@c9
	DB	4
	DD	..@c11-..@c9
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c104:
	DD	..@c106-..@c105
..@c105:
	DQ	..@c12,..@c13-..@c12
	ALIGN 4,DB 0
..@c106:
	DD	..@c108-..@c107
..@c107:
	DQ	..@c14,..@c15-..@c14
	DB	4
	DD	..@c16-..@c14
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c17-..@c16
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c18-..@c17
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c108:
	DD	..@c110-..@c109
..@c109:
	DQ	..@c19,..@c20-..@c19
	DB	4
	DD	..@c21-..@c19
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c110:
	DD	..@c112-..@c111
..@c111:
	DQ	..@c22,..@c23-..@c22
	DB	4
	DD	..@c24-..@c22
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c112:
	DD	..@c114-..@c113
..@c113:
	DQ	..@c25,..@c26-..@c25
	ALIGN 4,DB 0
..@c114:
	DD	..@c116-..@c115
..@c115:
	DQ	..@c27,..@c28-..@c27
	DB	4
	DD	..@c29-..@c27
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c116:
	DD	..@c118-..@c117
..@c117:
	DQ	..@c30,..@c31-..@c30
	DB	4
	DD	..@c32-..@c30
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c118:
	DD	..@c120-..@c119
..@c119:
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
..@c120:
	DD	..@c122-..@c121
..@c121:
	DQ	..@c38,..@c39-..@c38
	DB	4
	DD	..@c40-..@c38
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c41-..@c40
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c42-..@c41
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c122:
	DD	..@c124-..@c123
..@c123:
	DQ	..@c43,..@c44-..@c43
	DB	4
	DD	..@c45-..@c43
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c124:
	DD	..@c126-..@c125
..@c125:
	DQ	..@c46,..@c47-..@c46
	DB	4
	DD	..@c48-..@c46
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c126:
	DD	..@c128-..@c127
..@c127:
	DQ	..@c49,..@c50-..@c49
	DB	4
	DD	..@c51-..@c49
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c128:
	DD	..@c130-..@c129
..@c129:
	DQ	..@c52,..@c53-..@c52
	DB	4
	DD	..@c54-..@c52
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c130:
	DD	..@c132-..@c131
..@c131:
	DQ	..@c55,..@c56-..@c55
	DB	4
	DD	..@c57-..@c55
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c132:
	DD	..@c134-..@c133
..@c133:
	DQ	..@c58,..@c59-..@c58
	DB	4
	DD	..@c60-..@c58
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c134:
	DD	..@c136-..@c135
..@c135:
	DQ	..@c61,..@c62-..@c61
	DB	4
	DD	..@c63-..@c61
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c136:
	DD	..@c138-..@c137
..@c137:
	DQ	..@c64,..@c65-..@c64
	DB	4
	DD	..@c66-..@c64
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c138:
	DD	..@c140-..@c139
..@c139:
	DQ	..@c67,..@c68-..@c67
	DB	4
	DD	..@c69-..@c67
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c140:
	DD	..@c142-..@c141
..@c141:
	DQ	..@c70,..@c71-..@c70
	DB	4
	DD	..@c72-..@c70
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c142:
	DD	..@c144-..@c143
..@c143:
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
..@c144:
	DD	..@c146-..@c145
..@c145:
	DQ	..@c78,..@c79-..@c78
	DB	4
	DD	..@c80-..@c78
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c146:
	DD	..@c148-..@c147
..@c147:
	DQ	..@c81,..@c82-..@c81
	DB	4
	DD	..@c83-..@c81
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c148:
	DD	..@c150-..@c149
..@c149:
	DQ	..@c84,..@c85-..@c84
	DB	4
	DD	..@c86-..@c84
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c87-..@c86
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c88-..@c87
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c150:
	DD	..@c152-..@c151
..@c151:
	DQ	..@c89,..@c90-..@c89
	DB	4
	DD	..@c91-..@c89
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c92-..@c91
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c93-..@c92
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c152:
; End asmlist al_dwarf_frame

