BITS 64
default rel
CPU x64

EXTERN	_$dll$user32$MessageBoxA
EXTERN	_$dll$kernel32$ExitProcess
EXTERN	fpc_ansistr_assign
EXTERN	_$dll$kernel32$GetStdHandle
EXTERN	_$dll$kernel32$AllocConsole
EXTERN	_$dll$kernel32$AttachConsole
EXTERN	fpc_reraise
EXTERN	FPC_DONEEXCEPTION
EXTERN	_$dll$kernel32$GetConsoleScreenBufferInfo
EXTERN	_$dll$kernel32$FillConsoleOutputCharacterA
EXTERN	_$dll$kernel32$FillConsoleOutputAttribute
EXTERN	_$dll$kernel32$SetConsoleCursorPosition
EXTERN	fpc_ansistr_incr_ref
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_EMPTYCHAR
EXTERN	_$dll$kernel32$WriteConsoleA
EXTERN	VMT_$SYSTEM_$$_TOBJECT$indirect
EXTERN	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
EXTERN	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
EXTERN	SYSTEM$_$TOBJECT_$__$$_DESTROY
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
EXTERN	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
EXTERN	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal
EXTERN	SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
EXTERN	SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
EXTERN	RTTI_$SYSTEM_$$_SMALLINT$indirect
EXTERN	RTTI_$SYSTEM_$$_WORD$indirect
EXTERN	RTTI_$SYSTEM_$$_ANSISTRING$indirect
EXTERN	RTTI_$SYSTEM_$$_TOBJECT$indirect
EXTERN	RTTI_$SYSTEM_$$_LONGWORD$indirect
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
		xor	eax,eax
		lea	r8,[_$SYSINIT$_Ld3]
		lea	rdx,[_$SYSINIT$_Ld4]
		xor	ecx,ecx
		mov	r9d,eax
		call	_$dll$user32$MessageBoxA
		mov	edx,1
		lea	rcx,[VMT_$SYSINIT_$$_DOS_CLASS]
		call	SYSINIT$_$DOS_CLASS_$__$$_CREATE$$DOS_CLASS
		mov	qword [U_$SYSINIT_$$_DOS],rax
		xor	r9d,r9d
		lea	r8,[_$SYSINIT$_Ld3]
		lea	rdx,[_$SYSINIT$_Ld5]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
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
		call	[rdx+104]
		mov	qword [rbp-16],rax
..@j25:
		cmp	qword [rbp-16],0
		je	..@j22
..@j33:
		nop
..@j32:
		mov	qword [rbp-24],-1
		xor	r9d,r9d
		lea	r8,[_$SYSINIT$_Ld3]
		lea	rdx,[_$SYSINIT$_Ld6]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	rax,qword [rbp-16]
		lea	rcx,[rax+16]
		lea	rdx,[..@d7]
		call	fpc_ansistr_assign
		mov	ecx,-11
		call	_$dll$kernel32$GetStdHandle
		mov	rdx,qword [rbp-16]
		mov	dword [rdx+8],eax
		mov	rax,qword [rbp-16]
		mov	eax,dword [rax+8]
		test	eax,eax
		je	..@j35
		cmp	eax,-1
		jne	..@j37
..@j35:
		call	_$dll$kernel32$AllocConsole
		test	eax,eax
		jne	..@j39
		mov	ecx,-1
		call	_$dll$kernel32$AttachConsole
		test	eax,eax
		jne	..@j41
		xor	r9d,r9d
		lea	r8,[_$SYSINIT$_Ld1]
		lea	rdx,[_$SYSINIT$_Ld8]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
..@j41:
..@j39:
..@j37:
		mov	ecx,-11
		call	_$dll$kernel32$GetStdHandle
		mov	rdx,qword [rbp-16]
		mov	dword [rdx+8],eax
		mov	rax,qword [rbp-16]
		mov	eax,dword [rax+8]
		test	eax,eax
		je	..@j42
		cmp	eax,-1
		jne	..@j44
..@j42:
		xor	r9d,r9d
		lea	r8,[_$SYSINIT$_Ld1]
		lea	rdx,[_$SYSINIT$_Ld9]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
