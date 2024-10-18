BITS 64
default rel
CPU x64

EXTERN	_$dll$user32$MessageBoxA
EXTERN	_$dll$kernel32$ExitProcess
EXTERN	fpc_ansistr_assign
EXTERN	fpc_reraise
EXTERN	FPC_DONEEXCEPTION
EXTERN	fpc_ansistr_incr_ref
EXTERN	fpc_ansistr_decr_ref
EXTERN	FPC_EMPTYCHAR
EXTERN	_$dll$kernel32$WriteConsoleA
EXTERN	VMT_$SYSTEM_$$_TOBJECT$indirect
EXTERN	SYSTEM$_$TOBJECT_$__$$_DESTROY
EXTERN	FPC_EMPTYMETHOD
EXTERN	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
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
		xor	r9d,r9d
		lea	r8,[_$SYSINIT$_Ld3]
		lea	rdx,[_$SYSINIT$_Ld8]
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
		call	[rax+136]
		jmp	..@j30
..@j29:
		cmp	qword [rbp-8],0
		je	..@j39
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSINIT$_$DOS_CLASS_$__$$_DESTROY
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
		call	[rax+144]
..@j44:
		xor	r9d,r9d
		lea	r8,[_$SYSINIT$_Ld3]
		lea	rdx,[_$SYSINIT$_Ld9]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		test	rbx,rbx
		je	..@j46
		test	rsi,rsi
		je	..@j46
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+112]
..@j46:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c18:

SECTION .text
SYSINIT$_$DOS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$0000002E:
..@c20:
		push	rbp
..@c22:
..@c23:
		mov	rbp,rcx
..@c24:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c21:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD
SYSINIT$_$DOS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD:
..@c25:
		push	rbp
..@c27:
..@c28:
		mov	rbp,rsp
..@c29:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	rbx,rcx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
		mov	rcx,qword [rbp-16]
		call	fpc_ansistr_incr_ref
..@j56:
		nop
..@j52:
		mov	r8,qword [rbp-16]
		mov	rdx,qword [rbp-8]
		mov	rcx,rbx
		call	SYSINIT$_$DOS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD
		xor	ebx,ebx
..@j54:
		nop
..@j53:
		mov	rcx,rbp
		call	SYSINIT$_$DOS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$0000002E
		mov	eax,ebx
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c26:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_WRITE$ANSISTRING
SYSINIT$_$DOS_CLASS_$__$$_WRITE$ANSISTRING:
..@c30:
		push	rbx
		push	rsi
		lea	rsp,[rsp-56]
..@c32:
		mov	rbx,rcx
		mov	rsi,rdx
		mov	qword [rsp+32],0
		mov	rcx,rsi
		call	SYSINIT_$$_STRINGLENGTH$ANSISTRING$$LONGDWORD
		mov	r8d,eax
		mov	ecx,dword [rbx+8]
		mov	rdx,rsi
		test	rsi,rsi
		jne	..@j59
		lea	rdx,[FPC_EMPTYCHAR]
..@j59:
		lea	r9,[rsp+40]
		call	_$dll$kernel32$WriteConsoleA
		nop
		lea	rsp,[rsp+56]
		pop	rsi
		pop	rbx
		ret
..@c31:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_WRITELN$ANSISTRING
SYSINIT$_$DOS_CLASS_$__$$_WRITELN$ANSISTRING:
..@c33:
		push	rbx
		push	rsi
		lea	rsp,[rsp-56]
..@c35:
		mov	rbx,rcx
		mov	rsi,rdx
		mov	qword [rsp+32],0
		mov	rcx,rsi
		call	SYSINIT_$$_STRINGLENGTH$ANSISTRING$$LONGDWORD
		mov	r8d,eax
		mov	ecx,dword [rbx+8]
		mov	rdx,rsi
		test	rsi,rsi
		jne	..@j62
		lea	rdx,[FPC_EMPTYCHAR]
..@j62:
		lea	r9,[rsp+40]
		call	_$dll$kernel32$WriteConsoleA
		nop
		lea	rsp,[rsp+56]
		pop	rsi
		pop	rbx
		ret
..@c34:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_SET_STDIN$LONGWORD
SYSINIT$_$DOS_CLASS_$__$$_SET_STDIN$LONGWORD:
..@c36:
		lea	rsp,[rsp-40]
..@c38:
		call	SYSINIT$_$DOS_CLASS_$__$$_SETCONSOLEHANDLE$LONGWORD
		nop
		lea	rsp,[rsp+40]
		ret
..@c37:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_SET_STDOUT$LONGWORD
SYSINIT$_$DOS_CLASS_$__$$_SET_STDOUT$LONGWORD:
..@c39:
		lea	rsp,[rsp-40]