..@j44:
		xor	r9d,r9d
		lea	r8,[_$SYSINIT$_Ld10]
		lea	rdx,[_$SYSINIT$_Ld11]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	ecx,-11
		call	_$dll$kernel32$GetStdHandle
		mov	edx,eax
		mov	rcx,qword [rbp-16]
		call	SYSINIT$_$DOS_CLASS_$__$$_SETCONSOLEHANDLE$LONGWORD
		xor	r9d,r9d
		lea	r8,[_$SYSINIT$_Ld3]
		lea	rdx,[_$SYSINIT$_Ld12]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
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
		je	..@j49
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSINIT$_$DOS_CLASS_$__$$_DESTROY
..@j49:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j50:
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
		jng	..@j54
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+168]
..@j54:
		xor	r9d,r9d
		lea	r8,[_$SYSINIT$_Ld3]
		lea	rdx,[_$SYSINIT$_Ld13]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		test	rbx,rbx
		je	..@j56
		test	rsi,rsi
		je	..@j56
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+136]
..@j56:
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
		push	rbx
		push	rsi
		lea	rsp,[rsp-72]
..@c22:
		mov	rbx,rcx
		mov	word [rsp+40],0
		mov	word [rsp+42],0
		mov	ecx,dword [rbx+8]
		lea	rdx,[rsp+48]
		call	_$dll$kernel32$GetConsoleScreenBufferInfo
		test	eax,eax
		je	..@j58
		lea	rax,[rsp+48]
		movsx	esi,word [rax]
		movsx	eax,word [rax+2]
		imul	esi,eax
		lea	rax,[rsp+44]
		mov	qword [rsp+32],rax
		mov	ecx,dword [rbx+8]
		mov	r9d,dword [rsp+40]
		mov	r8d,esi
		mov	edx,32
		call	_$dll$kernel32$FillConsoleOutputCharacterA
		test	eax,eax
		je	..@j58
		mov	ecx,dword [rbx+8]
		lea	rdx,[rsp+48]
		call	_$dll$kernel32$GetConsoleScreenBufferInfo
		test	eax,eax
		je	..@j58
		lea	rax,[rsp+44]
		mov	qword [rsp+32],rax
		mov	ecx,dword [rbx+8]
		movzx	edx,word [rsp+56]
		mov	r9d,dword [rsp+40]
		mov	r8d,esi
		call	_$dll$kernel32$FillConsoleOutputAttribute
		test	eax,eax
		je	..@j58
		mov	ecx,dword [rbx+8]
		mov	edx,dword [rsp+40]
		call	_$dll$kernel32$SetConsoleCursorPosition
..@j58:
		nop
		lea	rsp,[rsp+72]
		pop	rsi
		pop	rbx
		ret
..@c21:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_CLRSCR
SYSINIT$_$DOS_CLASS_$__$$_CLRSCR:
..@c23:
		lea	rsp,[rsp-40]
..@c25:
		call	SYSINIT$_$DOS_CLASS_$__$$_CLS
		nop
		lea	rsp,[rsp+40]
		ret
..@c24:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_CLEARSCREEN
SYSINIT$_$DOS_CLASS_$__$$_CLEARSCREEN:
..@c26:
		lea	rsp,[rsp-40]
..@c28:
		call	SYSINIT$_$DOS_CLASS_$__$$_CLS
		nop
		lea	rsp,[rsp+40]
		ret
..@c27:

SECTION .text
SYSINIT$_$DOS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$0000004D:
..@c29:
		push	rbp
..@c31:
..@c32:
		mov	rbp,rcx
..@c33:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c30:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD
SYSINIT$_$DOS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD:
..@c34:
		push	rbp
..@c36:
..@c37:
		mov	rbp,rsp
..@c38:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	rbx,rcx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
		mov	rcx,qword [rbp-16]
		call	fpc_ansistr_incr_ref
..@j80:
		nop
..@j76:
		mov	r8,qword [rbp-16]
		mov	rdx,qword [rbp-8]
		mov	rcx,rbx
		call	SYSINIT$_$DOS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD
		xor	ebx,ebx
..@j78:
		nop
..@j77:
		mov	rcx,rbp
		call	SYSINIT$_$DOS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$0000004D
		mov	eax,ebx
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c35:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_WRITE$ANSISTRING
SYSINIT$_$DOS_CLASS_$__$$_WRITE$ANSISTRING:
..@c39:
		push	rbx
		push	rsi
		lea	rsp,[rsp-56]
..@c41:
		mov	rbx,rcx
		mov	rsi,rdx
		mov	eax,dword [rbx+8]
		test	eax,eax
		je	..@j83
		cmp	eax,-1
		jne	..@j85
..@j83:
		xor	r9d,r9d
		lea	r8,[_$SYSINIT$_Ld1]
		lea	rdx,[_$SYSINIT$_Ld14]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
..@j85:
		mov	qword [rsp+32],0
		mov	ecx,dword [rbx+8]
		mov	rdx,rsi
		test	rsi,rsi
		jne	..@j86
		lea	rdx,[FPC_EMPTYCHAR]
..@j86:
		lea	r9,[rsp+40]
		mov	r8d,5
		call	_$dll$kernel32$WriteConsoleA
		test	rax,rax
		jne	..@j88
		xor	r9d,r9d
		lea	r8,[_$SYSINIT$_Ld1]
		lea	rdx,[_$SYSINIT$_Ld15]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
..@j88:
		nop
		lea	rsp,[rsp+56]
		pop	rsi
		pop	rbx
		ret
..@c40:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_WRITELN$ANSISTRING
SYSINIT$_$DOS_CLASS_$__$$_WRITELN$ANSISTRING:
..@c42:
		push	rbx
		push	rsi
		lea	rsp,[rsp-56]
..@c44:
		mov	rbx,rcx
		mov	rsi,rdx
		mov	qword [rsp+32],0
		mov	rcx,rsi
		call	SYSINIT_$$_STRINGLENGTH$ANSISTRING$$LONGDWORD
		mov	r8d,eax
		mov	ecx,dword [rbx+8]
		mov	rdx,rsi
		test	rsi,rsi
		jne	..@j91
		lea	rdx,[FPC_EMPTYCHAR]
..@j91:
		lea	r9,[rsp+40]
		call	_$dll$kernel32$WriteConsoleA
		nop
		lea	rsp,[rsp+56]
		pop	rsi
		pop	rbx
		ret
..@c43:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_SET_STDIN$LONGWORD
SYSINIT$_$DOS_CLASS_$__$$_SET_STDIN$LONGWORD:
..@c45:
		lea	rsp,[rsp-40]
..@c47:
		call	SYSINIT$_$DOS_CLASS_$__$$_SETCONSOLEHANDLE$LONGWORD
		nop
		lea	rsp,[rsp+40]
		ret
..@c46:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_SET_STDOUT$LONGWORD
SYSINIT$_$DOS_CLASS_$__$$_SET_STDOUT$LONGWORD:
..@c48:
		lea	rsp,[rsp-40]
..@c50:
		call	SYSINIT$_$DOS_CLASS_$__$$_SETCONSOLEHANDLE$LONGWORD
		nop
		lea	rsp,[rsp+40]
		ret
..@c49:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_SET_STDERR$LONGWORD
SYSINIT$_$DOS_CLASS_$__$$_SET_STDERR$LONGWORD:
..@c51:
		lea	rsp,[rsp-40]
..@c53:
		call	SYSINIT$_$DOS_CLASS_$__$$_SETCONSOLEHANDLE$LONGWORD
		nop
		lea	rsp,[rsp+40]
		ret
..@c52:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_SETCONSOLEHANDLE$LONGWORD
SYSINIT$_$DOS_CLASS_$__$$_SETCONSOLEHANDLE$LONGWORD:
..@c54:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c56:
		mov	rbx,rcx
		mov	esi,edx
		mov	eax,esi
		sub	eax,-12
		cmp	eax,2
		ja	..@j101
		and	eax,eax
		lea	rdx,[..@d16]
		movsxd	rax,dword [rdx+rax*4]
		add	rax,rdx
		jmp	rax