..@c41:
		call	SYSINIT$_$DOS_CLASS_$__$$_SETCONSOLEHANDLE$LONGWORD
		nop
		lea	rsp,[rsp+40]
		ret
..@c40:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_SET_STDERR$LONGWORD
SYSINIT$_$DOS_CLASS_$__$$_SET_STDERR$LONGWORD:
..@c42:
		lea	rsp,[rsp-40]
..@c44:
		call	SYSINIT$_$DOS_CLASS_$__$$_SETCONSOLEHANDLE$LONGWORD
		nop
		lea	rsp,[rsp+40]
		ret
..@c43:

SECTION .text
	GLOBAL SYSINIT$_$DOS_CLASS_$__$$_SETCONSOLEHANDLE$LONGWORD
SYSINIT$_$DOS_CLASS_$__$$_SETCONSOLEHANDLE$LONGWORD:
..@c45:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c47:
		mov	rbx,rcx
		mov	esi,edx
		mov	eax,esi
		sub	eax,-12
		cmp	eax,2
		ja	..@j72
		and	eax,eax
		lea	rdx,[..@d10]
		movsxd	rax,dword [rdx+rax*4]
		add	rax,rdx
		jmp	rax
..@j73:
		mov	dword [rbx+24],esi
		jmp	..@j71
..@j74:
		mov	dword [rbx+28],esi
		jmp	..@j71
..@j75:
		mov	dword [rbx+32],esi
		jmp	..@j71
..@j72:
		mov	rcx,rbx
		lea	r8,[..@d11]
		lea	rdx,[..@d12]
		call	SYSINIT$_$DOS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD
		xor	ecx,ecx
		call	_$dll$kernel32$ExitProcess
..@j71:
		mov	dword [rbx+8],esi
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c46:

SECTION .data
	ALIGN 4,DB 0
..@d10:
	DD	..@j75-..@d10,..@j74-..@d10,..@j73-..@d10

SECTION .text
	GLOBAL SYSINIT_$$_INITWINDOWS
SYSINIT_$$_INITWINDOWS:
..@c48:
		lea	rsp,[rsp-40]
..@c50:
		mov	eax,1
		lea	rcx,[VMT_$SYSINIT_$$_WINDOWS_CLASS]
		mov	rdx,rax
		call	SYSINIT$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS
		mov	qword [U_$SYSINIT_$$_WINDOWS],rax
		nop
		lea	rsp,[rsp+40]
		ret
..@c49:

SECTION .text
	GLOBAL SYSINIT$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS
SYSINIT$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS:
..@c51:
		push	rbp
..@c53:
..@c54:
		mov	rbp,rsp
..@c55:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j81
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-16],rax
..@j81:
		cmp	qword [rbp-16],0
		je	..@j78
..@j89:
		nop
..@j88:
		mov	qword [rbp-24],-1
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j86
		cmp	qword [rbp-8],0
		je	..@j86
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+136]
		jmp	..@j86
..@j85:
		cmp	qword [rbp-8],0
		je	..@j95
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSINIT$_$WINDOWS_CLASS_$__$$_DESTROY
..@j95:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j96:
		nop
..@j86:
..@j78:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c52:

SECTION .text
	GLOBAL SYSINIT$_$WINDOWS_CLASS_$__$$_DESTROY
SYSINIT$_$WINDOWS_CLASS_$__$$_DESTROY:
..@c56:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c58:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j100
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+144]
..@j100:
		test	rbx,rbx
		je	..@j102
		test	rsi,rsi
		je	..@j102
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+112]
..@j102:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c57:

SECTION .text
SYSINIT$_$WINDOWS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$00000030:
..@c59:
		push	rbp
..@c61:
..@c62:
		mov	rbp,rcx
..@c63:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c60:

SECTION .text
	GLOBAL SYSINIT$_$WINDOWS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD
SYSINIT$_$WINDOWS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD:
..@c64:
		push	rbp
..@c66:
..@c67:
		mov	rbp,rsp
..@c68:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
		mov	rcx,qword [rbp-16]
		call	fpc_ansistr_incr_ref
..@j112:
		nop
..@j108:
		mov	r8,qword [rbp-16]
		test	r8,r8
		jne	..@j113
		lea	r8,[FPC_EMPTYCHAR]
..@j113:
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		jne	..@j114
		lea	rdx,[FPC_EMPTYCHAR]
..@j114:
		xor	r9d,r9d
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		xor	ebx,ebx
..@j110:
		nop
..@j109:
		mov	rcx,rbp
		call	SYSINIT$_$WINDOWS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$00000030
		mov	eax,ebx
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c65:
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
VMT_$SYSINIT_$$_DOS_CLASS	DQ	40,-40,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d13,0,0,0,RTTI_$SYSINIT_$$_DOS_CLASS
	DQ	INIT_$SYSINIT_$$_DOS_CLASS,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,FPC_EMPTYMETHOD
	DQ	FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSINIT_$$_WINDOWS_CLASS