..@j102:
		mov	dword [rbx+24],esi
		jmp	..@j100
..@j103:
		mov	dword [rbx+28],esi
		jmp	..@j100
..@j104:
		mov	dword [rbx+32],esi
		jmp	..@j100
..@j101:
		mov	rcx,rbx
		lea	r8,[..@d17]
		lea	rdx,[..@d18]
		call	SYSINIT$_$DOS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD
		xor	ecx,ecx
		call	_$dll$kernel32$ExitProcess
..@j100:
		mov	dword [rbx+8],esi
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c55:

SECTION .data
	ALIGN 4,DB 0
..@d16:
	DD	..@j104-..@d16,..@j103-..@d16,..@j102-..@d16

SECTION .text
	GLOBAL SYSINIT_$$_INITWINDOWS
SYSINIT_$$_INITWINDOWS:
..@c57:
		lea	rsp,[rsp-40]
..@c59:
		mov	eax,1
		lea	rcx,[VMT_$SYSINIT_$$_WINDOWS_CLASS]
		mov	rdx,rax
		call	SYSINIT$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS
		mov	qword [U_$SYSINIT_$$_WINDOWS],rax
		nop
		lea	rsp,[rsp+40]
		ret
..@c58:

SECTION .text
	GLOBAL SYSINIT$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS
SYSINIT$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS:
..@c60:
		push	rbp
..@c62:
..@c63:
		mov	rbp,rsp
..@c64:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j110
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-16],rax
..@j110:
		cmp	qword [rbp-16],0
		je	..@j107
..@j118:
		nop
..@j117:
		mov	qword [rbp-24],-1
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j115
		cmp	qword [rbp-8],0
		je	..@j115
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+160]
		jmp	..@j115
..@j114:
		cmp	qword [rbp-8],0
		je	..@j124
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSINIT$_$WINDOWS_CLASS_$__$$_DESTROY
..@j124:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j125:
		nop
..@j115:
..@j107:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c61:

SECTION .text
	GLOBAL SYSINIT$_$WINDOWS_CLASS_$__$$_DESTROY
SYSINIT$_$WINDOWS_CLASS_$__$$_DESTROY:
..@c65:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c67:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j129
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+168]
..@j129:
		test	rbx,rbx
		je	..@j131
		test	rsi,rsi
		je	..@j131
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+136]
..@j131:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c66:

SECTION .text
SYSINIT$_$WINDOWS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$0000004F:
..@c68:
		push	rbp
..@c70:
..@c71:
		mov	rbp,rcx
..@c72:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c69:

SECTION .text
	GLOBAL SYSINIT$_$WINDOWS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD
SYSINIT$_$WINDOWS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD:
..@c73:
		push	rbp
..@c75:
..@c76:
		mov	rbp,rsp
..@c77:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
		mov	rcx,qword [rbp-16]
		call	fpc_ansistr_incr_ref
..@j141:
		nop
..@j137:
		mov	r8,qword [rbp-16]
		test	r8,r8
		jne	..@j142
		lea	r8,[FPC_EMPTYCHAR]
..@j142:
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		jne	..@j143
		lea	rdx,[FPC_EMPTYCHAR]
..@j143:
		xor	r9d,r9d
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		xor	ebx,ebx
..@j139:
		nop
..@j138:
		mov	rcx,rbp
		call	SYSINIT$_$WINDOWS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$0000004F
		mov	eax,ebx
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c74:
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
VMT_$SYSINIT_$$_DOS_CLASS	DQ	40,-40,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d19,0,0,0,RTTI_$SYSINIT_$$_DOS_CLASS
	DQ	INIT_$SYSINIT_$$_DOS_CLASS,0,0,0,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_DESTROY
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING,SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal,SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
	DQ	SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSINIT_$$_WINDOWS_CLASS
VMT_$SYSINIT_$$_WINDOWS_CLASS	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d20,0,0,0,RTTI_$SYSINIT_$$_WINDOWS_CLASS
	DQ	0,0,0,0,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal,SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
	DQ	SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION,0
; End asmlist al_globals
; Begin asmlist al_const

SECTION .data
	ALIGN 8,DB 0
..@d19:
	DB	9
		DB	"DOS_Class"

SECTION .data
	ALIGN 8,DB 0
..@d20:
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
_$SYSINIT$_Ld3:
		DB	"info",0

SECTION .rodata
_$SYSINIT$_Ld4:
		DB	"before create",0

SECTION .rodata
_$SYSINIT$_Ld5:
		DB	"after DOOOOSSSS create",0

SECTION .rodata
_$SYSINIT$_Ld6:
		DB	"before DOS class create",0

SECTION .rodata
..@d7$strlab:
	DW	0,1
	DD	0
	DQ	-1,2
..@d7:
		DB	13,10,0

SECTION .rodata
_$SYSINIT$_Ld8:
		DB	"Error: Console handle invalid.",0

SECTION .rodata
_$SYSINIT$_Ld9:
		DB	"Error: could not create a console.",0

SECTION .rodata
_$SYSINIT$_Ld10:
		DB	"cxxxxx",0

SECTION .rodata
_$SYSINIT$_Ld11:
		DB	"AAAAAAAAAAAAAAAAAAAAAAAAAAAA",0

SECTION .rodata
_$SYSINIT$_Ld12:
		DB	"after class create",0

SECTION .rodata
_$SYSINIT$_Ld13:
		DB	"before destroy",0

SECTION .rodata
_$SYSINIT$_Ld14:
		DB	"Error: no valid console handle.",0

SECTION .rodata
_$SYSINIT$_Ld15:
		DB	"Error: error during console write.",0

SECTION .rodata
..@d17$strlab:
	DW	0,1
	DD	0
	DQ	-1,5
..@d17:
		DB	"Error",0

SECTION .rodata
..@d18$strlab:
	DW	0,1
	DD	0
	DQ	-1,29
..@d18:
		DB	"console handle can not be set",0
; End asmlist al_typedconsts
; Begin asmlist al_rtti

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSINIT_$$_STD_HANDLES
RTTI_$SYSINIT_$$_STD_HANDLES	DB	3,11
		DB	"STD_HANDLES"
	DB	1
	DD	-12,-10
	DQ	0
	DB	7
		DB	"shInput"
	DB	8
		DB	"shOutput"
	DB	7
		DB	"shError"
	DB	7
		DB	"sysinit"
	DB	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSINIT_$$_STD_HANDLES_s2o
RTTI_$SYSINIT_$$_STD_HANDLES_s2o	DD	3,-12
	DQ	RTTI_$SYSINIT_$$_STD_HANDLES+47
	DD	-10
	DQ	RTTI_$SYSINIT_$$_STD_HANDLES+30
	DD	-11
	DQ	RTTI_$SYSINIT_$$_STD_HANDLES+38

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSINIT_$$_STD_HANDLES_o2s
RTTI_$SYSINIT_$$_STD_HANDLES_o2s	DD	0
	DQ	RTTI_$SYSINIT_$$_STD_HANDLES+47,RTTI_$SYSINIT_$$_STD_HANDLES+38,RTTI_$SYSINIT_$$_STD_HANDLES+30

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSINIT_$$_COORD
INIT_$SYSINIT_$$_COORD	DB	13,5
		DB	"COORD"
	DQ	0
	DD	4
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSINIT_$$_COORD
RTTI_$SYSINIT_$$_COORD	DB	13,5
		DB	"COORD"
	DQ	INIT_$SYSINIT_$$_COORD
	DD	4,2
	DQ	RTTI_$SYSTEM_$$_SMALLINT$indirect,0,RTTI_$SYSTEM_$$_SMALLINT$indirect
	DQ	2

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSINIT_$$_SMALL_RECT
INIT_$SYSINIT_$$_SMALL_RECT	DB	13,10
		DB	"SMALL_RECT"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSINIT_$$_SMALL_RECT