VMT_$SYSINIT_$$_WINDOWS_CLASS	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d14,0,0,0,RTTI_$SYSINIT_$$_WINDOWS_CLASS
	DQ	0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD,0
; End asmlist al_globals
; Begin asmlist al_const

SECTION .data
	ALIGN 8,DB 0
..@d13:
	DB	9
		DB	"DOS_Class"

SECTION .data
	ALIGN 8,DB 0
..@d14:
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
		DB	"after create",0

SECTION .rodata
_$SYSINIT$_Ld6:
		DB	"before class create",0

SECTION .rodata
..@d7$strlab:
	DW	0,1
	DD	0
	DQ	-1,2
..@d7:
		DB	13,10,0

SECTION .rodata
_$SYSINIT$_Ld8:
		DB	"after class create",0

SECTION .rodata
_$SYSINIT$_Ld9:
		DB	"before destroy",0

SECTION .rodata
..@d11$strlab:
	DW	0,1
	DD	0
	DQ	-1,5
..@d11:
		DB	"Error",0

SECTION .rodata
..@d12$strlab:
	DW	0,1
	DD	0
	DQ	-1,29
..@d12:
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
..@c69:
	DD	..@c71-..@c70
..@c70:
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
..@c71:
	DD	..@c73-..@c72
..@c72:
	DQ	..@c1,..@c2-..@c1
	ALIGN 4,DB 0
..@c73:
	DD	..@c75-..@c74
..@c74:
	DQ	..@c3,..@c4-..@c3
	DB	4
	DD	..@c5-..@c3
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c75:
	DD	..@c77-..@c76
..@c76:
	DQ	..@c6,..@c7-..@c6
	DB	4
	DD	..@c8-..@c6
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c77:
	DD	..@c79-..@c78
..@c78:
	DQ	..@c9,..@c10-..@c9
	DB	4
	DD	..@c11-..@c9
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c79:
	DD	..@c81-..@c80
..@c80:
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
..@c81:
	DD	..@c83-..@c82
..@c82:
	DQ	..@c17,..@c18-..@c17
	DB	4
	DD	..@c19-..@c17
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c83:
	DD	..@c85-..@c84
..@c84:
	DQ	..@c20,..@c21-..@c20
	DB	4
	DD	..@c22-..@c20
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c23-..@c22
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c24-..@c23
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c85:
	DD	..@c87-..@c86
..@c86:
	DQ	..@c25,..@c26-..@c25
	DB	4
	DD	..@c27-..@c25
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c28-..@c27
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c29-..@c28
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c87:
	DD	..@c89-..@c88
..@c88:
	DQ	..@c30,..@c31-..@c30
	DB	4
	DD	..@c32-..@c30
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c89:
	DD	..@c91-..@c90
..@c90:
	DQ	..@c33,..@c34-..@c33
	DB	4
	DD	..@c35-..@c33
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c91:
	DD	..@c93-..@c92
..@c92:
	DQ	..@c36,..@c37-..@c36
	DB	4
	DD	..@c38-..@c36
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c93:
	DD	..@c95-..@c94
..@c94:
	DQ	..@c39,..@c40-..@c39
	DB	4
	DD	..@c41-..@c39
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c95:
	DD	..@c97-..@c96
..@c96:
	DQ	..@c42,..@c43-..@c42
	DB	4
	DD	..@c44-..@c42
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c97:
	DD	..@c99-..@c98
..@c98:
	DQ	..@c45,..@c46-..@c45
	DB	4
	DD	..@c47-..@c45
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c99:
	DD	..@c101-..@c100
..@c100:
	DQ	..@c48,..@c49-..@c48
	DB	4
	DD	..@c50-..@c48
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c101:
	DD	..@c103-..@c102
..@c102:
	DQ	..@c51,..@c52-..@c51
	DB	4
	DD	..@c53-..@c51
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c54-..@c53
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c55-..@c54
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c103:
	DD	..@c105-..@c104
..@c104:
	DQ	..@c56,..@c57-..@c56
	DB	4
	DD	..@c58-..@c56
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c105:
	DD	..@c107-..@c106
..@c106:
	DQ	..@c59,..@c60-..@c59
	DB	4
	DD	..@c61-..@c59
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c62-..@c61
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c63-..@c62
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c107:
	DD	..@c109-..@c108
..@c108:
	DQ	..@c64,..@c65-..@c64
	DB	4
	DD	..@c66-..@c64
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c67-..@c66
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c68-..@c67
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c109:
; End asmlist al_dwarf_frame