RTTI_$SYSINIT_$$_SMALL_RECT	DB	13,10
		DB	"SMALL_RECT"
	DQ	INIT_$SYSINIT_$$_SMALL_RECT
	DD	8,4
	DQ	RTTI_$SYSTEM_$$_SMALLINT$indirect,0,RTTI_$SYSTEM_$$_SMALLINT$indirect
	DQ	2,RTTI_$SYSTEM_$$_SMALLINT$indirect,4,RTTI_$SYSTEM_$$_SMALLINT$indirect
	DQ	6

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSINIT_$$_CONSOLE_SCREEN_BUFFER_INFO
INIT_$SYSINIT_$$_CONSOLE_SCREEN_BUFFER_INFO	DB	13,26
		DB	"CONSOLE_SCREEN_BUFFER_INFO"
	DQ	0
	DD	22
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSINIT_$$_CONSOLE_SCREEN_BUFFER_INFO
RTTI_$SYSINIT_$$_CONSOLE_SCREEN_BUFFER_INFO	DB	13,26
		DB	"CONSOLE_SCREEN_BUFFER_INFO"
	DQ	INIT_$SYSINIT_$$_CONSOLE_SCREEN_BUFFER_INFO
	DD	22,5
	DQ	RTTI_$SYSINIT_$$_COORD$indirect,0,RTTI_$SYSINIT_$$_COORD$indirect,4,RTTI_$SYSTEM_$$_WORD$indirect
	DQ	8,RTTI_$SYSINIT_$$_SMALL_RECT$indirect,10,RTTI_$SYSINIT_$$_COORD$indirect
	DQ	18

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
	DW	4
	DB	7
		DB	"sysinit"
	DW	4
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect,24,SYSINIT$_$DOS_CLASS_$__$$_SET_STDIN$LONGWORD
	DQ	1
	DD	0,-2147483648
	DW	0
	DB	52,5
		DB	"StdIn"
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect,28,SYSINIT$_$DOS_CLASS_$__$$_SET_STDOUT$LONGWORD
	DQ	1
	DD	0,-2147483648
	DW	1
	DB	52,6
		DB	"StdOut"
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect,32,SYSINIT$_$DOS_CLASS_$__$$_SET_STDERR$LONGWORD
	DQ	1
	DD	0,-2147483648
	DW	2
	DB	52,6
		DB	"StdErr"
	DQ	RTTI_$SYSTEM_$$_ANSISTRING$indirect,16,0,1
	DD	0,0
	DW	3
	DB	60,7
		DB	"NewLine"

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
	GLOBAL RTTI_$SYSINIT_$$_STD_HANDLES$indirect
RTTI_$SYSINIT_$$_STD_HANDLES$indirect	DQ	RTTI_$SYSINIT_$$_STD_HANDLES

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSINIT_$$_STD_HANDLES_s2o$indirect
RTTI_$SYSINIT_$$_STD_HANDLES_s2o$indirect	DQ	RTTI_$SYSINIT_$$_STD_HANDLES_s2o

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSINIT_$$_STD_HANDLES_o2s$indirect
RTTI_$SYSINIT_$$_STD_HANDLES_o2s$indirect	DQ	RTTI_$SYSINIT_$$_STD_HANDLES_o2s

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSINIT_$$_COORD$indirect
INIT_$SYSINIT_$$_COORD$indirect	DQ	INIT_$SYSINIT_$$_COORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSINIT_$$_COORD$indirect
RTTI_$SYSINIT_$$_COORD$indirect	DQ	RTTI_$SYSINIT_$$_COORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSINIT_$$_SMALL_RECT$indirect
INIT_$SYSINIT_$$_SMALL_RECT$indirect	DQ	INIT_$SYSINIT_$$_SMALL_RECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSINIT_$$_SMALL_RECT$indirect
RTTI_$SYSINIT_$$_SMALL_RECT$indirect	DQ	RTTI_$SYSINIT_$$_SMALL_RECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSINIT_$$_CONSOLE_SCREEN_BUFFER_INFO$indirect
INIT_$SYSINIT_$$_CONSOLE_SCREEN_BUFFER_INFO$indirect	DQ	INIT_$SYSINIT_$$_CONSOLE_SCREEN_BUFFER_INFO

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSINIT_$$_CONSOLE_SCREEN_BUFFER_INFO$indirect
RTTI_$SYSINIT_$$_CONSOLE_SCREEN_BUFFER_INFO$indirect	DQ	RTTI_$SYSINIT_$$_CONSOLE_SCREEN_BUFFER_INFO

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
..@c78:
	DD	..@c80-..@c79
..@c79:
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
..@c80:
	DD	..@c82-..@c81
..@c81:
	DQ	..@c1,..@c2-..@c1
	ALIGN 4,DB 0
..@c82:
	DD	..@c84-..@c83
..@c83:
	DQ	..@c3,..@c4-..@c3
	DB	4
	DD	..@c5-..@c3
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c84:
	DD	..@c86-..@c85
..@c85:
	DQ	..@c6,..@c7-..@c6
	DB	4
	DD	..@c8-..@c6
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c86:
	DD	..@c88-..@c87
..@c87:
	DQ	..@c9,..@c10-..@c9
	DB	4
	DD	..@c11-..@c9
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c88:
	DD	..@c90-..@c89
..@c89:
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
..@c90:
	DD	..@c92-..@c91
..@c91:
	DQ	..@c17,..@c18-..@c17
	DB	4
	DD	..@c19-..@c17
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c92:
	DD	..@c94-..@c93
..@c93:
	DQ	..@c20,..@c21-..@c20
	DB	4
	DD	..@c22-..@c20
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c94:
	DD	..@c96-..@c95
..@c95:
	DQ	..@c23,..@c24-..@c23
	DB	4
	DD	..@c25-..@c23
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c96:
	DD	..@c98-..@c97
..@c97:
	DQ	..@c26,..@c27-..@c26
	DB	4
	DD	..@c28-..@c26
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c98:
	DD	..@c100-..@c99
..@c99:
	DQ	..@c29,..@c30-..@c29
	DB	4
	DD	..@c31-..@c29
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c32-..@c31
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c33-..@c32
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c100:
	DD	..@c102-..@c101
..@c101:
	DQ	..@c34,..@c35-..@c34
	DB	4
	DD	..@c36-..@c34
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c37-..@c36
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c38-..@c37
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c102:
	DD	..@c104-..@c103
..@c103:
	DQ	..@c39,..@c40-..@c39
	DB	4
	DD	..@c41-..@c39
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c104:
	DD	..@c106-..@c105
..@c105:
	DQ	..@c42,..@c43-..@c42
	DB	4
	DD	..@c44-..@c42
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c106:
	DD	..@c108-..@c107
..@c107:
	DQ	..@c45,..@c46-..@c45
	DB	4
	DD	..@c47-..@c45
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c108:
	DD	..@c110-..@c109
..@c109:
	DQ	..@c48,..@c49-..@c48
	DB	4
	DD	..@c50-..@c48
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c110:
	DD	..@c112-..@c111
..@c111:
	DQ	..@c51,..@c52-..@c51
	DB	4
	DD	..@c53-..@c51
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c112:
	DD	..@c114-..@c113
..@c113:
	DQ	..@c54,..@c55-..@c54
	DB	4
	DD	..@c56-..@c54
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c114:
	DD	..@c116-..@c115
..@c115:
	DQ	..@c57,..@c58-..@c57
	DB	4
	DD	..@c59-..@c57
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c116:
	DD	..@c118-..@c117
..@c117:
	DQ	..@c60,..@c61-..@c60
	DB	4
	DD	..@c62-..@c60
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c63-..@c62
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c64-..@c63
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c118:
	DD	..@c120-..@c119
..@c119:
	DQ	..@c65,..@c66-..@c65
	DB	4
	DD	..@c67-..@c65
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c120:
	DD	..@c122-..@c121
..@c121:
	DQ	..@c68,..@c69-..@c68
	DB	4
	DD	..@c70-..@c68
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c71-..@c70
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c72-..@c71
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c122:
	DD	..@c124-..@c123
..@c123:
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
..@c124:
; End asmlist al_dwarf_frame

