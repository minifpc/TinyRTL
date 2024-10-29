BITS 64
default rel
CPU x64

EXTERN	PASCALMAIN
EXTERN	_$dll$user32$MessageBoxA
EXTERN	_$dll$kernel32$GetConsoleWindow
EXTERN	_$dll$kernel32$ExitProcess
EXTERN	_$dll$msvcrt$printf
EXTERN	INITFINAL
EXTERN	_$dll$msvcrt$memset
EXTERN	_$dll$kernel32$lstrlenA
EXTERN	_$dll$ucrtbase$malloc
EXTERN	_$dll$ucrtbase$strcpy
EXTERN	_$dll$ucrtbase$strcat
EXTERN	_$dll$msvcrt$strcmp
EXTERN	_$dll$msvcrt$memmove
EXTERN	_$dll$kernel32$VirtualAlloc
EXTERN	_$dll$kernel32$LockFile
EXTERN	_$dll$kernel32$WriteFile
EXTERN	_$dll$shlwapi$PathFileExistsA
EXTERN	_$dll$kernel32$GetLastError
EXTERN	_$dll$kernel32$DeleteFileA
EXTERN	_$dll$kernel32$CreateFileA
EXTERN	_$dll$kernel32$SetFilePointer
EXTERN	_$dll$kernel32$SetConsoleOutputCP
EXTERN	_$dll$kernel32$SetConsoleCP
EXTERN	_$dll$msvcrt$scanf
EXTERN	_$dll$kernel32$ReadConsoleA
EXTERN	_$dll$kernel32$GetStdHandle
EXTERN	_$dll$kernel32$SetStdHandle
; Begin asmlist al_procedures

SECTION .text
	GLOBAL SYSTEM_$$_DLL_ENTRY$TENTRYINFORMATION$$LONGBOOL
SYSTEM_$$_DLL_ENTRY$TENTRYINFORMATION$$LONGBOOL:
	GLOBAL _FPC_DLL_Entry
_FPC_DLL_Entry:
..@c1:
		lea	rsp,[rsp-40]
..@c3:
		call	PASCALMAIN
		mov	eax,edx
		nop
		lea	rsp,[rsp+40]
		ret
..@c2:

SECTION .text
	GLOBAL SYSTEM_$$__MAINCRTSTARTUP
SYSTEM_$$__MAINCRTSTARTUP:
	GLOBAL _mainCRTStartup
_mainCRTStartup:
..@c4:
		lea	rsp,[rsp-40]
..@c6:
		xor	eax,eax
		lea	r8,[_$SYSTEM$_Ld1]
		lea	rdx,[_$SYSTEM$_Ld2]
		xor	ecx,ecx
		mov	r9d,eax
		call	_$dll$user32$MessageBoxA
		call	PASCALMAIN
		call	fpc_do_exit
		nop
		lea	rsp,[rsp+40]
		ret
..@c5:

SECTION .text
	GLOBAL SYSTEM_$$__WINMAINCRTSTARTUP
SYSTEM_$$__WINMAINCRTSTARTUP:
	GLOBAL _WinMainCRTStartup
_WinMainCRTStartup:
..@c7:
		lea	rsp,[rsp-40]
..@c9:
		xor	eax,eax
		lea	r8,[_$SYSTEM$_Ld1]
		lea	rdx,[_$SYSTEM$_Ld3]
		xor	ecx,ecx
		mov	r9d,eax
		call	_$dll$user32$MessageBoxA
		call	PASCALMAIN
		call	fpc_do_exit
		nop
		lea	rsp,[rsp+40]
		ret
..@c8:

SECTION .text
	GLOBAL SYSTEM_$$__DLLMAINCRTSTARTUP$LONGINT$LONGDWORD$POINTER
SYSTEM_$$__DLLMAINCRTSTARTUP$LONGINT$LONGDWORD$POINTER:
	GLOBAL _DLLMainCRTStartup
_DLLMainCRTStartup:
..@c10:
		lea	rsp,[rsp-40]
..@c12:
		mov	eax,ecx
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld1]
		lea	rdx,[_$SYSTEM$_Ld4]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		lea	rcx,[TC_$SYSTEM_$$_SYSINITENTRYINFORMATION]
		call	SYSTEM_$$_DLL_ENTRY$TENTRYINFORMATION$$LONGBOOL
		nop
		lea	rsp,[rsp+40]
		ret
..@c11:

SECTION .text
	GLOBAL SYSTEM_$$__DLLWINMAINCRTSTARTUP$LONGINT$LONGDWORD$POINTER
SYSTEM_$$__DLLWINMAINCRTSTARTUP$LONGINT$LONGDWORD$POINTER:
	GLOBAL _DLLWinMainCRTStartup
_DLLWinMainCRTStartup:
..@c13:
		lea	rsp,[rsp-40]
..@c15:
		mov	eax,ecx
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld1]
		lea	rdx,[_$SYSTEM$_Ld5]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		lea	rcx,[TC_$SYSTEM_$$_SYSINITENTRYINFORMATION]
		call	SYSTEM_$$_DLL_ENTRY$TENTRYINFORMATION$$LONGBOOL
		nop
		lea	rsp,[rsp+40]
		ret
..@c14:

SECTION .text
	GLOBAL SYSTEM_$$_ISCONSOLEAPP$$BOOLEAN
SYSTEM_$$_ISCONSOLEAPP$$BOOLEAN:
..@c16:
		lea	rsp,[rsp-40]
..@c18:
		call	_$dll$kernel32$GetConsoleWindow
		test	eax,eax
		setne	al
		nop
		lea	rsp,[rsp+40]
		ret
..@c17:

SECTION .text
	GLOBAL fpc_do_exit
fpc_do_exit:
	GLOBAL FPC_DO_EXIT
FPC_DO_EXIT:
..@c19:
		lea	rsp,[rsp-40]
..@c21:
		call	fpc_finalizeunits
		xor	ecx,ecx
		call	_$dll$kernel32$ExitProcess
		nop
		lea	rsp,[rsp+40]
		ret
..@c20:

SECTION .text
	GLOBAL fpc_initializeunits
fpc_initializeunits:
	GLOBAL FPC_INITIALIZEUNITS
FPC_INITIALIZEUNITS:
..@c22:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c24:
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld6]
		lea	rdx,[_$SYSTEM$_Ld7]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		call	SYSTEM_$$_ISCONSOLEAPP$$BOOLEAN
		test	al,al
		je	..@j22
		lea	rcx,[_$SYSTEM$_Ld8]
		call	_$dll$msvcrt$printf
..@j22:
		cmp	qword [INITFINAL],0
		jna	..@j24
		mov	rax,qword [INITFINAL]
		lea	rbx,[rax-1]
		cmp	ebx,1
		jnae	..@j26
		xor	esi,esi
..@j27:
		inc	esi
		mov	eax,esi
		shl	rax,4
		lea	rdx,[INITFINAL]
		cmp	qword [rdx+rax],0
		je	..@j31
		mov	eax,esi
		shl	rax,4
		lea	rdx,[INITFINAL]
		mov	rdx,qword [rdx+rax]
		mov	rcx,rsp
		call	SYSTEM$_$fpc_initializeunits_$$_CALLPROCEDURE$TPROCEDURE
..@j31:
		cmp	ebx,esi
		jnbe	..@j27
..@j26:
..@j24:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c23:

SECTION .text
SYSTEM$_$fpc_initializeunits_$$_CALLPROCEDURE$TPROCEDURE:
..@c25:
		lea	rsp,[rsp-40]
..@c27:
		mov	qword [rsp+32],rcx
		mov	rax,rdx
		test	rdx,rdx
		je	..@j33
		call	rax
..@j33:
		nop
		lea	rsp,[rsp+40]
		ret
..@c26:

SECTION .text
	GLOBAL fpc_libinitializeunits
fpc_libinitializeunits:
	GLOBAL FPC_LIBINITIALIZEUNITS
FPC_LIBINITIALIZEUNITS:
..@c28:
		lea	rsp,[rsp-40]
..@c30:
		xor	eax,eax
		lea	r8,[_$SYSTEM$_Ld9]
		lea	rdx,[_$SYSTEM$_Ld10]
		xor	ecx,ecx
		mov	r9d,eax
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c29:

SECTION .text
	GLOBAL fpc_finalizeunits
fpc_finalizeunits:
	GLOBAL FPC_FINALIZEUNITS
FPC_FINALIZEUNITS:
..@c31:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c33:
		call	SYSTEM_$$_ISCONSOLEAPP$$BOOLEAN
		test	al,al
		je	..@j41
		lea	rcx,[_$SYSTEM$_Ld11]
		call	_$dll$msvcrt$printf
..@j41:
		cmp	qword [INITFINAL],0
		jna	..@j43
		mov	rax,qword [INITFINAL]
		lea	rbx,[rax-1]
		cmp	ebx,1
		jnae	..@j45
		xor	esi,esi
..@j46:
		inc	esi
		mov	eax,esi
		shl	rax,4
		lea	rdx,[INITFINAL]
		cmp	qword [rdx+rax+8],0
		je	..@j50
		mov	eax,esi
		shl	rax,4
		lea	rdx,[INITFINAL]
		mov	rdx,qword [rdx+rax+8]
		mov	rcx,rsp
		call	SYSTEM$_$fpc_finalizeunits_$$_CALLPROCEDURE$TPROCEDURE
..@j50:
		cmp	ebx,esi
		jnbe	..@j46
..@j45:
..@j43:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c32:

SECTION .text
SYSTEM$_$fpc_finalizeunits_$$_CALLPROCEDURE$TPROCEDURE:
..@c34:
		lea	rsp,[rsp-40]
..@c36:
		mov	qword [rsp+32],rcx
		mov	rax,rdx
		test	rdx,rdx
		je	..@j52
		call	rax
..@j52:
		nop
		lea	rsp,[rsp+40]
		ret
..@c35:

SECTION .text
SYSTEM_$$_SIZEBYTE$$BYTE:
..@c37:
		mov	al,1
		movzx	eax,al
		ret
..@c38:

SECTION .text
SYSTEM_$$_SIZECHAR$$BYTE:
..@c39:
		mov	al,2
		movzx	eax,al
		ret
..@c40:

SECTION .text
SYSTEM_$$_SIZEWORD$$BYTE:
..@c41:
		mov	al,4
		movzx	eax,al
		ret
..@c42:

SECTION .text
SYSTEM_$$_SIZEDWORD$$BYTE:
..@c43:
		mov	al,8
		movzx	eax,al
		ret
..@c44:

SECTION .text
SYSTEM_$$_SIZEQWORD$$BYTE:
..@c45:
		mov	al,16
		movzx	eax,al
		ret
..@c46:

SECTION .text
	GLOBAL fpc_doneexception
fpc_doneexception:
	GLOBAL FPC_DONEEXCEPTION
FPC_DONEEXCEPTION:
..@c47:
		lea	rsp,[rsp-40]
..@c49:
		xor	eax,eax
		lea	r8,[_$SYSTEM$_Ld12]
		lea	rdx,[_$SYSTEM$_Ld13]
		xor	ecx,ecx
		mov	r9d,eax
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c48:

SECTION .text
	GLOBAL SYSTEM_$$_FPC_EMPTYMETHOD
SYSTEM_$$_FPC_EMPTYMETHOD:
	GLOBAL FPC_EMPTYMETHOD
FPC_EMPTYMETHOD:
..@c50:
		ret
..@c51:

SECTION .text
	GLOBAL fpc_copy_proc
fpc_copy_proc:
..@c52:
		mov	rax,rcx
		ret
..@c53:

SECTION .text
	GLOBAL fpc_emptychar
fpc_emptychar:
	GLOBAL FPC_EMPTYCHAR
FPC_EMPTYCHAR:
..@c54:
		push	rbx
		lea	rsp,[rsp-32]
..@c56:
		mov	rbx,rcx
		mov	edx,1
		call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
		cmp	qword [rbx],0
		je	..@j72
		mov	rcx,qword [rbx]
		xor	r8d,r8d
		mov	edx,1
		call	SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR
		mov	rdx,qword [rbx]
		mov	rcx,rax
		mov	r8d,1
		call	SYSTEM_$$_MOVE$formal$formal$LONGDWORD
		jmp	..@j73
..@j72:
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld14]
		lea	rdx,[_$SYSTEM$_Ld15]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
..@j73:
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c55:

SECTION .text
	GLOBAL fpc_addref
fpc_addref:
	GLOBAL FPC_ADDREF
FPC_ADDREF:
..@c57:
		mov	rax,rcx
		ret
..@c58:

SECTION .text
	GLOBAL fpc_decref
fpc_decref:
	GLOBAL FPC_DECREF
FPC_DECREF:
..@c59:
		mov	rax,rcx
		ret
..@c60:

SECTION .text
	GLOBAL fpc_ansistr_decr_ref
fpc_ansistr_decr_ref:
	GLOBAL FPC_ANSISTR_DECR_REF
FPC_ANSISTR_DECR_REF:
..@c61:
		mov	rax,rcx
		ret
..@c62:

SECTION .text
	GLOBAL fpc_ansistr_incr_ref
fpc_ansistr_incr_ref:
	GLOBAL FPC_ANSISTR_INCR_REF
FPC_ANSISTR_INCR_REF:
..@c63:
		mov	rax,rcx
		ret
..@c64:

SECTION .text
SYSTEM$_$fpc_char_to_ansistr$CHAR$WORD$$ANSISTRING_$$_fin$00000216:
..@c65:
		push	rbp
..@c67:
..@c68:
		mov	rbp,rcx
..@c69:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c66:

SECTION .text
	GLOBAL fpc_char_to_ansistr
fpc_char_to_ansistr:
..@c70:
		push	rbp
..@c72:
..@c73:
		mov	rbp,rsp
..@c74:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-16],rsi
		mov	rbx,rcx
		mov	sil,dl
		mov	qword [rbp-8],0
..@j90:
		nop
..@j86:
		lea	rcx,[rbp-8]
		mov	edx,1
		call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
		movzx	edx,sil
		mov	rcx,qword [rbp-8]
		mov	r8d,1
		call	_$dll$msvcrt$memset
		mov	rcx,rbx
		mov	rdx,qword [rbp-8]
		call	fpc_ansistr_assign
..@j88:
		nop
..@j87:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_char_to_ansistr$CHAR$WORD$$ANSISTRING_$$_fin$00000216
		mov	rbx,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c71:

SECTION .text
	GLOBAL fpc_ansistr_unique
fpc_ansistr_unique:
..@c75:
		mov	rax,qword [rcx]
		cmp	qword [rcx],0
		je	..@j91
		mov	rax,qword [rcx]
..@j91:
		ret
..@c76:

SECTION .text
SYSTEM$_$fpc_pchar_to_ansistr$PCHAR$WORD$$ANSISTRING_$$_fin$00000217:
..@c77:
		push	rbp
..@c79:
..@c80:
		mov	rbp,rcx
..@c81:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c78:

SECTION .text
	GLOBAL fpc_pchar_to_ansistr
fpc_pchar_to_ansistr:
..@c82:
		push	rbp
..@c84:
..@c85:
		mov	rbp,rsp
..@c86:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-16],rsi
		mov	rbx,rcx
		mov	rsi,rdx
		mov	qword [rbp-8],0
..@j103:
		nop
..@j99:
		mov	rcx,rsi
		call	_$dll$kernel32$lstrlenA
		inc	eax
		mov	ecx,eax
		call	_$dll$ucrtbase$malloc
		mov	rdx,rax
		lea	rcx,[rbp-8]
		call	fpc_ansistr_assign
		mov	rcx,qword [rbp-8]
		test	rcx,rcx
		jne	..@j104
		lea	rcx,[FPC_EMPTYCHAR]
..@j104:
		mov	rdx,rsi
		call	_$dll$ucrtbase$strcpy
		mov	rcx,rbx
		mov	rdx,qword [rbp-8]
		call	fpc_ansistr_assign
..@j101:
		nop
..@j100:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_pchar_to_ansistr$PCHAR$WORD$$ANSISTRING_$$_fin$00000217
		mov	rbx,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c83:

SECTION .text
	GLOBAL fpc_ansistr_assign
fpc_ansistr_assign:
	GLOBAL FPC_ANSISTR_ASSIGN
FPC_ANSISTR_ASSIGN:
..@c87:
		push	rbx
		lea	rsp,[rsp-48]
..@c89:
		mov	rbx,rcx
		mov	qword [rsp+32],rdx
		lea	rcx,[rsp+32]
		test	rcx,rcx
		jne	..@j107
		lea	rcx,[FPC_EMPTYCHAR]
..@j107:
		call	_$dll$kernel32$lstrlenA
		lea	ecx,[eax+1]
		call	_$dll$ucrtbase$malloc
		mov	qword [rbx],rax
		mov	rcx,rbx
		test	rbx,rbx
		jne	..@j108
		lea	rcx,[FPC_EMPTYCHAR]
..@j108:
		lea	rdx,[rsp+32]
		test	rdx,rdx
		jne	..@j109
		lea	rdx,[FPC_EMPTYCHAR]
..@j109:
		call	_$dll$ucrtbase$strcpy
		nop
		lea	rsp,[rsp+48]
		pop	rbx
		ret
..@c88:

SECTION .text
	GLOBAL fpc_ansistr_concat
fpc_ansistr_concat:
..@c90:
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-56]
..@c92:
		mov	rbx,rcx
		mov	rsi,rdx
		mov	rdi,r8
		mov	rcx,rsi
		test	rsi,rsi
		jne	..@j112
		lea	rcx,[FPC_EMPTYCHAR]
..@j112:
		call	_$dll$kernel32$lstrlenA
		mov	r12d,eax
		mov	rcx,rdi
		test	rdi,rdi
		jne	..@j113
		lea	rcx,[FPC_EMPTYCHAR]
..@j113:
		call	_$dll$kernel32$lstrlenA
		add	eax,r12d
		lea	ecx,[eax+1]
		call	_$dll$ucrtbase$malloc
		mov	rdx,rax
		mov	rcx,rbx
		call	fpc_ansistr_assign
		mov	rdx,rsi
		test	rsi,rsi
		jne	..@j114
		lea	rdx,[FPC_EMPTYCHAR]
..@j114:
		mov	rcx,rsi
		call	_$dll$ucrtbase$strcpy
		mov	rdx,rdi
		test	rdi,rdi
		jne	..@j115
		lea	rdx,[FPC_EMPTYCHAR]
..@j115:
		mov	rcx,rsi
		call	_$dll$ucrtbase$strcat
		mov	rcx,qword [rbx]
		test	rcx,rcx
		jne	..@j116
		lea	rcx,[FPC_EMPTYCHAR]
..@j116:
		mov	rdx,rsi
		call	_$dll$ucrtbase$strcpy
		nop
		lea	rsp,[rsp+56]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c91:

SECTION .text
	GLOBAL fpc_ansistr_concat_multi
fpc_ansistr_concat_multi:
..@c93:
		push	rbp
..@c95:
..@c96:
		mov	rbp,rsp
..@c97:
		mov	rax,rcx
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c94:

SECTION .text
	GLOBAL fpc_ansistr_compare_equal
fpc_ansistr_compare_equal:
	GLOBAL FPC_ANSISTR_COMPARE_EQUAL
FPC_ANSISTR_COMPARE_EQUAL:
..@c98:
		lea	rsp,[rsp-40]
..@c100:
		call	_$dll$msvcrt$strcmp
		test	eax,eax
		jne	..@j122
		mov	eax,1
		jmp	..@j123
..@j122:
		xor	eax,eax
..@j123:
		nop
		lea	rsp,[rsp+40]
		ret
..@c99:

SECTION .text
	GLOBAL SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT
SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT:
..@c101:
		xor	eax,eax
		ret
..@c102:

SECTION .text
	GLOBAL fpc_get_input
fpc_get_input:
..@c103:
		xor	eax,eax
		ret
..@c104:

SECTION .text
	GLOBAL fpc_readln_end
fpc_readln_end:
	GLOBAL FPC_READLN_END
FPC_READLN_END:
..@c105:
		mov	rax,rcx
		ret
..@c106:

SECTION .text
	GLOBAL fpc_iocheck
fpc_iocheck:
..@c107:
		ret
..@c108:

SECTION .text
	GLOBAL fpc_help_constructor
fpc_help_constructor:
..@c109:
		xor	eax,eax
		ret
..@c110:

SECTION .text
	GLOBAL fpc_help_destructor
fpc_help_destructor:
..@c111:
		mov	rax,rcx
		ret
..@c112:

SECTION .text
	GLOBAL fpc_help_fail
fpc_help_fail:
..@c113:
		mov	rax,rcx
		ret
..@c114:

SECTION .text
	GLOBAL fpc_reraise
fpc_reraise:
..@c115:
		ret
..@c116:

SECTION .text
	GLOBAL fpc_finalize
fpc_finalize:
..@c117:
		mov	rax,rcx
		ret
..@c118:

SECTION .text
	GLOBAL SYSTEM_$$_MOVE$formal$formal$LONGDWORD
SYSTEM_$$_MOVE$formal$formal$LONGDWORD:
	GLOBAL FPC_move
FPC_move:
..@c119:
		lea	rsp,[rsp-40]
..@c121:
		mov	rax,rcx
		mov	rcx,rdx
		mov	rdx,rax
		call	_$dll$msvcrt$memmove
		nop
		lea	rsp,[rsp+40]
		ret
..@c120:

SECTION .text
	GLOBAL SYSTEM_$$_SHOWMESSAGE$PCHAR
SYSTEM_$$_SHOWMESSAGE$PCHAR:
..@c122:
		lea	rsp,[rsp-40]
..@c124:
		mov	rdx,rcx
		mov	r9d,64
		lea	r8,[_$SYSTEM$_Ld16]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c123:

SECTION .text
	GLOBAL SYSTEM_$$_SHOWWARN$PCHAR
SYSTEM_$$_SHOWWARN$PCHAR:
..@c125:
		lea	rsp,[rsp-40]
..@c127:
		mov	rdx,rcx
		mov	r9d,48
		lea	r8,[_$SYSTEM$_Ld17]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c126:

SECTION .text
	GLOBAL SYSTEM_$$_SHOWERROR$PCHAR
SYSTEM_$$_SHOWERROR$PCHAR:
..@c128:
		lea	rsp,[rsp-40]
..@c130:
		mov	rdx,rcx
		mov	r9d,48
		lea	r8,[_$SYSTEM$_Ld14]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c129:

SECTION .text
	GLOBAL SYSTEM_$$_SHOWINFO$PCHAR
SYSTEM_$$_SHOWINFO$PCHAR:
..@c131:
		lea	rsp,[rsp-40]
..@c133:
		call	SYSTEM_$$_SHOWMESSAGE$PCHAR
		nop
		lea	rsp,[rsp+40]
		ret
..@c132:

SECTION .text
	GLOBAL SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR
SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR:
..@c134:
		lea	rax,[rdx-1]
		mov	rdx,-1
..@j154:
		inc	rdx
		mov	byte [rcx],r8b
		inc	rcx
		cmp	rax,rdx
		jnbe	..@j154
		ret
..@c135:

SECTION .text
	GLOBAL SYSTEM_$$_FREEMEM$POINTER
SYSTEM_$$_FREEMEM$POINTER:
..@c136:
		lea	rsp,[rsp-40]
..@c138:
		mov	rax,rcx
		cmp	qword [rax],0
		je	..@j160
		mov	rcx,qword [rax]
		mov	r8d,32768
		xor	edx,edx
		call	_$dll$kernel32$VirtualAlloc
..@j160:
		nop
		lea	rsp,[rsp+40]
		ret
..@c137:

SECTION .text
	GLOBAL SYSTEM_$$_GETMEM$POINTER$LONGDWORD
SYSTEM_$$_GETMEM$POINTER$LONGDWORD:
..@c139:
		push	rbx
		lea	rsp,[rsp-32]
..@c141:
		mov	rbx,rcx
		mov	r9d,4
		mov	r8d,12288
		xor	ecx,ecx
		call	_$dll$kernel32$VirtualAlloc
		mov	qword [rbx],rax
		test	rax,rax
		jne	..@j164
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld14]
		lea	rdx,[_$SYSTEM$_Ld18]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
..@j164:
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c140:

SECTION .text
	GLOBAL SYSTEM_$$_LOCKFILE$POINTER$$BOOLEAN
SYSTEM_$$_LOCKFILE$POINTER$$BOOLEAN:
..@c142:
		push	rbx
		lea	rsp,[rsp-48]
..@c144:
		xor	bl,bl
		mov	dword [rsp+32],0
		xor	r8d,r8d
		xor	edx,edx
		call	_$dll$kernel32$LockFile
		test	al,al
		jne	..@j168
		lea	rcx,[_$SYSTEM$_Ld19]
		call	SYSTEM_$$_SHOWERROR$PCHAR
		jmp	..@j165
..@j168:
		mov	bl,1
..@j165:
		mov	al,bl
		nop
		lea	rsp,[rsp+48]
		pop	rbx
		ret
..@c143:

SECTION .text
	GLOBAL SYSTEM_$$_WRITEFILE$LONGWORD$PCHAR$$QWORD
SYSTEM_$$_WRITEFILE$LONGWORD$PCHAR$$QWORD:
..@c145:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c147:
		mov	ebx,ecx
		mov	rsi,rdx
		mov	qword [rsp+32],0
		mov	rcx,rsi
		call	_$dll$kernel32$lstrlenA
		mov	r8d,eax
		mov	rdx,rsi
		xor	r9,r9
		mov	ecx,ebx
		call	_$dll$kernel32$WriteFile
		mov	eax,1
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c146:

SECTION .text
	GLOBAL SYSTEM_$$_WRITEFILE$LONGWORD$POINTER$$QWORD
SYSTEM_$$_WRITEFILE$LONGWORD$POINTER$$QWORD:
..@c148:
		lea	rsp,[rsp-56]
..@c150:
		mov	qword [rsp+40],rdx
		mov	qword [rsp+32],0
		xor	r9,r9
		lea	rdx,[rsp+40]
		mov	r8d,8
		call	_$dll$kernel32$WriteFile
		mov	eax,1
		nop
		lea	rsp,[rsp+56]
		ret
..@c149:

SECTION .text
	GLOBAL SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER
SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER:
..@c151:
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		lea	rsp,[rsp-64]
..@c153:
		mov	rbx,rcx
		mov	sil,dl
		lea	rcx,[_$SYSTEM$_Ld20]
		call	SYSTEM_$$_SHOWINFO$PCHAR
		mov	rcx,rbx
		call	_$dll$shlwapi$PathFileExistsA
		mov	rdi,rax
		cmp	edi,1
		jne	..@j176
		test	sil,sil
		jne	..@j178
		xor	r12d,r12d
		lea	rcx,[rsp+56]
		mov	edx,255
		call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
		mov	rcx,qword [rsp+56]
		lea	rdx,[_$SYSTEM$_Ld21]
		call	_$dll$ucrtbase$strcpy
		mov	rdx,rbx
		mov	rcx,qword [rsp+56]
		call	_$dll$ucrtbase$strcat
		mov	rcx,qword [rsp+56]
		lea	rdx,[_$SYSTEM$_Ld22]
		call	_$dll$ucrtbase$strcat
		mov	rcx,qword [rsp+56]
		lea	rdx,[_$SYSTEM$_Ld23]
		call	_$dll$ucrtbase$strcat
		mov	rdx,qword [rsp+56]
		mov	r9d,4
		lea	r8,[_$SYSTEM$_Ld16]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	edi,eax
		cmp	edi,6
		jne	..@j180
		mov	rcx,rbx
		call	SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN
		mov	rcx,rbx
		mov	dl,1
		call	SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER
		mov	r13,rax
		call	_$dll$kernel32$GetLastError
		mov	r12d,eax
..@j180:
		lea	rcx,[rsp+56]
		call	SYSTEM_$$_FREEMEM$POINTER
		test	r12d,r12d
		je	..@j188
		lea	rcx,[_$SYSTEM$_Ld24]
		call	SYSTEM_$$_SHOWERROR$PCHAR
		jmp	..@j173
		jmp	..@j188
..@j178:
		test	sil,sil
		je	..@j188
		mov	rcx,rbx
		call	_$dll$kernel32$DeleteFileA
		mov	dl,al
		test	dil,dil
		jne	..@j187
		lea	rcx,[_$SYSTEM$_Ld25]
		call	SYSTEM_$$_SHOWMESSAGE$PCHAR
..@j187:
		mov	qword [rsp+48],0
		mov	dword [rsp+40],128
		mov	dword [rsp+32],1
		mov	rcx,rbx
		xor	r9,r9
		mov	r8d,3
		mov	edx,1073741824
		call	_$dll$kernel32$CreateFileA
		mov	r13,rax
		mov	rsi,r13
		jmp	..@j173
		jmp	..@j188
..@j176:
		mov	qword [rsp+48],0
		mov	dword [rsp+40],128
		mov	dword [rsp+32],1
		mov	rcx,rbx
		xor	r9,r9
		mov	r8d,3
		mov	edx,1073741824
		call	_$dll$kernel32$CreateFileA
		mov	r13,rax
		call	_$dll$kernel32$GetLastError
		test	eax,eax
		je	..@j190
		lea	rcx,[_$SYSTEM$_Ld24]
		call	SYSTEM_$$_SHOWERROR$PCHAR
		jmp	..@j173
..@j190:
..@j188:
		mov	eax,r13d
		cmp	eax,-1
		jne	..@j192
		lea	rcx,[rsp+56]
		mov	edx,255
		call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
		mov	rcx,qword [rsp+56]
		lea	rdx,[_$SYSTEM$_Ld21]
		call	_$dll$ucrtbase$strcpy
		mov	rdx,rbx
		mov	rcx,qword [rsp+56]
		call	_$dll$ucrtbase$strcat
		mov	rcx,qword [rsp+56]
		lea	rdx,[_$SYSTEM$_Ld26]
		call	_$dll$ucrtbase$strcat
		mov	rcx,qword [rsp+56]
		call	SYSTEM_$$_SHOWERROR$PCHAR
		lea	rcx,[rsp+56]
		call	SYSTEM_$$_FREEMEM$POINTER
		xor	esi,esi
		jmp	..@j173
..@j192:
		mov	rsi,r13
..@j173:
		mov	rax,rsi
		nop
		lea	rsp,[rsp+64]
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c152:

SECTION .text
	GLOBAL SYSTEM_$$_FILECREATE$RAWBYTESTRING$BOOLEAN$$POINTER
SYSTEM_$$_FILECREATE$RAWBYTESTRING$BOOLEAN$$POINTER:
..@c154:
		lea	rsp,[rsp-40]
..@c156:
		test	rcx,rcx
		jne	..@j195
		lea	rcx,[FPC_EMPTYCHAR]
..@j195:
		call	SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER
		nop
		lea	rsp,[rsp+40]
		ret
..@c155:

SECTION .text
	GLOBAL SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN
SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN:
..@c157:
		lea	rsp,[rsp-40]
..@c159:
		call	_$dll$kernel32$DeleteFileA
		nop
		lea	rsp,[rsp+40]
		ret
..@c158:

SECTION .text
	GLOBAL SYSTEM_$$_FILEDELETE$RAWBYTESTRING$$BOOLEAN
SYSTEM_$$_FILEDELETE$RAWBYTESTRING$$BOOLEAN:
..@c160:
		lea	rsp,[rsp-40]
..@c162:
		test	rcx,rcx
		jne	..@j200
		lea	rcx,[FPC_EMPTYCHAR]
..@j200:
		call	SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN
		nop
		lea	rsp,[rsp+40]
		ret
..@c161:

SECTION .text
	GLOBAL SYSTEM_$$_FILESEEK$LONGWORD$LONGDWORD$LONGDWORD$$LONGDWORD
SYSTEM_$$_FILESEEK$LONGWORD$LONGDWORD$LONGDWORD$$LONGDWORD:
..@c163:
		push	rbx
		lea	rsp,[rsp-32]
..@c165:
		mov	r9d,r8d
		xor	r8,r8
		call	_$dll$kernel32$SetFilePointer
		mov	ebx,eax
		call	_$dll$kernel32$GetLastError
		cmp	ebx,-1
		jne	..@j204
		test	eax,eax
		je	..@j204
		lea	rcx,[_$SYSTEM$_Ld27]
		call	SYSTEM_$$_SHOWERROR$PCHAR
		mov	eax,-1
		jmp	..@j201
..@j204:
		mov	eax,ebx
..@j201:
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c164:

SECTION .text
	GLOBAL SYSTEM_$$_FILESEEK$POINTER$LONGDWORD$LONGDWORD$$LONGDWORD
SYSTEM_$$_FILESEEK$POINTER$LONGDWORD$LONGDWORD$$LONGDWORD:
..@c166:
		lea	rsp,[rsp-40]
..@c168:
		call	SYSTEM_$$_FILESEEK$LONGWORD$LONGDWORD$LONGDWORD$$LONGDWORD
		mov	eax,edx
		nop
		lea	rsp,[rsp+40]
		ret
..@c167:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT:
..@c169:
		push	rbp
..@c171:
..@c172:
		mov	rbp,rsp
..@c173:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j211
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j211:
		cmp	qword [rbp-16],0
		je	..@j208
..@j219:
		nop
..@j218:
		mov	qword [rbp-24],-1
		mov	rdx,qword [rbp-16]
		lea	rcx,[VMT_$SYSTEM_$$_TOBJECT]
		lea	rax,[VMT_$SYSTEM_$$_TOBJECT]
		call	[rax+120]
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j216
		cmp	qword [rbp-8],0
		je	..@j216
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j216
..@j215:
		cmp	qword [rbp-8],0
		je	..@j225
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+96]
..@j225:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j226:
		nop
..@j216:
..@j208:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c170:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_DESTROY
SYSTEM$_$TOBJECT_$__$$_DESTROY:
..@c174:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c176:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j230
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j230:
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
		test	rbx,rbx
		je	..@j232
		test	rsi,rsi
		je	..@j232
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j232:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c175:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION:
..@c177:
		mov	rax,rcx
		ret
..@c178:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION:
..@c179:
		mov	rax,rcx
		ret
..@c180:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING:
..@c181:
		lea	rsp,[rsp-40]
..@c183:
		mov	rax,rcx
		mov	rcx,rdx
		lea	rdx,[..@d28]
		call	fpc_ansistr_assign
		nop
		lea	rsp,[rsp+40]
		ret
..@c182:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_GETINSTANCE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_GETINSTANCE$$TOBJECT:
..@c184:
		push	rbx
		lea	rsp,[rsp-32]
..@c186:
		xor	ebx,ebx
		cmp	qword [U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE],0
		jne	..@j243
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld14]
		lea	rdx,[_$SYSTEM$_Ld29]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		jmp	..@j240
..@j243:
		mov	rbx,qword [U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE]
..@j240:
		mov	rax,rbx
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c185:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT:
..@c187:
		xor	eax,eax
		ret
..@c188:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_FREE
SYSTEM$_$TOBJECT_$__$$_FREE:
..@c189:
		lea	rsp,[rsp-40]
..@c191:
		mov	rax,rcx
		test	rcx,rcx
		je	..@j249
		mov	rcx,qword [rax]
		mov	rax,qword [rax]
		call	[rax+136]
..@j249:
		nop
		lea	rsp,[rsp+40]
		ret
..@c190:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT:
..@c192:
		lea	rsp,[rsp-40]
..@c194:
		lea	rcx,[U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE]
		mov	edx,8
		call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
		mov	rax,rdx
		nop
		lea	rsp,[rsp+40]
		ret
..@c193:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER:
..@c195:
		mov	qword [rdx],rcx
		ret
..@c196:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE:
..@c197:
		lea	rsp,[rsp-40]
..@c199:
		mov	qword [rsp+32],rcx
		lea	rcx,[U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE]
		call	SYSTEM_$$_FREEMEM$POINTER
		cmp	qword [rsp+32],0
		je	..@j257
		lea	rcx,[rsp+32]
		call	SYSTEM_$$_FREEMEM$POINTER
..@j257:
		nop
		lea	rsp,[rsp+40]
		ret
..@c198:

SECTION .text
SYSTEM_$$_SAFECALLEXCEPTION$POINTER$POINTER$$SHORTDWORD:
..@c200:
		mov	eax,edx
		ret
..@c201:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD:
..@c202:
		mov	eax,1
		ret
..@c203:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal
SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal:
..@c204:
		mov	rax,rcx
		ret
..@c205:

SECTION .text
	GLOBAL SYSTEM$_$TLIST_$__$$_CREATE$$TLIST
SYSTEM$_$TLIST_$__$$_CREATE$$TLIST:
..@c206:
		push	rbp
..@c208:
..@c209:
		mov	rbp,rsp
..@c210:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j267
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j267:
		cmp	qword [rbp-16],0
		je	..@j264
..@j275:
		nop
..@j274:
		mov	qword [rbp-24],-1
		mov	rcx,qword [rbp-16]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j272
		cmp	qword [rbp-8],0
		je	..@j272
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j272
..@j271:
		cmp	qword [rbp-8],0
		je	..@j281
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSTEM$_$TLIST_$__$$_DESTROY
..@j281:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j282:
		nop
..@j272:
..@j264:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c207:

SECTION .text
	GLOBAL SYSTEM$_$TLIST_$__$$_DESTROY
SYSTEM$_$TLIST_$__$$_DESTROY:
..@c211:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c213:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j286
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j286:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j288
		test	rsi,rsi
		je	..@j288
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j288:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c212:

SECTION .text
SYSTEM_$$_STRINGLENGTH$ANSISTRING$$LONGDWORD:
..@c214:
		xor	eax,eax
		jmp	..@j293
..@j292:
		inc	eax
..@j293:
		mov	edx,eax
		inc	rdx
		cmp	byte [rcx+rdx*1-1],0
		jne	..@j292
		ret
..@c215:

SECTION .text
	GLOBAL SYSTEM_$$_INITCONSOLE
SYSTEM_$$_INITCONSOLE:
..@c216:
		lea	rsp,[rsp-40]
..@c218:
		mov	eax,1
		lea	rcx,[VMT_$SYSTEM_$$_TDOSCMD]
		mov	rdx,rax
		call	SYSTEM$_$TDOSCMD_$__$$_CREATE$$TDOSCMD
		mov	qword [TC_$SYSTEM_$$_DOS],rax
		nop
		lea	rsp,[rsp+40]
		ret
..@c217:

SECTION .text
	GLOBAL SYSTEM_$$_DONECONSOLE
SYSTEM_$$_DONECONSOLE:
..@c219:
		lea	rsp,[rsp-40]
..@c221:
		cmp	qword [TC_$SYSTEM_$$_DOS],0
		je	..@j300
		mov	rax,qword [TC_$SYSTEM_$$_DOS]
		mov	rdx,qword [TC_$SYSTEM_$$_DOS]
		mov	rdx,qword [rdx]
		mov	rcx,rax
		call	[rdx+184]
..@j300:
		nop
		lea	rsp,[rsp+40]
		ret
..@c220:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_CREATE$$TDOSCMD
SYSTEM$_$TDOSCMD_$__$$_CREATE$$TDOSCMD:
..@c222:
		push	rbp
..@c224:
..@c225:
		mov	rbp,rsp
..@c226:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j304
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j304:
		cmp	qword [rbp-16],0
		je	..@j301
..@j312:
		nop
..@j311:
		mov	qword [rbp-24],-1
		mov	rcx,qword [rbp-16]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	rcx,qword [rbp-16]
		call	SYSTEM$_$TDOSCMD_$__$$_GET_STDIN$$LONGDWORD
		mov	rdx,qword [rbp-16]
		mov	dword [rdx+24],eax
		mov	rcx,qword [rbp-16]
		call	SYSTEM$_$TDOSCMD_$__$$_GET_STDOUT$$LONGDWORD
		mov	rdx,qword [rbp-16]
		mov	dword [rdx+28],eax
		mov	rcx,qword [rbp-16]
		call	SYSTEM$_$TDOSCMD_$__$$_GET_STDERR$$LONGDWORD
		mov	rdx,qword [rbp-16]
		mov	dword [rdx+32],eax
		mov	rax,qword [rbp-16]
		cmp	dword [rax+24],-1
		je	..@j314
		cmp	dword [rax+28],-1
		je	..@j314
		cmp	dword [rax+32],-1
		jne	..@j317
..@j314:
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld14]
		lea	rdx,[_$SYSTEM$_Ld30]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
..@j317:
		mov	rax,qword [rbp-16]
		lea	rcx,[rax+16]
		lea	rdx,[..@d31]
		call	fpc_ansistr_assign
		mov	ecx,65001
		call	_$dll$kernel32$SetConsoleOutputCP
		mov	ecx,65001
		call	_$dll$kernel32$SetConsoleCP
		mov	rcx,qword [rbp-16]
		lea	rdx,[..@d32]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j309
		cmp	qword [rbp-8],0
		je	..@j309
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j309
..@j308:
		cmp	qword [rbp-8],0
		je	..@j322
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+96]
..@j322:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j323:
		nop
..@j309:
..@j301:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c223:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_DESTROY
SYSTEM$_$TDOSCMD_$__$$_DESTROY:
..@c227:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c229:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j327
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j327:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j329
		test	rsi,rsi
		je	..@j329
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j329:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c228:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_FREE
SYSTEM$_$TDOSCMD_$__$$_FREE:
..@c230:
		lea	rsp,[rsp-40]
..@c232:
		mov	rax,rcx
		test	rcx,rcx
		je	..@j334
		mov	rcx,rax
		mov	edx,1
		mov	rax,qword [rax]
		call	[rax+96]
..@j334:
		nop
		lea	rsp,[rsp+40]
		ret
..@c231:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_CLS
SYSTEM$_$TDOSCMD_$__$$_CLS:
..@c233:
		mov	rax,rcx
		ret
..@c234:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_CLRSCR
SYSTEM$_$TDOSCMD_$__$$_CLRSCR:
..@c235:
		lea	rsp,[rsp-40]
..@c237:
		call	SYSTEM$_$TDOSCMD_$__$$_CLS
		nop
		lea	rsp,[rsp+40]
		ret
..@c236:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_CLEARSCREEN
SYSTEM$_$TDOSCMD_$__$$_CLEARSCREEN:
..@c238:
		lea	rsp,[rsp-40]
..@c240:
		call	SYSTEM$_$TDOSCMD_$__$$_CLS
		nop
		lea	rsp,[rsp+40]
		ret
..@c239:

SECTION .text
SYSTEM$_$TDOSCMD_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$00000218:
..@c241:
		push	rbp
..@c243:
..@c244:
		mov	rbp,rcx
..@c245:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c242:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD:
..@c246:
		push	rbp
..@c248:
..@c249:
		mov	rbp,rsp
..@c250:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
		mov	rcx,qword [rbp-16]
		call	fpc_ansistr_incr_ref
..@j349:
		nop
..@j345:
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		jne	..@j350
		lea	rdx,[FPC_EMPTYCHAR]
..@j350:
		lea	rcx,[_$SYSTEM$_Ld33]
		call	_$dll$msvcrt$printf
		mov	rdx,qword [rbp-16]
		test	rdx,rdx
		jne	..@j351
		lea	rdx,[FPC_EMPTYCHAR]
..@j351:
		lea	rcx,[_$SYSTEM$_Ld34]
		call	_$dll$msvcrt$printf
		xor	ebx,ebx
..@j347:
		nop
..@j346:
		mov	rcx,rbp
		call	SYSTEM$_$TDOSCMD_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$00000218
		mov	eax,ebx
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c247:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_WRITE$PCHAR
SYSTEM$_$TDOSCMD_$__$$_WRITE$PCHAR:
..@c251:
		lea	rsp,[rsp-40]
..@c253:
		mov	rax,rcx
		lea	rcx,[_$SYSTEM$_Ld35]
		call	_$dll$msvcrt$printf
		nop
		lea	rsp,[rsp+40]
		ret
..@c252:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR:
..@c254:
		lea	rsp,[rsp-40]
..@c256:
		mov	rax,rcx
		lea	rcx,[_$SYSTEM$_Ld36]
		call	_$dll$msvcrt$printf
		nop
		lea	rsp,[rsp+40]
		ret
..@c255:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_WRITE$ANSISTRING
SYSTEM$_$TDOSCMD_$__$$_WRITE$ANSISTRING:
..@c257:
		lea	rsp,[rsp-40]
..@c259:
		mov	rax,rcx
		test	rdx,rdx
		jne	..@j358
		lea	rdx,[FPC_EMPTYCHAR]
..@j358:
		mov	rcx,qword [TC_$SYSTEM_$$_DOS]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITE$PCHAR
		nop
		lea	rsp,[rsp+40]
		ret
..@c258:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING
SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING:
..@c260:
		lea	rsp,[rsp-40]
..@c262:
		mov	rax,rcx
		test	rdx,rdx
		jne	..@j361
		lea	rdx,[FPC_EMPTYCHAR]
..@j361:
		mov	rcx,qword [TC_$SYSTEM_$$_DOS]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
		nop
		lea	rsp,[rsp+40]
		ret
..@c261:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_READLN$ANSISTRING$ANSISTRING
SYSTEM$_$TDOSCMD_$__$$_READLN$ANSISTRING$ANSISTRING:
..@c263:
		push	rbx
		lea	rsp,[rsp-32]
..@c265:
		mov	rax,rcx
		mov	rbx,rdx
		mov	rcx,qword [TC_$SYSTEM_$$_DOS]
		lea	rdx,[..@d37]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING
		mov	rdx,rbx
		lea	rcx,[_$SYSTEM$_Ld35]
		call	_$dll$msvcrt$scanf
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c264:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_READLN$ANSISTRING
SYSTEM$_$TDOSCMD_$__$$_READLN$ANSISTRING:
..@c266:
		mov	rax,rcx
		ret
..@c267:

SECTION .text
SYSTEM$_$TDOSCMD_$_READ$ANSISTRING$ANSISTRING_$$_fin$00000219:
..@c268:
		push	rbp
..@c270:
..@c271:
		mov	rbp,rcx
..@c272:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-272]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-280]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c269:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_READ$ANSISTRING$ANSISTRING
SYSTEM$_$TDOSCMD_$__$$_READ$ANSISTRING$ANSISTRING:
..@c273:
		push	rbp
..@c275:
..@c276:
		mov	rbp,rsp
..@c277:
		lea	rsp,[rsp-352]
		mov	qword [rbp-296],rbx
		mov	qword [rbp-288],rsi
		mov	rbx,rcx
		mov	rsi,rdx
		mov	rdx,r8
		mov	qword [rbp-272],0
		mov	qword [rbp-280],0
..@j374:
		nop
..@j370:
		mov	rcx,qword [TC_$SYSTEM_$$_DOS]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITE$ANSISTRING
		mov	rdx,rsi
		lea	rcx,[_$SYSTEM$_Ld35]
		call	_$dll$msvcrt$scanf
		mov	byte [rbp-264],65
		lea	rax,[rbp-264]
		lea	rcx,[rbp-272]
		xor	edx,edx
		call	fpc_ansistr_assign
		movzx	edx,byte [rbp-264]
		lea	rcx,[rbp-280]
		xor	r8d,r8d
		call	fpc_char_to_ansistr
		mov	rdx,qword [rbp-272]
		lea	rcx,[rbp-272]
		call	fpc_ansistr_assign
		jmp	..@j372
..@j375:
		cmp	byte [rbp-264],13
		jne	..@j375
		jmp	..@j377
		jmp	..@j375
..@j377:
		mov	rdx,qword [rbp-272]
		mov	rcx,qword [TC_$SYSTEM_$$_DOS]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING
		jmp	..@j372
		mov	edx,dword [rbp-260]
		lea	rcx,[_$SYSTEM$_Ld39]
		call	_$dll$msvcrt$printf
		mov	eax,dword [rbp-260]
		mov	byte [rbp+rax*1-258],0
		lea	rdx,[rbp-256]
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld1]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
..@j372:
		nop
..@j371:
		mov	rcx,rbp
		call	SYSTEM$_$TDOSCMD_$_READ$ANSISTRING$ANSISTRING_$$_fin$00000219
		mov	rbx,qword [rbp-296]
		mov	rsi,qword [rbp-288]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c274:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_READ$ANSISTRING
SYSTEM$_$TDOSCMD_$__$$_READ$ANSISTRING:
..@c278:
		lea	rsp,[rsp-40]
..@c280:
		mov	rax,rcx
		mov	rcx,qword [TC_$SYSTEM_$$_DOS]
		lea	rdx,[..@d40]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING
		nop
		lea	rsp,[rsp+40]
		ret
..@c279:

SECTION .text
SYSTEM_$$_CHECK_RESULT$LONGDWORD:
..@c281:
		lea	rsp,[rsp-40]
..@c283:
		mov	eax,ecx
		cmp	eax,-1
		jne	..@j387
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld14]
		lea	rdx,[_$SYSTEM$_Ld41]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
..@j387:
		nop
		lea	rsp,[rsp+40]
		ret
..@c282:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_GET_STDIN$$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_GET_STDIN$$LONGDWORD:
..@c284:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c286:
		mov	rbx,rcx
		mov	ecx,-10
		call	_$dll$kernel32$GetStdHandle
		mov	esi,eax
		mov	rcx,rbx
		call	SYSTEM$_$TDOSCMD_$__$$_GET_STDIN$$LONGDWORD
		mov	ecx,eax
		call	SYSTEM_$$_CHECK_RESULT$LONGDWORD
		mov	eax,esi
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c285:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_GET_STDOUT$$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_GET_STDOUT$$LONGDWORD:
..@c287:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c289:
		mov	rbx,rcx
		mov	ecx,-11
		call	_$dll$kernel32$GetStdHandle
		mov	esi,eax
		mov	rcx,rbx
		call	SYSTEM$_$TDOSCMD_$__$$_GET_STDOUT$$LONGDWORD
		mov	ecx,eax
		call	SYSTEM_$$_CHECK_RESULT$LONGDWORD
		mov	eax,esi
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c288:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_GET_STDERR$$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_GET_STDERR$$LONGDWORD:
..@c290:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c292:
		mov	rbx,rcx
		mov	ecx,-12
		call	_$dll$kernel32$GetStdHandle
		mov	esi,eax
		mov	rcx,rbx
		call	SYSTEM$_$TDOSCMD_$__$$_GET_STDERR$$LONGDWORD
		mov	ecx,eax
		call	SYSTEM_$$_CHECK_RESULT$LONGDWORD
		mov	eax,esi
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c291:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_SET_STDIN$LONGDWORD$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_SET_STDIN$LONGDWORD$LONGDWORD:
..@c293:
		push	rbx
		lea	rsp,[rsp-32]
..@c295:
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
..@c294:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_SET_STDOUT$LONGDWORD$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_SET_STDOUT$LONGDWORD$LONGDWORD:
..@c296:
		push	rbx
		lea	rsp,[rsp-32]
..@c298:
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
..@c297:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_SET_STDERR$LONGDWORD$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_SET_STDERR$LONGDWORD$LONGDWORD:
..@c299:
		push	rbx
		lea	rsp,[rsp-32]
..@c301:
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
..@c300:

SECTION .text
	GLOBAL SYSTEM_$$_INITWINDOWS
SYSTEM_$$_INITWINDOWS:
..@c302:
		lea	rsp,[rsp-40]
..@c304:
		mov	eax,1
		lea	rcx,[VMT_$SYSTEM_$$_WINDOWS_CLASS]
		mov	rdx,rax
		call	SYSTEM$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS
		mov	qword [U_$SYSTEM_$$_WINDOWS],rax
		nop
		lea	rsp,[rsp+40]
		ret
..@c303:

SECTION .text
	GLOBAL SYSTEM_$$_DONEWINDOWS
SYSTEM_$$_DONEWINDOWS:
..@c305:
		lea	rsp,[rsp-40]
..@c307:
		cmp	qword [U_$SYSTEM_$$_WINDOWS],0
		je	..@j405
		mov	rax,qword [U_$SYSTEM_$$_WINDOWS]
		mov	rdx,qword [U_$SYSTEM_$$_WINDOWS]
		mov	rdx,qword [rdx]
		mov	rcx,rax
		call	[rdx+184]
..@j405:
		nop
		lea	rsp,[rsp+40]
		ret
..@c306:

SECTION .text
	GLOBAL SYSTEM$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS
SYSTEM$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS:
..@c308:
		push	rbp
..@c310:
..@c311:
		mov	rbp,rsp
..@c312:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j409
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j409:
		cmp	qword [rbp-16],0
		je	..@j406
..@j417:
		nop
..@j416:
		mov	qword [rbp-24],-1
		mov	rcx,qword [rbp-16]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j414
		cmp	qword [rbp-8],0
		je	..@j414
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j414
..@j413:
		cmp	qword [rbp-8],0
		je	..@j423
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY
..@j423:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j424:
		nop
..@j414:
..@j406:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c309:

SECTION .text
	GLOBAL SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY
SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY:
..@c313:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c315:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j428
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j428:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j430
		test	rsi,rsi
		je	..@j430
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j430:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c314:

SECTION .text
	GLOBAL SYSTEM$_$WINDOWS_CLASS_$__$$_FREE
SYSTEM$_$WINDOWS_CLASS_$__$$_FREE:
..@c316:
		lea	rsp,[rsp-40]
..@c318:
		mov	rax,rcx
		test	rcx,rcx
		je	..@j435
		mov	rcx,rax
		mov	edx,1
		call	SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY
..@j435:
		nop
		lea	rsp,[rsp+40]
		ret
..@c317:

SECTION .text
SYSTEM$_$WINDOWS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$0000021D:
..@c319:
		push	rbp
..@c321:
..@c322:
		mov	rbp,rcx
..@c323:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c320:

SECTION .text
	GLOBAL SYSTEM$_$WINDOWS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD
SYSTEM$_$WINDOWS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD:
..@c324:
		push	rbp
..@c326:
..@c327:
		mov	rbp,rsp
..@c328:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
		mov	rcx,qword [rbp-16]
		call	fpc_ansistr_incr_ref
..@j444:
		nop
..@j440:
		mov	r8,qword [rbp-16]
		test	r8,r8
		jne	..@j445
		lea	r8,[FPC_EMPTYCHAR]
..@j445:
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		jne	..@j446
		lea	rdx,[FPC_EMPTYCHAR]
..@j446:
		xor	r9d,r9d
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		xor	ebx,ebx
..@j442:
		nop
..@j441:
		mov	rcx,rbp
		call	SYSTEM$_$WINDOWS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$0000021D
		mov	eax,ebx
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c325:

SECTION .text
	GLOBAL SYSTEM$_$TVGAIO_$__$$_$lower$TVGAIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TVGAIO_$__$$_$lower$TVGAIO$ANSISTRING$$BOOLEAN:
..@c329:
		push	rbp
..@c331:
..@c332:
		mov	rbp,rsp
..@c333:
		lea	rsp,[rsp-64]
		mov	qword [rbp-32],rdi
		mov	qword [rbp-24],rsi
		mov	rsi,rcx
		mov	qword [rbp-8],rdx
		lea	rdi,[rbp-12]
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		mov	al,dl
		mov	rdi,qword [rbp-32]
		mov	rsi,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c330:

SECTION .text
	GLOBAL SYSTEM$_$TVGAIO_$__$$_$greater$TVGAIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TVGAIO_$__$$_$greater$TVGAIO$ANSISTRING$$BOOLEAN:
..@c334:
		push	rbp
..@c336:
..@c337:
		mov	rbp,rsp
..@c338:
		lea	rsp,[rsp-64]
		mov	qword [rbp-32],rdi
		mov	qword [rbp-24],rsi
		mov	rsi,rcx
		mov	qword [rbp-8],rdx
		lea	rdi,[rbp-12]
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		mov	al,dl
		mov	rdi,qword [rbp-32]
		mov	rsi,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c335:

SECTION .text
SYSTEM$_$TSYSTEMIO_$_lower$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$00000220:
..@c339:
		push	rbp
..@c341:
..@c342:
		mov	rbp,rcx
..@c343:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c340:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEMIO_$__$$_$lower$TSYSTEMIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TSYSTEMIO_$__$$_$lower$TSYSTEMIO$ANSISTRING$$BOOLEAN:
..@c344:
		push	rbp
..@c346:
..@c347:
		mov	rbp,rsp
..@c348:
		lea	rsp,[rsp-64]
		mov	qword [rbp-32],rdi
		mov	qword [rbp-24],rsi
		mov	rsi,rcx
		mov	qword [rbp-8],rdx
		lea	rdi,[rbp-12]
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
..@j463:
		nop
..@j459:
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		jne	..@j464
		lea	rdx,[FPC_EMPTYCHAR]
..@j464:
		mov	rcx,qword [TC_$SYSTEM_$$_DOS]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
..@j461:
		nop
..@j460:
		mov	rcx,rbp
		call	SYSTEM$_$TSYSTEMIO_$_lower$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$00000220
		mov	al,dl
		mov	rdi,qword [rbp-32]
		mov	rsi,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c345:

SECTION .text
SYSTEM$_$TSYSTEMIO_$_greater$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$00000221:
..@c349:
		push	rbp
..@c351:
..@c352:
		mov	rbp,rcx
..@c353:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c350:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$ANSISTRING$$BOOLEAN:
..@c354:
		push	rbp
..@c356:
..@c357:
		mov	rbp,rsp
..@c358:
		lea	rsp,[rsp-80]
		mov	qword [rbp-40],rbx
		mov	qword [rbp-32],rdi
		mov	qword [rbp-24],rsi
		mov	rsi,rcx
		mov	qword [rbp-8],rdx
		lea	rdi,[rbp-12]
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
..@j473:
		nop
..@j469:
		mov	bl,1
..@j471:
		nop
..@j470:
		mov	rcx,rbp
		call	SYSTEM$_$TSYSTEMIO_$_greater$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$00000221
		mov	al,bl
		mov	rbx,qword [rbp-40]
		mov	rdi,qword [rbp-32]
		mov	rsi,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c355:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$LONGDWORD$$QWORD
SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$LONGDWORD$$QWORD:
..@c359:
		push	rdi
		push	rsi
		lea	rsp,[rsp-8]
..@c361:
		mov	rsi,rcx
		mov	rdi,rsp
		mov	eax,1
		lea	rsp,[rsp+8]
		pop	rsi
		pop	rdi
		ret
..@c360:

SECTION .text
	GLOBAL SYSTEM$_$TCPU_$__$$_CREATE$$TCPU
SYSTEM$_$TCPU_$__$$_CREATE$$TCPU:
..@c362:
		push	rbp
..@c364:
..@c365:
		mov	rbp,rsp
..@c366:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j479
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j479:
		cmp	qword [rbp-16],0
		je	..@j476
..@j487:
		nop
..@j486:
		mov	qword [rbp-24],-1
		mov	rcx,qword [rbp-16]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j484
		cmp	qword [rbp-8],0
		je	..@j484
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j484
..@j483:
		cmp	qword [rbp-8],0
		je	..@j493
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSTEM$_$TCPU_$__$$_DESTROY
..@j493:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j494:
		nop
..@j484:
..@j476:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c363:

SECTION .text
	GLOBAL SYSTEM$_$TCPU_$__$$_DESTROY
SYSTEM$_$TCPU_$__$$_DESTROY:
..@c367:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c369:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j498
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j498:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j500
		test	rsi,rsi
		je	..@j500
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j500:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c368:

SECTION .text
	GLOBAL SYSTEM$_$TCPU_$__$$_CLASSNAME$$ANSISTRING
SYSTEM$_$TCPU_$__$$_CLASSNAME$$ANSISTRING:
..@c370:
		lea	rsp,[rsp-40]
..@c372:
		mov	rax,rcx
		mov	rcx,rdx
		lea	rdx,[..@d42]
		call	fpc_ansistr_assign
		nop
		lea	rsp,[rsp+40]
		ret
..@c371:

SECTION .text
	GLOBAL SYSTEM$_$TCPU_$__$$_CLASSPARENT$$TOBJECT
SYSTEM$_$TCPU_$__$$_CLASSPARENT$$TOBJECT:
..@c373:
		lea	rsp,[rsp-40]
..@c375:
		call	SYSTEM$_$TCPU_$__$$_GETPARENT$$TOBJECT
		nop
		lea	rsp,[rsp+40]
		ret
..@c374:

SECTION .text
	GLOBAL SYSTEM$_$TCPU_$__$$_GETPARENT$$TOBJECT
SYSTEM$_$TCPU_$__$$_GETPARENT$$TOBJECT:
..@c376:
		mov	rax,qword [U_$SYSTEM_$$__static_tcpu_FCLASSPARENT]
		ret
..@c377:

SECTION .text
	GLOBAL SYSTEM_$$_INITMEMORY
SYSTEM_$$_INITMEMORY:
..@c378:
		lea	rsp,[rsp-40]
..@c380:
		mov	eax,1
		lea	rcx,[VMT_$SYSTEM_$$_TMEMORY]
		mov	rdx,rax
		call	SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY
		mov	qword [TC_$SYSTEM_$$_MEM],rax
		nop
		lea	rsp,[rsp+40]
		ret
..@c379:

SECTION .text
	GLOBAL SYSTEM_$$_DONEMEMORY
SYSTEM_$$_DONEMEMORY:
..@c381:
		lea	rsp,[rsp-40]
..@c383:
		mov	rax,qword [TC_$SYSTEM_$$_MEM]
		mov	rdx,qword [TC_$SYSTEM_$$_MEM]
		mov	rdx,qword [rdx]
		mov	rcx,rax
		call	[rdx+184]
		nop
		lea	rsp,[rsp+40]
		ret
..@c382:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY
SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY:
..@c384:
		push	rbp
..@c386:
..@c387:
		mov	rbp,rsp
..@c388:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j515
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j515:
		cmp	qword [rbp-16],0
		je	..@j512
..@j523:
		nop
..@j522:
		mov	qword [rbp-24],-1
		mov	rcx,qword [rbp-16]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	rcx,qword [rbp-16]
		mov	r8d,512
		xor	edx,edx
		call	SYSTEM$_$TMEMORY_$__$$_CREATE$LONGDWORD$$TMEMORY
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j520
		cmp	qword [rbp-8],0
		je	..@j520
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j520
..@j519:
		cmp	qword [rbp-8],0
		je	..@j529
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSTEM$_$TMEMORY_$__$$_DESTROY
..@j529:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j530:
		nop
..@j520:
..@j512:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c385:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_CREATE$LONGDWORD$$TMEMORY
SYSTEM$_$TMEMORY_$__$$_CREATE$LONGDWORD$$TMEMORY:
..@c389:
		push	rbp
..@c391:
..@c392:
		mov	rbp,rsp
..@c393:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rcx
		mov	qword [rbp-16],rdx
		mov	dword [rbp-8],r8d
		cmp	qword [rbp-16],1
		jne	..@j534
		mov	rax,qword [rbp-24]
		mov	rdx,qword [rbp-24]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-24],rax
..@j534:
		cmp	qword [rbp-24],0
		je	..@j531
..@j542:
		nop
..@j541:
		mov	qword [rbp-32],-1
		mov	rcx,qword [rbp-24]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	dword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE],0
		mov	edx,dword [rbp-8]
		mov	rcx,qword [rbp-24]
		call	SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER
		mov	qword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY],rax
		mov	qword [U_$SYSTEM_$$__static_tmemory_FCLASSPARENT],0
		mov	qword [rbp-32],1
		cmp	qword [rbp-24],0
		je	..@j539
		cmp	qword [rbp-16],0
		je	..@j539
		mov	rcx,qword [rbp-24]
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j539
..@j538:
		cmp	qword [rbp-16],0
		je	..@j548
		mov	rdx,qword [rbp-32]
		mov	rcx,qword [rbp-24]
		call	SYSTEM$_$TMEMORY_$__$$_DESTROY
..@j548:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j549:
		nop
..@j539:
..@j531:
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c390:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$LONGDWORD$$TMEMORY
SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$LONGDWORD$$TMEMORY:
..@c394:
		push	rbp
..@c396:
..@c397:
		mov	rbp,rsp
..@c398:
		lea	rsp,[rsp-80]
		mov	qword [rbp-32],rcx
		mov	qword [rbp-24],rdx
		mov	qword [rbp-8],r8
		mov	dword [rbp-16],r9d
		cmp	qword [rbp-24],1
		jne	..@j553
		mov	rax,qword [rbp-32]
		mov	rdx,qword [rbp-32]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-32],rax
..@j553:
		cmp	qword [rbp-32],0
		je	..@j550
..@j561:
		nop
..@j560:
		mov	qword [rbp-40],-1
		mov	rcx,qword [rbp-32]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	r8d,dword [rbp-16]
		mov	rcx,qword [rbp-32]
		xor	edx,edx
		call	SYSTEM$_$TMEMORY_$__$$_CREATE$LONGDWORD$$TMEMORY
		mov	rax,qword [rbp-8]
		mov	qword [U_$SYSTEM_$$__static_tmemory_FCLASSPARENT],rax
		mov	qword [rbp-40],1
		cmp	qword [rbp-32],0
		je	..@j558
		cmp	qword [rbp-24],0
		je	..@j558
		mov	rcx,qword [rbp-32]
		mov	rax,qword [rbp-32]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j558
..@j557:
		cmp	qword [rbp-24],0
		je	..@j567
		mov	rdx,qword [rbp-40]
		mov	rcx,qword [rbp-32]
		call	SYSTEM$_$TMEMORY_$__$$_DESTROY
..@j567:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j568:
		nop
..@j558:
..@j550:
		mov	rax,qword [rbp-32]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c395:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$$TMEMORY
SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$$TMEMORY:
..@c399:
		push	rbp
..@c401:
..@c402:
		mov	rbp,rsp
..@c403:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-8],r8
		cmp	qword [rbp-16],1
		jne	..@j572
		mov	rax,qword [rbp-24]
		mov	rdx,qword [rbp-24]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-24],rax
..@j572:
		cmp	qword [rbp-24],0
		je	..@j569
..@j580:
		nop
..@j579:
		mov	qword [rbp-32],-1
		mov	rcx,qword [rbp-24]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld1]
		lea	rdx,[_$SYSTEM$_Ld43]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		cmp	qword [rbp-8],0
		jne	..@j583
		mov	edx,8
		mov	dword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE],edx
		lea	rcx,[U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY]
		call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
		jmp	..@j584
..@j583:
		mov	rax,qword [rbp-8]
		mov	qword [U_$SYSTEM_$$__static_tmemory_FCLASSPARENT],rax
		mov	rcx,qword [rbp-24]
		mov	edx,8
		call	SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER
		mov	qword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY],rax
..@j584:
		mov	qword [rbp-32],1
		cmp	qword [rbp-24],0
		je	..@j577
		cmp	qword [rbp-16],0
		je	..@j577
		mov	rcx,qword [rbp-24]
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j577
..@j576:
		cmp	qword [rbp-16],0
		je	..@j589
		mov	rdx,qword [rbp-32]
		mov	rcx,qword [rbp-24]
		call	SYSTEM$_$TMEMORY_$__$$_DESTROY
..@j589:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j590:
		nop
..@j577:
..@j569:
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c400:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_DESTROY
SYSTEM$_$TMEMORY_$__$$_DESTROY:
..@c404:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c406:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j594
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j594:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j596
		test	rsi,rsi
		je	..@j596
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j596:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c405:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_CLASSNAME$$ANSISTRING
SYSTEM$_$TMEMORY_$__$$_CLASSNAME$$ANSISTRING:
..@c407:
		lea	rsp,[rsp-40]
..@c409:
		mov	rax,rcx
		mov	rcx,rdx
		lea	rdx,[..@d44]
		call	fpc_ansistr_assign
		nop
		lea	rsp,[rsp+40]
		ret
..@c408:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER
SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER:
..@c410:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c412:
		mov	ebx,edx
		xor	esi,esi
		cmp	ebx,dword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE]
		je	..@j600
		cmp	dword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE],0
		jne	..@j606
		mov	edx,ebx
		lea	rcx,[U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY]
		call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
		mov	dword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE],ebx
..@j606:
		mov	rsi,qword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY]
..@j600:
		mov	rax,rsi
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c411:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_ALLOC
SYSTEM$_$TMEMORY_$__$$_ALLOC:
..@c413:
		lea	rsp,[rsp-40]
..@c415:
		mov	edx,512
		call	SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER
		nop
		lea	rsp,[rsp+40]
		ret
..@c414:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_FREE
SYSTEM$_$TMEMORY_$__$$_FREE:
..@c416:
		lea	rsp,[rsp-40]
..@c418:
		mov	rax,rcx
		lea	rcx,[U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY]
		call	SYSTEM_$$_FREEMEM$POINTER
		cmp	qword [U_$SYSTEM_$$__static_tmemory_FCLASSPARENT],0
		je	..@j612
		mov	rcx,qword [U_$SYSTEM_$$__static_tmemory_FCLASSPARENT]
		mov	rax,qword [U_$SYSTEM_$$__static_tmemory_FCLASSPARENT]
		mov	rax,qword [rax]
		call	[rax+160]
..@j612:
		nop
		lea	rsp,[rsp+40]
		ret
..@c417:

SECTION .text
	GLOBAL SYSTEM_$$_INITSYSTEM
SYSTEM_$$_INITSYSTEM:
..@c419:
		lea	rsp,[rsp-40]
..@c421:
		call	_$dll$kernel32$GetConsoleWindow
		test	eax,eax
		je	..@j616
		call	SYSTEM_$$_INITCONSOLE
..@j616:
		mov	edx,1
		lea	rcx,[VMT_$SYSTEM_$$_TSYSTEM]
		call	SYSTEM$_$TSYSTEM_$__$$_CREATE$$TSYSTEM
		mov	qword [TC_$SYSTEM_$$_SYS],rax
		mov	edx,1
		lea	rcx,[VMT_$SYSTEM_$$_TMEMORY]
		call	SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY
		mov	qword [TC_$SYSTEM_$$_MEM],rax
		mov	rcx,qword [TC_$SYSTEM_$$_DOS]
		lea	rdx,[..@d45]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING
		nop
		lea	rsp,[rsp+40]
		ret
..@c420:

SECTION .text
	GLOBAL SYSTEM_$$_DONESYSTEM
SYSTEM_$$_DONESYSTEM:
..@c422:
		lea	rsp,[rsp-40]
..@c424:
		call	_$dll$kernel32$GetConsoleWindow
		test	eax,eax
		je	..@j620
		call	SYSTEM_$$_DONECONSOLE
..@j620:
		nop
		lea	rsp,[rsp+40]
		ret
..@c423:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEM_$__$$_CREATE$$TSYSTEM
SYSTEM$_$TSYSTEM_$__$$_CREATE$$TSYSTEM:
..@c425:
		push	rbp
..@c427:
..@c428:
		mov	rbp,rsp
..@c429:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j624
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j624:
		cmp	qword [rbp-16],0
		je	..@j621
..@j632:
		nop
..@j631:
		mov	qword [rbp-24],-1
		mov	rcx,qword [rbp-16]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	edx,1
		lea	rcx,[VMT_$SYSTEM_$$_TMEMORY]
		call	SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY
		mov	qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS],rax
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j629
		cmp	qword [rbp-8],0
		je	..@j629
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j629
..@j628:
		cmp	qword [rbp-8],0
		je	..@j638
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSTEM$_$TSYSTEM_$__$$_DESTROY
..@j638:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j639:
		nop
..@j629:
..@j621:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c426:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEM_$__$$_DESTROY
SYSTEM$_$TSYSTEM_$__$$_DESTROY:
..@c430:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c432:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j643
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j643:
		cmp	qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS],0
		je	..@j645
		mov	rcx,qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS]
		mov	rax,qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS]
		mov	rax,qword [rax]
		call	[rax+184]
		mov	qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS],0
..@j645:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j647
		test	rsi,rsi
		je	..@j647
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j647:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c431:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEM_$__$$_GETMEMORY$$TMEMORY
SYSTEM$_$TSYSTEM_$__$$_GETMEMORY$$TMEMORY:
..@c433:
		lea	rsp,[rsp-40]
..@c435:
		cmp	qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS],0
		jne	..@j652
		mov	edx,1
		lea	rcx,[VMT_$SYSTEM_$$_TMEMORY]
		call	SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY
		mov	qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS],rax
..@j652:
		mov	rax,qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS]
		nop
		lea	rsp,[rsp+40]
		ret
..@c434:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEM_$__$$_CLASSNAME$$ANSISTRING
SYSTEM$_$TSYSTEM_$__$$_CLASSNAME$$ANSISTRING:
..@c436:
		lea	rsp,[rsp-40]
..@c438:
		mov	rax,rcx
		mov	rcx,rdx
		lea	rdx,[..@d46]
		call	fpc_ansistr_assign
		nop
		lea	rsp,[rsp+40]
		ret
..@c437:

SECTION .text
	GLOBAL INIT$_$SYSTEM
INIT$_$SYSTEM:
	GLOBAL SYSTEM_$$_init$
SYSTEM_$$_init$:
..@c439:
		lea	rsp,[rsp-40]
..@c441:
		call	SYSTEM_$$_INITSYSTEM
		call	SYSTEM_$$_ISCONSOLEAPP$$BOOLEAN
		test	al,al
		je	..@j658
		lea	rcx,[_$SYSTEM$_Ld54]
		call	_$dll$msvcrt$printf
..@j658:
		nop
		lea	rsp,[rsp+40]
		ret
..@c440:

SECTION .text
	GLOBAL FINALIZE$_$SYSTEM
FINALIZE$_$SYSTEM:
	GLOBAL SYSTEM_$$_finalize$
SYSTEM_$$_finalize$:
..@c442:
		lea	rsp,[rsp-40]
..@c444:
		call	SYSTEM_$$_DONESYSTEM
		call	SYSTEM_$$_ISCONSOLEAPP$$BOOLEAN
		test	al,al
		je	..@j660
		lea	rcx,[_$SYSTEM$_Ld55]
		call	_$dll$msvcrt$printf
..@j660:
		nop
		lea	rsp,[rsp+40]
		ret
..@c443:
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION .bss
	ALIGNB 8
	GLOBAL U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE
U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE:	RESB	8

SECTION .bss
	ALIGNB 8
	GLOBAL U_$SYSTEM_$$_WINDOWS
U_$SYSTEM_$$_WINDOWS:	RESB	8

SECTION .bss
	ALIGNB 8
	GLOBAL U_$SYSTEM_$$__static_tcpu_FCLASSPARENT
U_$SYSTEM_$$__static_tcpu_FCLASSPARENT:	RESB	8

SECTION .bss
	ALIGNB 8
	GLOBAL U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY
U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY:	RESB	8

SECTION .bss
	ALIGNB 4
	GLOBAL U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE
U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE:	RESB	4

SECTION .bss
	ALIGNB 8
	GLOBAL U_$SYSTEM_$$__static_tmemory_FCLASSPARENT
U_$SYSTEM_$$__static_tmemory_FCLASSPARENT:	RESB	8

SECTION .bss
	GLOBAL U_$SYSTEM_$$__static_tsystem_FSYSTEMIO
U_$SYSTEM_$$__static_tsystem_FSYSTEMIO:	RESB	8

SECTION .bss
	ALIGNB 8
	GLOBAL U_$SYSTEM_$$__static_tsystem_FCLASSPARENT
U_$SYSTEM_$$__static_tsystem_FCLASSPARENT:	RESB	8

SECTION .bss
	ALIGNB 8
	GLOBAL U_$SYSTEM_$$__static_tsystem_FMEMCLASS
U_$SYSTEM_$$__static_tsystem_FMEMCLASS:	RESB	8

SECTION .bss
	ALIGNB 8
	GLOBAL U_$SYSTEM_$$__static_tsystem_FCPUCLASS
U_$SYSTEM_$$__static_tsystem_FCPUCLASS:	RESB	8

SECTION .bss
	GLOBAL U_$SYSTEM_$$__static_tsystem_FVGACLASS
U_$SYSTEM_$$__static_tsystem_FVGACLASS:	RESB	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TOBJECT
VMT_$SYSTEM_$$_TOBJECT	DQ	8,-8,0,..@d47,0,0,0,RTTI_$SYSTEM_$$_TOBJECT,0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING,SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_FREE,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TLIST
VMT_$SYSTEM_$$_TLIST	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d48,0,0,0,RTTI_$SYSTEM_$$_TLIST,0
	DQ	0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_FREE,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TDOSCMD
VMT_$SYSTEM_$$_TDOSCMD	DQ	40,-40,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d49,0,0,0,RTTI_$SYSTEM_$$_TDOSCMD
	DQ	INIT_$SYSTEM_$$_TDOSCMD,0,0,0,SYSTEM$_$TDOSCMD_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_FREE,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD
	DQ	SYSTEM$_$TDOSCMD_$__$$_FREE,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_WINDOWS_CLASS
VMT_$SYSTEM_$$_WINDOWS_CLASS	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d50,0,0,0,RTTI_$SYSTEM_$$_WINDOWS_CLASS
	DQ	0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_FREE,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD
	DQ	SYSTEM$_$WINDOWS_CLASS_$__$$_FREE,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TCPU
VMT_$SYSTEM_$$_TCPU	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d51,0,0,0,RTTI_$SYSTEM_$$_TCPU,0,0
	DQ	0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_FREE,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD
	DQ	SYSTEM$_$TCPU_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TCPU_$__$$_CLASSNAME$$ANSISTRING
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TMEMORY
VMT_$SYSTEM_$$_TMEMORY	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d52,0,0,0,RTTI_$SYSTEM_$$_TMEMORY
	DQ	0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_FREE,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD
	DQ	SYSTEM$_$TMEMORY_$__$$_FREE,SYSTEM$_$TMEMORY_$__$$_CLASSNAME$$ANSISTRING
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TSYSTEM
VMT_$SYSTEM_$$_TSYSTEM	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d53,0,0,0,RTTI_$SYSTEM_$$_TSYSTEM
	DQ	0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_FREE,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD
	DQ	0
; End asmlist al_globals
; Begin asmlist al_const

SECTION .data
	ALIGN 8,DB 0
..@d47:
	DB	7
		DB	"TObject"

SECTION .data
	ALIGN 8,DB 0
..@d48:
	DB	5
		DB	"TList"

SECTION .data
	ALIGN 8,DB 0
..@d49:
	DB	7
		DB	"TDosCmd"

SECTION .data
	ALIGN 8,DB 0
..@d50:
	DB	13
		DB	"Windows_Class"

SECTION .data
	ALIGN 8,DB 0
..@d51:
	DB	4
		DB	"TCPU"

SECTION .data
	ALIGN 8,DB 0
..@d52:
	DB	7
		DB	"TMemory"

SECTION .data
	ALIGN 8,DB 0
..@d53:
	DB	7
		DB	"TSystem"
; End asmlist al_const
; Begin asmlist al_typedconsts

SECTION .data
	GLOBAL TC_$SYSTEM_$$_SYSINITENTRYINFORMATION
TC_$SYSTEM_$$_SYSINITENTRYINFORMATION	DQ	0,0,0,0,0,PASCALMAIN
	DB	0,0,0,0,0,0,0,0

SECTION .data
	GLOBAL TC_$SYSTEM_$$_DOS
TC_$SYSTEM_$$_DOS	DQ	0

SECTION .data
	GLOBAL TC_$SYSTEM_$$_MEM
TC_$SYSTEM_$$_MEM	DQ	0

SECTION .data
	GLOBAL TC_$SYSTEM_$$_SYS
TC_$SYSTEM_$$_SYS	DQ	0

SECTION .rodata
_$SYSTEM$_Ld1:
		DB	"info",0

SECTION .rodata
_$SYSTEM$_Ld2:
		DB	"in DOS EXE file",0

SECTION .rodata
_$SYSTEM$_Ld3:
		DB	"in GUI EXE file",0

SECTION .rodata
_$SYSTEM$_Ld4:
		DB	"in DLL console file",0

SECTION .rodata
_$SYSTEM$_Ld5:
		DB	"in DLL GUI file",0

SECTION .rodata
_$SYSTEM$_Ld6:
		DB	"121212121221",0

SECTION .rodata
_$SYSTEM$_Ld7:
		DB	"12111221",0

SECTION .rodata
_$SYSTEM$_Ld8:
		DB	"initialize...",13,10,0

SECTION .rodata
_$SYSTEM$_Ld9:
		DB	"oooooo",0

SECTION .rodata
_$SYSTEM$_Ld10:
		DB	"in lib init",0

SECTION .rodata
_$SYSTEM$_Ld11:
		DB	"finalize...",13,10,0

SECTION .rodata
_$SYSTEM$_Ld12:
		DB	"system.pas",0

SECTION .rodata
_$SYSTEM$_Ld13:
		DB	"fpc_doneexceptions",0

SECTION .rodata
_$SYSTEM$_Ld14:
		DB	"Error",0

SECTION .rodata
_$SYSTEM$_Ld15:
		DB	"Error: fpc_AnsiStr_EmptyChar memory allocation fail.",0

SECTION .rodata
_$SYSTEM$_Ld16:
		DB	"Information",0

SECTION .rodata
_$SYSTEM$_Ld17:
		DB	"Warning",0

SECTION .rodata
_$SYSTEM$_Ld18:
		DB	"Error: could not allocate memory.",0

SECTION .rodata
_$SYSTEM$_Ld19:
		DB	"File can not be lock.",0

SECTION .rodata
_$SYSTEM$_Ld20:
		DB	"pacher",0

SECTION .rodata
_$SYSTEM$_Ld21:
		DB	"File: ",34,0

SECTION .rodata
_$SYSTEM$_Ld22:
		DB	34," already exists.\n",0

SECTION .rodata
_$SYSTEM$_Ld23:
		DB	"Would you like override it ?",0

SECTION .rodata
_$SYSTEM$_Ld24:
		DB	"file could not be created !",0

SECTION .rodata
_$SYSTEM$_Ld25:
		DB	"file not delete",0

SECTION .rodata
_$SYSTEM$_Ld26:
		DB	34," could not be open.",0

SECTION .rodata
_$SYSTEM$_Ld27:
		DB	"SetFilePointer() failed.",0

SECTION .rodata
..@d28$strlab:
	DW	0,1
	DD	0
	DQ	-1,7
..@d28:
		DB	"TObject",0

SECTION .rodata
_$SYSTEM$_Ld29:
		DB	"Error: instance is not allocated.",0

SECTION .rodata
_$SYSTEM$_Ld30:
		DB	"Error: io handles.",0

SECTION .rodata
..@d31$strlab:
	DW	0,1
	DD	0
	DQ	-1,2
..@d31:
		DB	13,10,0

SECTION .rodata
..@d32$strlab:
	DW	0,1
	DD	0
	DQ	-1,5
..@d32:
		DB	"xxxxx",0

SECTION .rodata
_$SYSTEM$_Ld33:
		DB	"Message: %s",0

SECTION .rodata
_$SYSTEM$_Ld34:
		DB	"Title  : %s",0

SECTION .rodata
_$SYSTEM$_Ld35:
		DB	"%s",0

SECTION .rodata
_$SYSTEM$_Ld36:
		DB	"%s",13,10,0

SECTION .rodata
..@d37$strlab:
	DW	0,1
	DD	0
	DQ	-1,14
..@d37:
		DB	"PChar(AString)",0

SECTION .rodata
_$SYSTEM$_Ld38:
		DB	"Error: could not read data.",0

SECTION .rodata
_$SYSTEM$_Ld39:
		DB	"chars read: %d",13,10,0

SECTION .rodata
..@d40$strlab:
	DW	0,1
	DD	0
	DQ	-1,9
..@d40:
		DB	"uhuhuhuhu",0

SECTION .rodata
_$SYSTEM$_Ld41:
		DB	"Error: invalide handle.",0

SECTION .rodata
..@d42$strlab:
	DW	0,1
	DD	0
	DQ	-1,4
..@d42:
		DB	"TCPU",0

SECTION .rodata
_$SYSTEM$_Ld43:
		DB	"memory 5555",0

SECTION .rodata
..@d44$strlab:
	DW	0,1
	DD	0
	DQ	-1,7
..@d44:
		DB	"TMemory",0

SECTION .rodata
..@d45$strlab:
	DW	0,1
	DD	0
	DQ	-1,8
..@d45:
		DB	"start...",0

SECTION .rodata
..@d46$strlab:
	DW	0,1
	DD	0
	DQ	-1,7
..@d46:
		DB	"TSystem",0

SECTION .rodata
_$SYSTEM$_Ld54:
		DB	"---< hocus pocus >-----",13,10,0

SECTION .rodata
_$SYSTEM$_Ld55:
		DB	"---< the end >-----",13,10,0
; End asmlist al_typedconsts
; Begin asmlist al_rtti

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_formal
RTTI_$SYSTEM_$$_formal	DB	0,7
		DB	"$formal"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_typedformal
RTTI_$SYSTEM_$$_typedformal	DB	0,12
		DB	"$typedformal"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_void
RTTI_$SYSTEM_$$_void	DB	1,5
		DB	"$void"
	DB	1
	DD	0,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_POINTER
RTTI_$SYSTEM_$$_POINTER	DB	29,7
		DB	"Pointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BYTE
RTTI_$SYSTEM_$$_BYTE	DB	1,4
		DB	"Byte"
	DB	1
	DD	0,255

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SHORTINT
RTTI_$SYSTEM_$$_SHORTINT	DB	1,8
		DB	"ShortInt"
	DB	0
	DD	-128,127

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WORD
RTTI_$SYSTEM_$$_WORD	DB	1,4
		DB	"Word"
	DB	3
	DD	0,65535

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SMALLINT
RTTI_$SYSTEM_$$_SMALLINT	DB	1,8
		DB	"SmallInt"
	DB	2
	DD	-32768,32767

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LONGWORD
RTTI_$SYSTEM_$$_LONGWORD	DB	1,8
		DB	"LongWord"
	DB	5
	DD	0,-1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LONGINT
RTTI_$SYSTEM_$$_LONGINT	DB	1,7
		DB	"LongInt"
	DB	4
	DD	-2147483648,2147483647

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_QWORD
RTTI_$SYSTEM_$$_QWORD	DB	20,5
		DB	"QWord"
	DB	7
	DQ	0,-1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_INT64
RTTI_$SYSTEM_$$_INT64	DB	19,5
		DB	"Int64"
	DB	6
	DQ	-9223372036854775808,9223372036854775807

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_uint128
RTTI_$SYSTEM_$$_uint128	DB	1,8
		DB	"$uint128"
	DB	1
	DD	0,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_int128
RTTI_$SYSTEM_$$_int128	DB	1,7
		DB	"$int128"
	DB	1
	DD	0,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN
RTTI_$SYSTEM_$$_BOOLEAN	DB	18,7
		DB	"Boolean"
	DB	1
	DD	0,1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN8
RTTI_$SYSTEM_$$_BOOLEAN8	DB	18,8
		DB	"Boolean8"
	DB	1
	DD	0,1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN16
RTTI_$SYSTEM_$$_BOOLEAN16	DB	18,9
		DB	"Boolean16"
	DB	3
	DD	0,1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN32
RTTI_$SYSTEM_$$_BOOLEAN32	DB	18,9
		DB	"Boolean32"
	DB	5
	DD	0,1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN64
RTTI_$SYSTEM_$$_BOOLEAN64	DB	18,9
		DB	"Boolean64"
	DB	7
	DQ	0,1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BYTEBOOL
RTTI_$SYSTEM_$$_BYTEBOOL	DB	18,8
		DB	"ByteBool"
	DB	0
	DD	-2147483648,2147483647

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WORDBOOL
RTTI_$SYSTEM_$$_WORDBOOL	DB	18,8
		DB	"WordBool"
	DB	2
	DD	-2147483648,2147483647

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LONGBOOL
RTTI_$SYSTEM_$$_LONGBOOL	DB	18,8
		DB	"LongBool"
	DB	4
	DD	-2147483648,2147483647

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_QWORDBOOL
RTTI_$SYSTEM_$$_QWORDBOOL	DB	18,9
		DB	"QWordBool"
	DB	6
	DQ	-9223372036854775808,9223372036854775807

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_CHAR
RTTI_$SYSTEM_$$_CHAR	DB	2,4
		DB	"Char"
	DB	1
	DD	0,255

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WIDECHAR
RTTI_$SYSTEM_$$_WIDECHAR	DB	17,8
		DB	"WideChar"
	DB	3
	DD	0,65535

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SHORTSTRING
RTTI_$SYSTEM_$$_SHORTSTRING	DB	7,11
		DB	"ShortString"
	DB	255

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_longstring
RTTI_$SYSTEM_$$_longstring	DB	8,11
		DB	"$longstring"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_ANSISTRING
RTTI_$SYSTEM_$$_ANSISTRING	DB	9,10
		DB	"AnsiString"
	DW	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WIDESTRING
RTTI_$SYSTEM_$$_WIDESTRING	DB	10,10
		DB	"WideString"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_UNICODESTRING
RTTI_$SYSTEM_$$_UNICODESTRING	DB	24,13
		DB	"UnicodeString"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_OPENSTRING
RTTI_$SYSTEM_$$_OPENSTRING	DB	7,10
		DB	"OpenString"
	DB	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SINGLE
RTTI_$SYSTEM_$$_SINGLE	DB	4,6
		DB	"Single"
	DB	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_DOUBLE
RTTI_$SYSTEM_$$_DOUBLE	DB	4,6
		DB	"Double"
	DB	1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_s80real
RTTI_$SYSTEM_$$_s80real	DB	4,8
		DB	"$s80real"
	DB	2

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_sc80real
RTTI_$SYSTEM_$$_sc80real	DB	4,9
		DB	"$sc80real"
	DB	2

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_CURRENCY
RTTI_$SYSTEM_$$_CURRENCY	DB	4,8
		DB	"Currency"
	DB	4

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_char_pointer
RTTI_$SYSTEM_$$_char_pointer	DB	29,13
		DB	"$char_pointer"
	DQ	RTTI_$SYSTEM_$$_CHAR$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_widechar_pointer
RTTI_$SYSTEM_$$_widechar_pointer	DB	29,17
		DB	"$widechar_pointer"
	DQ	RTTI_$SYSTEM_$$_WIDECHAR$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_parentfp_void_pointer
RTTI_$SYSTEM_$$_parentfp_void_pointer	DB	29,22
		DB	"$parentfp_void_pointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARPOINTER
RTTI_$SYSTEM_$$_NEARPOINTER	DB	29,11
		DB	"NearPointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARCSPOINTER
RTTI_$SYSTEM_$$_NEARCSPOINTER	DB	29,13
		DB	"NearCsPointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARDSPOINTER
RTTI_$SYSTEM_$$_NEARDSPOINTER	DB	29,13
		DB	"NearDsPointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARSSPOINTER
RTTI_$SYSTEM_$$_NEARSSPOINTER	DB	29,13
		DB	"NearSsPointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARESPOINTER
RTTI_$SYSTEM_$$_NEARESPOINTER	DB	29,13
		DB	"NearEsPointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARFSPOINTER
RTTI_$SYSTEM_$$_NEARFSPOINTER	DB	29,13
		DB	"NearFsPointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARGSPOINTER
RTTI_$SYSTEM_$$_NEARGSPOINTER	DB	29,13
		DB	"NearGsPointer"
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_openchararray
RTTI_$SYSTEM_$$_openchararray	DB	12,4
		DB	"Char"
	DQ	0,0,RTTI_$SYSTEM_$$_CHAR$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_INT64$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_file
RTTI_$SYSTEM_$$_file	DB	0,5
		DB	"$file"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_VARIANT
RTTI_$SYSTEM_$$_VARIANT	DB	11,7
		DB	"Variant"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_OLEVARIANT
RTTI_$SYSTEM_$$_OLEVARIANT	DB	11,10
		DB	"OleVariant"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXT
RTTI_$SYSTEM_$$_TEXT	DB	0,4
		DB	"Text"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TYPEDFILE
RTTI_$SYSTEM_$$_TYPEDFILE	DB	0,9
		DB	"TypedFile"

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$___vtbl_ptr_type
INIT_$SYSTEM_$$___vtbl_ptr_type	DB	13,16
		DB	"$__vtbl_ptr_type"
	DQ	0
	DD	40
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_pvmt
RTTI_$SYSTEM_$$_pvmt	DB	29,5
		DB	"$pvmt"
	DQ	RTTI_$SYSTEM_$$___vtbl_ptr_type$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000037
RTTI_$SYSTEM_$$_def00000037	DB	29,0
	DQ	RTTI_$SYSTEM_$$_SHORTSTRING$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000038
RTTI_$SYSTEM_$$_def00000038	DB	12,0
	DQ	8,1,RTTI_$SYSTEM_$$_POINTER$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$___vtbl_ptr_type
RTTI_$SYSTEM_$$___vtbl_ptr_type	DB	13,16
		DB	"$__vtbl_ptr_type"
	DQ	INIT_$SYSTEM_$$___vtbl_ptr_type
	DD	40,5
	DQ	RTTI_$SYSTEM_$$_INT64$indirect,0,RTTI_$SYSTEM_$$_INT64$indirect,8,RTTI_$SYSTEM_$$_pvmt$indirect
	DQ	16,RTTI_$SYSTEM_$$_def00000037$indirect,24,RTTI_$SYSTEM_$$_def00000038$indirect
	DQ	32

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_vtblarray
RTTI_$SYSTEM_$$_vtblarray	DB	12,10
		DB	"$vtblarray"
	DQ	16,2,RTTI_$SYSTEM_$$_pvmt$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_methodpointer
INIT_$SYSTEM_$$_methodpointer	DB	13,14
		DB	"$methodpointer"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_methodpointer
RTTI_$SYSTEM_$$_methodpointer	DB	13,14
		DB	"$methodpointer"
	DQ	INIT_$SYSTEM_$$_methodpointer
	DD	16,2
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect,0,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_nestedprocpointer
INIT_$SYSTEM_$$_nestedprocpointer	DB	13,18
		DB	"$nestedprocpointer"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_nestedprocpointer
RTTI_$SYSTEM_$$_nestedprocpointer	DB	13,18
		DB	"$nestedprocpointer"
	DQ	INIT_$SYSTEM_$$_nestedprocpointer
	DD	16,2
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect,0,RTTI_$SYSTEM_$$_parentfp_void_pointer$indirect
	DQ	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SHORTBYTE
RTTI_$SYSTEM_$$_SHORTBYTE	DB	1,9
		DB	"ShortBYTE"
	DB	0
	DD	-128,127

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SHORTWORD
RTTI_$SYSTEM_$$_SHORTWORD	DB	1,9
		DB	"ShortWORD"
	DB	2
	DD	-32768,32767

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SHORTDWORD
RTTI_$SYSTEM_$$_SHORTDWORD	DB	1,10
		DB	"ShortDWORD"
	DB	4
	DD	-2147483648,2147483647

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SHORTQWORD
RTTI_$SYSTEM_$$_SHORTQWORD	DB	19,10
		DB	"ShortQWORD"
	DB	6
	DQ	-9223372036854775808,9223372036854775807

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LONGBYTE
RTTI_$SYSTEM_$$_LONGBYTE	DB	1,8
		DB	"LongBYTE"
	DB	1
	DD	0,255

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LONGDWORD
RTTI_$SYSTEM_$$_LONGDWORD	DB	1,9
		DB	"LongDWORD"
	DB	5
	DD	0,-1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LONGQWORD
RTTI_$SYSTEM_$$_LONGQWORD	DB	20,9
		DB	"LongQWORD"
	DB	7
	DQ	0,-1

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBYTE
RTTI_$SYSTEM_$$_PBYTE	DB	29,5
		DB	"PByte"
	DQ	RTTI_$SYSTEM_$$_BYTE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPOINTER
RTTI_$SYSTEM_$$_PPOINTER	DB	29,8
		DB	"PPointer"
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCHAR
RTTI_$SYSTEM_$$_PCHAR	DB	29,5
		DB	"PChar"
	DQ	RTTI_$SYSTEM_$$_CHAR$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSHORTSTRING
RTTI_$SYSTEM_$$_PSHORTSTRING	DB	29,12
		DB	"PShortString"
	DQ	RTTI_$SYSTEM_$$_SHORTSTRING$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PANSICHAR
RTTI_$SYSTEM_$$_PANSICHAR	DB	29,9
		DB	"PAnsiChar"
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PANSISTRING
RTTI_$SYSTEM_$$_PANSISTRING	DB	29,11
		DB	"PAnsiString"
	DQ	RTTI_$SYSTEM_$$_ANSISTRING$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_RAWBYTESTRING
RTTI_$SYSTEM_$$_RAWBYTESTRING	DB	9,13
		DB	"RawByteString"
	DW	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_ULONG_PTR
RTTI_$SYSTEM_$$_ULONG_PTR	DB	29,9
		DB	"ULONG_PTR"
	DQ	RTTI_$SYSTEM_$$_LONGDWORD$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PLONG
RTTI_$SYSTEM_$$_PLONG	DB	29,5
		DB	"PLONG"
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TMSGSTRTABLE
INIT_$SYSTEM_$$_TMSGSTRTABLE	DB	13,12
		DB	"TMsgStrTable"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TMSGSTRTABLE
RTTI_$SYSTEM_$$_TMSGSTRTABLE	DB	13,12
		DB	"TMsgStrTable"
	DQ	INIT_$SYSTEM_$$_TMSGSTRTABLE
	DD	16,2
	DQ	RTTI_$SYSTEM_$$_PSHORTSTRING$indirect,0,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE
INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE	DB	13,19
		DB	"TStringMessageTable"
	DQ	0
	DD	24
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000050
RTTI_$SYSTEM_$$_def00000050	DB	12,0
	DQ	16,1,RTTI_$SYSTEM_$$_TMSGSTRTABLE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE
RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE	DB	13,19
		DB	"TStringMessageTable"
	DQ	INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE
	DD	24,2
	DQ	RTTI_$SYSTEM_$$_LONGDWORD$indirect,0,RTTI_$SYSTEM_$$_def00000050$indirect
	DQ	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE
RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE	DB	29,19
		DB	"PStringMessageTable"
	DQ	RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TGUID
INIT_$SYSTEM_$$_TGUID	DB	13,5
		DB	"TGuid"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000055
RTTI_$SYSTEM_$$_def00000055	DB	12,0
	DQ	8,8,RTTI_$SYSTEM_$$_BYTE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000056
RTTI_$SYSTEM_$$_def00000056	DB	12,0
	DQ	8,8,RTTI_$SYSTEM_$$_BYTE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000057
RTTI_$SYSTEM_$$_def00000057	DB	12,0
	DQ	6,6,RTTI_$SYSTEM_$$_BYTE$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TGUID
RTTI_$SYSTEM_$$_TGUID	DB	13,5
		DB	"TGuid"
	DQ	INIT_$SYSTEM_$$_TGUID
	DD	16,14
	DQ	RTTI_$SYSTEM_$$_LONGDWORD$indirect,0,RTTI_$SYSTEM_$$_WORD$indirect,4
	DQ	RTTI_$SYSTEM_$$_WORD$indirect,6,RTTI_$SYSTEM_$$_def00000055$indirect
	DQ	8,RTTI_$SYSTEM_$$_LONGDWORD$indirect,0,RTTI_$SYSTEM_$$_WORD$indirect
	DQ	4,RTTI_$SYSTEM_$$_WORD$indirect,6,RTTI_$SYSTEM_$$_def00000056$indirect
	DQ	8,RTTI_$SYSTEM_$$_LONGDWORD$indirect,0,RTTI_$SYSTEM_$$_WORD$indirect
	DQ	4,RTTI_$SYSTEM_$$_WORD$indirect,6,RTTI_$SYSTEM_$$_BYTE$indirect,8,RTTI_$SYSTEM_$$_BYTE$indirect
	DQ	9,RTTI_$SYSTEM_$$_def00000057$indirect,10

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PGUID
RTTI_$SYSTEM_$$_PGUID	DB	29,5
		DB	"PGuid"
	DQ	RTTI_$SYSTEM_$$_TGUID$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE	DB	3,19
		DB	"TInterfaceEntryType"
	DB	5
	DD	0,6
	DQ	0
	DB	10
		DB	"etStandard"
	DB	21
		DB	"etVirtualMethodResult"
	DB	20
		DB	"etStaticMethodResult"
	DB	12
		DB	"etFieldValue"
	DB	20
		DB	"etVirtualMethodClass"
	DB	19
		DB	"etStaticMethodClass"
	DB	17
		DB	"etFieldValueClass"
	DB	6
		DB	"system"
	DB	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o	DD	7,3
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+92
	DD	6
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+146
	DD	0
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+38
	DD	5
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+126
	DD	2
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+71
	DD	4
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+105
	DD	1
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+49

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s	DD	0
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+38,RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+49
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+71,RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+92
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+105,RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+126
	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+146

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TINTERFACEENTRY
INIT_$SYSTEM_$$_TINTERFACEENTRY	DB	13,15
		DB	"TInterfaceEntry"
	DQ	0
	DD	56
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEENTRY
RTTI_$SYSTEM_$$_TINTERFACEENTRY	DB	13,15
		DB	"TInterfaceEntry"
	DQ	INIT_$SYSTEM_$$_TINTERFACEENTRY
	DD	56,8
	DQ	RTTI_$SYSTEM_$$_PGUID$indirect,0,RTTI_$SYSTEM_$$_PSHORTSTRING$indirect
	DQ	8,RTTI_$SYSTEM_$$_POINTER$indirect,16,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	24,RTTI_$SYSTEM_$$_LONGDWORD$indirect,32,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	32,RTTI_$SYSTEM_$$_POINTER$indirect,40,RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE$indirect
	DQ	48

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TINTERFACETABLE
INIT_$SYSTEM_$$_TINTERFACETABLE	DB	13,15
		DB	"TInterfaceTable"
	DQ	0
	DD	64
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000005D
RTTI_$SYSTEM_$$_def0000005D	DB	12,0
	DQ	56,1,RTTI_$SYSTEM_$$_TINTERFACEENTRY$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SHORTINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACETABLE
RTTI_$SYSTEM_$$_TINTERFACETABLE	DB	13,15
		DB	"TInterfaceTable"
	DQ	INIT_$SYSTEM_$$_TINTERFACETABLE
	DD	64,2
	DQ	RTTI_$SYSTEM_$$_LONGDWORD$indirect,0,RTTI_$SYSTEM_$$_def0000005D$indirect
	DQ	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PINTERFACETABLE
RTTI_$SYSTEM_$$_PINTERFACETABLE	DB	29,15
		DB	"PInterfaceTable"
	DQ	RTTI_$SYSTEM_$$_TINTERFACETABLE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TVMT
INIT_$SYSTEM_$$_TVMT	DB	13,4
		DB	"TVmt"
	DQ	0
	DD	192
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TVMT
RTTI_$SYSTEM_$$_TVMT	DB	13,4
		DB	"TVmt"
	DQ	INIT_$SYSTEM_$$_TVMT
	DD	192,25
	DQ	RTTI_$SYSTEM_$$_LONGDWORD$indirect,0,RTTI_$SYSTEM_$$_LONGDWORD$indirect
	DQ	4,RTTI_$SYSTEM_$$_PPVMT$indirect,8,RTTI_$SYSTEM_$$_PSHORTSTRING$indirect
	DQ	16,RTTI_$SYSTEM_$$_POINTER$indirect,24,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	32,RTTI_$SYSTEM_$$_POINTER$indirect,40,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	48,RTTI_$SYSTEM_$$_POINTER$indirect,56,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	64,RTTI_$SYSTEM_$$_PINTERFACETABLE$indirect,72,RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE$indirect
	DQ	80,RTTI_$SYSTEM_$$_POINTER$indirect,88,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	96,RTTI_$SYSTEM_$$_POINTER$indirect,104,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	112,RTTI_$SYSTEM_$$_POINTER$indirect,120,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	128,RTTI_$SYSTEM_$$_POINTER$indirect,136,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	144,RTTI_$SYSTEM_$$_POINTER$indirect,152,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	160,RTTI_$SYSTEM_$$_POINTER$indirect,168,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	176,RTTI_$SYSTEM_$$_POINTER$indirect,184

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PVMT
RTTI_$SYSTEM_$$_PVMT	DB	29,4
		DB	"PVmt"
	DQ	RTTI_$SYSTEM_$$_TVMT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPVMT
RTTI_$SYSTEM_$$_PPVMT	DB	29,5
		DB	"PPVmt"
	DQ	RTTI_$SYSTEM_$$_PVMT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_JMP_BUF
INIT_$SYSTEM_$$_JMP_BUF	DB	13,7
		DB	"jmp_buf"
	DQ	0
	DD	36
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_JMP_BUF
RTTI_$SYSTEM_$$_JMP_BUF	DB	13,7
		DB	"jmp_buf"
	DQ	INIT_$SYSTEM_$$_JMP_BUF
	DD	36,6
	DQ	RTTI_$SYSTEM_$$_LONGDWORD$indirect,0,RTTI_$SYSTEM_$$_LONGDWORD$indirect
	DQ	4,RTTI_$SYSTEM_$$_LONGDWORD$indirect,8,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	12,RTTI_$SYSTEM_$$_POINTER$indirect,20,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	28

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PJMP_BUF
RTTI_$SYSTEM_$$_PJMP_BUF	DB	29,8
		DB	"PJmp_buf"
	DQ	RTTI_$SYSTEM_$$_JMP_BUF$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TEXCEPTADDR
INIT_$SYSTEM_$$_TEXCEPTADDR	DB	13,11
		DB	"TExceptAddr"
	DQ	0
	DD	24
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXCEPTADDR
RTTI_$SYSTEM_$$_TEXCEPTADDR	DB	13,11
		DB	"TExceptAddr"
	DQ	INIT_$SYSTEM_$$_TEXCEPTADDR
	DD	24,3
	DQ	RTTI_$SYSTEM_$$_PJMP_BUF$indirect,0,RTTI_$SYSTEM_$$_PEXCEPTADDR$indirect
	DQ	8,RTTI_$SYSTEM_$$_LONGDWORD$indirect,16

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXCEPTADDR
RTTI_$SYSTEM_$$_PEXCEPTADDR	DB	29,11
		DB	"PExceptAddr"
	DQ	RTTI_$SYSTEM_$$_TEXCEPTADDR$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_FILEREC
INIT_$SYSTEM_$$_FILEREC	DB	13,7
		DB	"FileRec"
	DQ	0
	DD	4
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_FILEREC
RTTI_$SYSTEM_$$_FILEREC	DB	13,7
		DB	"FileRec"
	DQ	INIT_$SYSTEM_$$_FILEREC
	DD	4,1
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTYPEKIND
RTTI_$SYSTEM_$$_TTYPEKIND	DB	3,9
		DB	"TTypeKind"
	DB	5
	DD	0,29
	DQ	0
	DB	9
		DB	"tkUnknown"
	DB	9
		DB	"tkInteger"
	DB	6
		DB	"tkChar"
	DB	13
		DB	"tkEnumeration"
	DB	7
		DB	"tkFloat"
	DB	5
		DB	"tkSet"
	DB	8
		DB	"tkMethod"
	DB	9
		DB	"tkSString"
	DB	9
		DB	"tkLString"
	DB	9
		DB	"tkAString"
	DB	9
		DB	"tkWString"
	DB	9
		DB	"tkVariant"
	DB	7
		DB	"tkArray"
	DB	8
		DB	"tkRecord"
	DB	11
		DB	"tkInterface"
	DB	7
		DB	"tkClass"
	DB	8
		DB	"tkObject"
	DB	7
		DB	"tkWChar"
	DB	6
		DB	"tkBool"
	DB	7
		DB	"tkInt64"
	DB	7
		DB	"tkQWord"
	DB	10
		DB	"tkDynArray"
	DB	14
		DB	"tkInterfaceRaw"
	DB	9
		DB	"tkProcVar"
	DB	9
		DB	"tkUString"
	DB	7
		DB	"tkUChar"
	DB	8
		DB	"tkHelper"
	DB	6
		DB	"tkFile"
	DB	10
		DB	"tkClassRef"
	DB	9
		DB	"tkPointer"
	DB	6
		DB	"system"
	DB	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTYPEKIND_s2o
RTTI_$SYSTEM_$$_TTYPEKIND_s2o	DD	30,12
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+142
	DD	9
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+112
	DD	18
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+196
	DD	2
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+48
	DD	15
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+171
	DD	28
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+289
	DD	21
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+219
	DD	3
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+55
	DD	27
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+282
	DD	4
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+69
	DD	26
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+273
	DD	19
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+203
	DD	1
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+38
	DD	14
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+159
	DD	22
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+230
	DD	8
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+102
	DD	6
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+83
	DD	16
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+179
	DD	29
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+300
	DD	23
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+245
	DD	20
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+211
	DD	13
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+150
	DD	5
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+77
	DD	7
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+92
	DD	25
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+265
	DD	0
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+28
	DD	24
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+255
	DD	11
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+132
	DD	17
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+188
	DD	10
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+122

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTYPEKIND_o2s
RTTI_$SYSTEM_$$_TTYPEKIND_o2s	DD	0
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+28,RTTI_$SYSTEM_$$_TTYPEKIND+38,RTTI_$SYSTEM_$$_TTYPEKIND+48
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+55,RTTI_$SYSTEM_$$_TTYPEKIND+69,RTTI_$SYSTEM_$$_TTYPEKIND+77
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+83,RTTI_$SYSTEM_$$_TTYPEKIND+92,RTTI_$SYSTEM_$$_TTYPEKIND+102
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+112,RTTI_$SYSTEM_$$_TTYPEKIND+122,RTTI_$SYSTEM_$$_TTYPEKIND+132
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+142,RTTI_$SYSTEM_$$_TTYPEKIND+150,RTTI_$SYSTEM_$$_TTYPEKIND+159
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+171,RTTI_$SYSTEM_$$_TTYPEKIND+179,RTTI_$SYSTEM_$$_TTYPEKIND+188
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+196,RTTI_$SYSTEM_$$_TTYPEKIND+203,RTTI_$SYSTEM_$$_TTYPEKIND+211
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+219,RTTI_$SYSTEM_$$_TTYPEKIND+230,RTTI_$SYSTEM_$$_TTYPEKIND+245
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+255,RTTI_$SYSTEM_$$_TTYPEKIND+265,RTTI_$SYSTEM_$$_TTYPEKIND+273
	DQ	RTTI_$SYSTEM_$$_TTYPEKIND+282,RTTI_$SYSTEM_$$_TTYPEKIND+289,RTTI_$SYSTEM_$$_TTYPEKIND+300

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PTEXT
RTTI_$SYSTEM_$$_PTEXT	DB	29,5
		DB	"PText"
	DQ	RTTI_$SYSTEM_$$_TEXT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TEXTREC
INIT_$SYSTEM_$$_TEXTREC	DB	13,7
		DB	"TextRec"
	DQ	0
	DD	20
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXTREC
RTTI_$SYSTEM_$$_TEXTREC	DB	13,7
		DB	"TextRec"
	DQ	INIT_$SYSTEM_$$_TEXTREC
	DD	20,5
	DQ	RTTI_$SYSTEM_$$_LONGDWORD$indirect,0,RTTI_$SYSTEM_$$_LONGDWORD$indirect
	DQ	4,RTTI_$SYSTEM_$$_LONGDWORD$indirect,8,RTTI_$SYSTEM_$$_LONGDWORD$indirect
	DQ	12,RTTI_$SYSTEM_$$_LONGDWORD$indirect,16

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TANSIREC
INIT_$SYSTEM_$$_TANSIREC	DB	13,8
		DB	"TAnsiRec"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TANSIREC
RTTI_$SYSTEM_$$_TANSIREC	DB	13,8
		DB	"TAnsiRec"
	DQ	INIT_$SYSTEM_$$_TANSIREC
	DD	8,2
	DQ	RTTI_$SYSTEM_$$_LONGDWORD$indirect,0,RTTI_$SYSTEM_$$_SHORTDWORD$indirect
	DQ	4

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PANSIREC
RTTI_$SYSTEM_$$_PANSIREC	DB	29,8
		DB	"PAnsiRec"
	DQ	RTTI_$SYSTEM_$$_TANSIREC$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PHANDLE
RTTI_$SYSTEM_$$_PHANDLE	DB	29,7
		DB	"PHandle"
	DQ	RTTI_$SYSTEM_$$_LONGWORD$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000088
RTTI_$SYSTEM_$$_def00000088	DB	12,10
		DB	"AnsiString"
	DQ	0,0,RTTI_$SYSTEM_$$_ANSISTRING$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_INT64$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TENTRYINFORMATION
INIT_$SYSTEM_$$_TENTRYINFORMATION	DB	13,17
		DB	"TEntryInformation"
	DQ	0
	DD	56
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000009F
RTTI_$SYSTEM_$$_def0000009F	DB	23,0,0,0
	DQ	0
	DB	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TENTRYINFORMATION
RTTI_$SYSTEM_$$_TENTRYINFORMATION	DB	13,17
		DB	"TEntryInformation"
	DQ	INIT_$SYSTEM_$$_TENTRYINFORMATION
	DD	56,7
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect,0,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	8,RTTI_$SYSTEM_$$_POINTER$indirect,16,RTTI_$SYSTEM_$$_POINTER$indirect
	DQ	24,RTTI_$SYSTEM_$$_POINTER$indirect,32,RTTI_$SYSTEM_$$_def0000009F$indirect
	DQ	40,RTTI_$SYSTEM_$$_BOOLEAN$indirect,48

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LPVOID
RTTI_$SYSTEM_$$_LPVOID	DB	29,6
		DB	"LPVOID"
	DQ	RTTI_$SYSTEM_$$_POINTER$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LPCVOID
RTTI_$SYSTEM_$$_LPCVOID	DB	29,7
		DB	"LPCVOID"
	DQ	RTTI_$SYSTEM_$$_LPVOID$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDWORD
RTTI_$SYSTEM_$$_PDWORD	DB	29,6
		DB	"PDWORD"
	DQ	RTTI_$SYSTEM_$$_LONGDWORD$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_POINT
INIT_$SYSTEM_$$_POINT	DB	13,5
		DB	"POINT"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_POINT
RTTI_$SYSTEM_$$_POINT	DB	13,5
		DB	"POINT"
	DQ	INIT_$SYSTEM_$$_POINT
	DD	8,2
	DQ	RTTI_$SYSTEM_$$_LONGINT$indirect,0,RTTI_$SYSTEM_$$_LONGINT$indirect
	DQ	4

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPOINT
RTTI_$SYSTEM_$$_PPOINT	DB	29,6
		DB	"PPoint"
	DQ	RTTI_$SYSTEM_$$_POINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TMESSAGE
INIT_$SYSTEM_$$_TMESSAGE	DB	13,8
		DB	"TMessage"
	DQ	0
	DD	32
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TMESSAGE
RTTI_$SYSTEM_$$_TMESSAGE	DB	13,8
		DB	"TMessage"
	DQ	INIT_$SYSTEM_$$_TMESSAGE
	DD	32,7
	DQ	RTTI_$SYSTEM_$$_LONGDWORD$indirect,0,RTTI_$SYSTEM_$$_LONGDWORD$indirect
	DQ	4,RTTI_$SYSTEM_$$_LONGDWORD$indirect,8,RTTI_$SYSTEM_$$_LONGDWORD$indirect
	DQ	12,RTTI_$SYSTEM_$$_LONGDWORD$indirect,16,RTTI_$SYSTEM_$$_POINT$indirect
	DQ	20,RTTI_$SYSTEM_$$_LONGDWORD$indirect,28

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PMESSAGE
RTTI_$SYSTEM_$$_PMESSAGE	DB	29,8
		DB	"PMessage"
	DQ	RTTI_$SYSTEM_$$_TMESSAGE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_STD_HANDLES
RTTI_$SYSTEM_$$_STD_HANDLES	DB	3,11
		DB	"STD_HANDLES"
	DB	5
	DD	-12,-10
	DQ	0
	DB	7
		DB	"shInput"
	DB	8
		DB	"shOutput"
	DB	7
		DB	"shError"
	DB	6
		DB	"system"
	DB	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_STD_HANDLES_s2o
RTTI_$SYSTEM_$$_STD_HANDLES_s2o	DD	3,-12
	DQ	RTTI_$SYSTEM_$$_STD_HANDLES+47
	DD	-10
	DQ	RTTI_$SYSTEM_$$_STD_HANDLES+30
	DD	-11
	DQ	RTTI_$SYSTEM_$$_STD_HANDLES+38

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_STD_HANDLES_o2s
RTTI_$SYSTEM_$$_STD_HANDLES_o2s	DD	0
	DQ	RTTI_$SYSTEM_$$_STD_HANDLES+47,RTTI_$SYSTEM_$$_STD_HANDLES+38,RTTI_$SYSTEM_$$_STD_HANDLES+30

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_COORD
INIT_$SYSTEM_$$_COORD	DB	13,5
		DB	"COORD"
	DQ	0
	DD	4
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_COORD
RTTI_$SYSTEM_$$_COORD	DB	13,5
		DB	"COORD"
	DQ	INIT_$SYSTEM_$$_COORD
	DD	4,2
	DQ	RTTI_$SYSTEM_$$_SMALLINT$indirect,0,RTTI_$SYSTEM_$$_SMALLINT$indirect
	DQ	2

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCORD
RTTI_$SYSTEM_$$_PCORD	DB	29,5
		DB	"PCORD"
	DQ	RTTI_$SYSTEM_$$_COORD$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_SMALL_RECT
INIT_$SYSTEM_$$_SMALL_RECT	DB	13,10
		DB	"SMALL_RECT"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SMALL_RECT
RTTI_$SYSTEM_$$_SMALL_RECT	DB	13,10
		DB	"SMALL_RECT"
	DQ	INIT_$SYSTEM_$$_SMALL_RECT
	DD	8,4
	DQ	RTTI_$SYSTEM_$$_SMALLINT$indirect,0,RTTI_$SYSTEM_$$_SMALLINT$indirect
	DQ	2,RTTI_$SYSTEM_$$_SMALLINT$indirect,4,RTTI_$SYSTEM_$$_SMALLINT$indirect
	DQ	6

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSMALL_RECT
RTTI_$SYSTEM_$$_PSMALL_RECT	DB	29,11
		DB	"PSMALL_RECT"
	DQ	RTTI_$SYSTEM_$$_SMALL_RECT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO
INIT_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO	DB	13,26
		DB	"CONSOLE_SCREEN_BUFFER_INFO"
	DQ	0
	DD	22
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO
RTTI_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO	DB	13,26
		DB	"CONSOLE_SCREEN_BUFFER_INFO"
	DQ	INIT_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO
	DD	22,5
	DQ	RTTI_$SYSTEM_$$_COORD$indirect,0,RTTI_$SYSTEM_$$_COORD$indirect,4,RTTI_$SYSTEM_$$_WORD$indirect
	DQ	8,RTTI_$SYSTEM_$$_SMALL_RECT$indirect,10,RTTI_$SYSTEM_$$_COORD$indirect
	DQ	18

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCONSOLE_SCREEN_BUFFER_INFO
RTTI_$SYSTEM_$$_PCONSOLE_SCREEN_BUFFER_INFO	DB	29,27
		DB	"PCONSOLE_SCREEN_BUFFER_INFO"
	DQ	RTTI_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL
INIT_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL	DB	13,27
		DB	"CONSOLE_READCONSOLE_CONTROL"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL
RTTI_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL	DB	13,27
		DB	"CONSOLE_READCONSOLE_CONTROL"
	DQ	INIT_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL
	DD	16,4
	DQ	RTTI_$SYSTEM_$$_LONGDWORD$indirect,0,RTTI_$SYSTEM_$$_LONGDWORD$indirect
	DQ	4,RTTI_$SYSTEM_$$_LONGDWORD$indirect,8,RTTI_$SYSTEM_$$_LONGDWORD$indirect
	DQ	12

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCONSOLE_READCONSOLE_CONTROL
RTTI_$SYSTEM_$$_PCONSOLE_READCONSOLE_CONTROL	DB	29,28
		DB	"PCONSOLE_READCONSOLE_CONTROL"
	DQ	RTTI_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_SECURITY_ATTRIBUTES
INIT_$SYSTEM_$$_SECURITY_ATTRIBUTES	DB	13,19
		DB	"SECURITY_ATTRIBUTES"
	DQ	0
	DD	24
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SECURITY_ATTRIBUTES
RTTI_$SYSTEM_$$_SECURITY_ATTRIBUTES	DB	13,19
		DB	"SECURITY_ATTRIBUTES"
	DQ	INIT_$SYSTEM_$$_SECURITY_ATTRIBUTES
	DD	24,3
	DQ	RTTI_$SYSTEM_$$_LONGDWORD$indirect,0,RTTI_$SYSTEM_$$_LPVOID$indirect
	DQ	8,RTTI_$SYSTEM_$$_QWORD$indirect,16

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSECURITY_ATTRIBUTES
RTTI_$SYSTEM_$$_PSECURITY_ATTRIBUTES	DB	29,20
		DB	"PSECURITY_ATTRIBUTES"
	DQ	RTTI_$SYSTEM_$$_SECURITY_ATTRIBUTES$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LPSECURITY_ATTRIBUTES
RTTI_$SYSTEM_$$_LPSECURITY_ATTRIBUTES	DB	29,21
		DB	"LPSECURITY_ATTRIBUTES"
	DQ	RTTI_$SYSTEM_$$_SECURITY_ATTRIBUTES$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSECURITYATTRIBUTES
RTTI_$SYSTEM_$$_PSECURITYATTRIBUTES	DB	29,19
		DB	"PSecurityAttributes"
	DQ	RTTI_$SYSTEM_$$_SECURITY_ATTRIBUTES$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$__OVERLAPPED
INIT_$SYSTEM_$$__OVERLAPPED	DB	13,11
		DB	"_OVERLAPPED"
	DQ	0
	DD	32
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$__OVERLAPPED
RTTI_$SYSTEM_$$__OVERLAPPED	DB	13,11
		DB	"_OVERLAPPED"
	DQ	INIT_$SYSTEM_$$__OVERLAPPED
	DD	32,5
	DQ	RTTI_$SYSTEM_$$_ULONG_PTR$indirect,0,RTTI_$SYSTEM_$$_ULONG_PTR$indirect
	DQ	8,RTTI_$SYSTEM_$$_LONGDWORD$indirect,16,RTTI_$SYSTEM_$$_LONGDWORD$indirect
	DQ	20,RTTI_$SYSTEM_$$_LONGWORD$indirect,24

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_POVERLAPPED
RTTI_$SYSTEM_$$_POVERLAPPED	DB	29,11
		DB	"POverlapped"
	DQ	RTTI_$SYSTEM_$$__OVERLAPPED$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TOBJECT
INIT_$SYSTEM_$$_TOBJECT	DB	15,7
		DB	"TObject"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TOBJECT
RTTI_$SYSTEM_$$_TOBJECT	DB	15,7
		DB	"TObject"
	DQ	VMT_$SYSTEM_$$_TOBJECT,0
	DW	0
	DB	6
		DB	"system"
	DW	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TCLASS
RTTI_$SYSTEM_$$_TCLASS	DB	28,6
		DB	"TClass"
	DQ	RTTI_$SYSTEM_$$_TOBJECT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TLIST
INIT_$SYSTEM_$$_TLIST	DB	15,5
		DB	"TList"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TLIST
RTTI_$SYSTEM_$$_TLIST	DB	15,5
		DB	"TList"
	DQ	VMT_$SYSTEM_$$_TLIST,RTTI_$SYSTEM_$$_TOBJECT$indirect
	DW	0
	DB	6
		DB	"system"
	DW	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TPROCEDURE
RTTI_$SYSTEM_$$_TPROCEDURE	DB	23,10
		DB	"TProcedure"
	DB	0,0
	DQ	0
	DB	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TINITFINALREC
INIT_$SYSTEM_$$_TINITFINALREC	DB	13,13
		DB	"TInitFinalRec"
	DQ	0
	DD	16
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINITFINALREC
RTTI_$SYSTEM_$$_TINITFINALREC	DB	13,13
		DB	"TInitFinalRec"
	DQ	INIT_$SYSTEM_$$_TINITFINALREC
	DD	16,2
	DQ	RTTI_$SYSTEM_$$_TPROCEDURE$indirect,0,RTTI_$SYSTEM_$$_TPROCEDURE$indirect
	DQ	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TINITFINALTABLE
INIT_$SYSTEM_$$_TINITFINALTABLE	DB	13,15
		DB	"TInitFinalTable"
	DQ	0
	DD	16400
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000190
RTTI_$SYSTEM_$$_def00000190	DB	12,0
	DQ	16384,1024,RTTI_$SYSTEM_$$_TINITFINALREC$indirect
	DB	1
	DQ	RTTI_$SYSTEM_$$_SMALLINT$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINITFINALTABLE
RTTI_$SYSTEM_$$_TINITFINALTABLE	DB	13,15
		DB	"TInitFinalTable"
	DQ	INIT_$SYSTEM_$$_TINITFINALTABLE
	DD	16400,3
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,0,RTTI_$SYSTEM_$$_QWORD$indirect,8,RTTI_$SYSTEM_$$_def00000190$indirect
	DQ	16

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PINITFINALTABLE
RTTI_$SYSTEM_$$_PINITFINALTABLE	DB	29,15
		DB	"PInitFinalTable"
	DQ	RTTI_$SYSTEM_$$_TINITFINALTABLE$indirect

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TDOSCMD
INIT_$SYSTEM_$$_TDOSCMD	DB	15,7
		DB	"TDosCmd"
	DQ	0
	DD	8
	DQ	0,0
	DD	1
	DQ	RTTI_$SYSTEM_$$_ANSISTRING$indirect,16

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TDOSCMD
RTTI_$SYSTEM_$$_TDOSCMD	DB	15,7
		DB	"TDosCmd"
	DQ	VMT_$SYSTEM_$$_TDOSCMD,RTTI_$SYSTEM_$$_TOBJECT$indirect
	DW	0
	DB	6
		DB	"system"
	DW	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_WINDOWS_CLASS
INIT_$SYSTEM_$$_WINDOWS_CLASS	DB	15,13
		DB	"Windows_Class"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WINDOWS_CLASS
RTTI_$SYSTEM_$$_WINDOWS_CLASS	DB	15,13
		DB	"Windows_Class"
	DQ	VMT_$SYSTEM_$$_WINDOWS_CLASS,RTTI_$SYSTEM_$$_TOBJECT$indirect
	DW	0
	DB	6
		DB	"system"
	DW	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TVGAIO
INIT_$SYSTEM_$$_TVGAIO	DB	13,6
		DB	"TVgaIO"
	DQ	0
	DD	0
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TVGAIO
RTTI_$SYSTEM_$$_TVGAIO	DB	13,6
		DB	"TVgaIO"
	DQ	INIT_$SYSTEM_$$_TVGAIO
	DD	0,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TSYSTEMIO
INIT_$SYSTEM_$$_TSYSTEMIO	DB	13,9
		DB	"TSystemIO"
	DQ	0
	DD	0
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TSYSTEMIO
RTTI_$SYSTEM_$$_TSYSTEMIO	DB	13,9
		DB	"TSystemIO"
	DQ	INIT_$SYSTEM_$$_TSYSTEMIO
	DD	0,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TCPU
INIT_$SYSTEM_$$_TCPU	DB	15,4
		DB	"TCPU"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TCPU
RTTI_$SYSTEM_$$_TCPU	DB	15,4
		DB	"TCPU"
	DQ	VMT_$SYSTEM_$$_TCPU,RTTI_$SYSTEM_$$_TOBJECT$indirect
	DW	0
	DB	6
		DB	"system"
	DW	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TMEMORY
INIT_$SYSTEM_$$_TMEMORY	DB	15,7
		DB	"TMemory"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TMEMORY
RTTI_$SYSTEM_$$_TMEMORY	DB	15,7
		DB	"TMemory"
	DQ	VMT_$SYSTEM_$$_TMEMORY,RTTI_$SYSTEM_$$_TOBJECT$indirect
	DW	0
	DB	6
		DB	"system"
	DW	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TSYSTEM
INIT_$SYSTEM_$$_TSYSTEM	DB	15,7
		DB	"TSystem"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TSYSTEM
RTTI_$SYSTEM_$$_TSYSTEM	DB	15,7
		DB	"TSystem"
	DQ	VMT_$SYSTEM_$$_TSYSTEM,RTTI_$SYSTEM_$$_TOBJECT$indirect
	DW	0
	DB	6
		DB	"system"
	DW	0
; End asmlist al_rtti
; Begin asmlist al_indirectglobals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TOBJECT$indirect
VMT_$SYSTEM_$$_TOBJECT$indirect	DQ	VMT_$SYSTEM_$$_TOBJECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TLIST$indirect
VMT_$SYSTEM_$$_TLIST$indirect	DQ	VMT_$SYSTEM_$$_TLIST

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TDOSCMD$indirect
VMT_$SYSTEM_$$_TDOSCMD$indirect	DQ	VMT_$SYSTEM_$$_TDOSCMD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_WINDOWS_CLASS$indirect
VMT_$SYSTEM_$$_WINDOWS_CLASS$indirect	DQ	VMT_$SYSTEM_$$_WINDOWS_CLASS

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TCPU$indirect
VMT_$SYSTEM_$$_TCPU$indirect	DQ	VMT_$SYSTEM_$$_TCPU

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TMEMORY$indirect
VMT_$SYSTEM_$$_TMEMORY$indirect	DQ	VMT_$SYSTEM_$$_TMEMORY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TSYSTEM$indirect
VMT_$SYSTEM_$$_TSYSTEM$indirect	DQ	VMT_$SYSTEM_$$_TSYSTEM

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_formal$indirect
RTTI_$SYSTEM_$$_formal$indirect	DQ	RTTI_$SYSTEM_$$_formal

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_typedformal$indirect
RTTI_$SYSTEM_$$_typedformal$indirect	DQ	RTTI_$SYSTEM_$$_typedformal

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_void$indirect
RTTI_$SYSTEM_$$_void$indirect	DQ	RTTI_$SYSTEM_$$_void

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_POINTER$indirect
RTTI_$SYSTEM_$$_POINTER$indirect	DQ	RTTI_$SYSTEM_$$_POINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BYTE$indirect
RTTI_$SYSTEM_$$_BYTE$indirect	DQ	RTTI_$SYSTEM_$$_BYTE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SHORTINT$indirect
RTTI_$SYSTEM_$$_SHORTINT$indirect	DQ	RTTI_$SYSTEM_$$_SHORTINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WORD$indirect
RTTI_$SYSTEM_$$_WORD$indirect	DQ	RTTI_$SYSTEM_$$_WORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SMALLINT$indirect
RTTI_$SYSTEM_$$_SMALLINT$indirect	DQ	RTTI_$SYSTEM_$$_SMALLINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LONGWORD$indirect
RTTI_$SYSTEM_$$_LONGWORD$indirect	DQ	RTTI_$SYSTEM_$$_LONGWORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LONGINT$indirect
RTTI_$SYSTEM_$$_LONGINT$indirect	DQ	RTTI_$SYSTEM_$$_LONGINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_QWORD$indirect
RTTI_$SYSTEM_$$_QWORD$indirect	DQ	RTTI_$SYSTEM_$$_QWORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_INT64$indirect
RTTI_$SYSTEM_$$_INT64$indirect	DQ	RTTI_$SYSTEM_$$_INT64

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_uint128$indirect
RTTI_$SYSTEM_$$_uint128$indirect	DQ	RTTI_$SYSTEM_$$_uint128

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_int128$indirect
RTTI_$SYSTEM_$$_int128$indirect	DQ	RTTI_$SYSTEM_$$_int128

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN$indirect
RTTI_$SYSTEM_$$_BOOLEAN$indirect	DQ	RTTI_$SYSTEM_$$_BOOLEAN

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN8$indirect
RTTI_$SYSTEM_$$_BOOLEAN8$indirect	DQ	RTTI_$SYSTEM_$$_BOOLEAN8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN16$indirect
RTTI_$SYSTEM_$$_BOOLEAN16$indirect	DQ	RTTI_$SYSTEM_$$_BOOLEAN16

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN32$indirect
RTTI_$SYSTEM_$$_BOOLEAN32$indirect	DQ	RTTI_$SYSTEM_$$_BOOLEAN32

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BOOLEAN64$indirect
RTTI_$SYSTEM_$$_BOOLEAN64$indirect	DQ	RTTI_$SYSTEM_$$_BOOLEAN64

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_BYTEBOOL$indirect
RTTI_$SYSTEM_$$_BYTEBOOL$indirect	DQ	RTTI_$SYSTEM_$$_BYTEBOOL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WORDBOOL$indirect
RTTI_$SYSTEM_$$_WORDBOOL$indirect	DQ	RTTI_$SYSTEM_$$_WORDBOOL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LONGBOOL$indirect
RTTI_$SYSTEM_$$_LONGBOOL$indirect	DQ	RTTI_$SYSTEM_$$_LONGBOOL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_QWORDBOOL$indirect
RTTI_$SYSTEM_$$_QWORDBOOL$indirect	DQ	RTTI_$SYSTEM_$$_QWORDBOOL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_CHAR$indirect
RTTI_$SYSTEM_$$_CHAR$indirect	DQ	RTTI_$SYSTEM_$$_CHAR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WIDECHAR$indirect
RTTI_$SYSTEM_$$_WIDECHAR$indirect	DQ	RTTI_$SYSTEM_$$_WIDECHAR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SHORTSTRING$indirect
RTTI_$SYSTEM_$$_SHORTSTRING$indirect	DQ	RTTI_$SYSTEM_$$_SHORTSTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_longstring$indirect
RTTI_$SYSTEM_$$_longstring$indirect	DQ	RTTI_$SYSTEM_$$_longstring

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_ANSISTRING$indirect
RTTI_$SYSTEM_$$_ANSISTRING$indirect	DQ	RTTI_$SYSTEM_$$_ANSISTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WIDESTRING$indirect
RTTI_$SYSTEM_$$_WIDESTRING$indirect	DQ	RTTI_$SYSTEM_$$_WIDESTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_UNICODESTRING$indirect
RTTI_$SYSTEM_$$_UNICODESTRING$indirect	DQ	RTTI_$SYSTEM_$$_UNICODESTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_OPENSTRING$indirect
RTTI_$SYSTEM_$$_OPENSTRING$indirect	DQ	RTTI_$SYSTEM_$$_OPENSTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SINGLE$indirect
RTTI_$SYSTEM_$$_SINGLE$indirect	DQ	RTTI_$SYSTEM_$$_SINGLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_DOUBLE$indirect
RTTI_$SYSTEM_$$_DOUBLE$indirect	DQ	RTTI_$SYSTEM_$$_DOUBLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_s80real$indirect
RTTI_$SYSTEM_$$_s80real$indirect	DQ	RTTI_$SYSTEM_$$_s80real

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_sc80real$indirect
RTTI_$SYSTEM_$$_sc80real$indirect	DQ	RTTI_$SYSTEM_$$_sc80real

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_CURRENCY$indirect
RTTI_$SYSTEM_$$_CURRENCY$indirect	DQ	RTTI_$SYSTEM_$$_CURRENCY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_char_pointer$indirect
RTTI_$SYSTEM_$$_char_pointer$indirect	DQ	RTTI_$SYSTEM_$$_char_pointer

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_widechar_pointer$indirect
RTTI_$SYSTEM_$$_widechar_pointer$indirect	DQ	RTTI_$SYSTEM_$$_widechar_pointer

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_parentfp_void_pointer$indirect
RTTI_$SYSTEM_$$_parentfp_void_pointer$indirect	DQ	RTTI_$SYSTEM_$$_parentfp_void_pointer

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARPOINTER$indirect
RTTI_$SYSTEM_$$_NEARPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_NEARPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARCSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARCSPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_NEARCSPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARDSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARDSPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_NEARDSPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARSSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARSSPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_NEARSSPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARESPOINTER$indirect
RTTI_$SYSTEM_$$_NEARESPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_NEARESPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARFSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARFSPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_NEARFSPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_NEARGSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARGSPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_NEARGSPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_openchararray$indirect
RTTI_$SYSTEM_$$_openchararray$indirect	DQ	RTTI_$SYSTEM_$$_openchararray

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_file$indirect
RTTI_$SYSTEM_$$_file$indirect	DQ	RTTI_$SYSTEM_$$_file

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_VARIANT$indirect
RTTI_$SYSTEM_$$_VARIANT$indirect	DQ	RTTI_$SYSTEM_$$_VARIANT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_OLEVARIANT$indirect
RTTI_$SYSTEM_$$_OLEVARIANT$indirect	DQ	RTTI_$SYSTEM_$$_OLEVARIANT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXT$indirect
RTTI_$SYSTEM_$$_TEXT$indirect	DQ	RTTI_$SYSTEM_$$_TEXT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TYPEDFILE$indirect
RTTI_$SYSTEM_$$_TYPEDFILE$indirect	DQ	RTTI_$SYSTEM_$$_TYPEDFILE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$___vtbl_ptr_type$indirect
INIT_$SYSTEM_$$___vtbl_ptr_type$indirect	DQ	INIT_$SYSTEM_$$___vtbl_ptr_type

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_pvmt$indirect
RTTI_$SYSTEM_$$_pvmt$indirect	DQ	RTTI_$SYSTEM_$$_pvmt

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000037$indirect
RTTI_$SYSTEM_$$_def00000037$indirect	DQ	RTTI_$SYSTEM_$$_def00000037

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000038$indirect
RTTI_$SYSTEM_$$_def00000038$indirect	DQ	RTTI_$SYSTEM_$$_def00000038

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$___vtbl_ptr_type$indirect
RTTI_$SYSTEM_$$___vtbl_ptr_type$indirect	DQ	RTTI_$SYSTEM_$$___vtbl_ptr_type

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_vtblarray$indirect
RTTI_$SYSTEM_$$_vtblarray$indirect	DQ	RTTI_$SYSTEM_$$_vtblarray

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_methodpointer$indirect
INIT_$SYSTEM_$$_methodpointer$indirect	DQ	INIT_$SYSTEM_$$_methodpointer

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_methodpointer$indirect
RTTI_$SYSTEM_$$_methodpointer$indirect	DQ	RTTI_$SYSTEM_$$_methodpointer

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_nestedprocpointer$indirect
INIT_$SYSTEM_$$_nestedprocpointer$indirect	DQ	INIT_$SYSTEM_$$_nestedprocpointer

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_nestedprocpointer$indirect
RTTI_$SYSTEM_$$_nestedprocpointer$indirect	DQ	RTTI_$SYSTEM_$$_nestedprocpointer

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SHORTBYTE$indirect
RTTI_$SYSTEM_$$_SHORTBYTE$indirect	DQ	RTTI_$SYSTEM_$$_SHORTBYTE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SHORTWORD$indirect
RTTI_$SYSTEM_$$_SHORTWORD$indirect	DQ	RTTI_$SYSTEM_$$_SHORTWORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SHORTDWORD$indirect
RTTI_$SYSTEM_$$_SHORTDWORD$indirect	DQ	RTTI_$SYSTEM_$$_SHORTDWORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SHORTQWORD$indirect
RTTI_$SYSTEM_$$_SHORTQWORD$indirect	DQ	RTTI_$SYSTEM_$$_SHORTQWORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LONGBYTE$indirect
RTTI_$SYSTEM_$$_LONGBYTE$indirect	DQ	RTTI_$SYSTEM_$$_LONGBYTE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LONGDWORD$indirect
RTTI_$SYSTEM_$$_LONGDWORD$indirect	DQ	RTTI_$SYSTEM_$$_LONGDWORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LONGQWORD$indirect
RTTI_$SYSTEM_$$_LONGQWORD$indirect	DQ	RTTI_$SYSTEM_$$_LONGQWORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PBYTE$indirect
RTTI_$SYSTEM_$$_PBYTE$indirect	DQ	RTTI_$SYSTEM_$$_PBYTE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPOINTER$indirect
RTTI_$SYSTEM_$$_PPOINTER$indirect	DQ	RTTI_$SYSTEM_$$_PPOINTER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCHAR$indirect
RTTI_$SYSTEM_$$_PCHAR$indirect	DQ	RTTI_$SYSTEM_$$_PCHAR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSHORTSTRING$indirect
RTTI_$SYSTEM_$$_PSHORTSTRING$indirect	DQ	RTTI_$SYSTEM_$$_PSHORTSTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PANSICHAR$indirect
RTTI_$SYSTEM_$$_PANSICHAR$indirect	DQ	RTTI_$SYSTEM_$$_PANSICHAR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PANSISTRING$indirect
RTTI_$SYSTEM_$$_PANSISTRING$indirect	DQ	RTTI_$SYSTEM_$$_PANSISTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_RAWBYTESTRING$indirect
RTTI_$SYSTEM_$$_RAWBYTESTRING$indirect	DQ	RTTI_$SYSTEM_$$_RAWBYTESTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_ULONG_PTR$indirect
RTTI_$SYSTEM_$$_ULONG_PTR$indirect	DQ	RTTI_$SYSTEM_$$_ULONG_PTR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PLONG$indirect
RTTI_$SYSTEM_$$_PLONG$indirect	DQ	RTTI_$SYSTEM_$$_PLONG

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TMSGSTRTABLE$indirect
INIT_$SYSTEM_$$_TMSGSTRTABLE$indirect	DQ	INIT_$SYSTEM_$$_TMSGSTRTABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TMSGSTRTABLE$indirect
RTTI_$SYSTEM_$$_TMSGSTRTABLE$indirect	DQ	RTTI_$SYSTEM_$$_TMSGSTRTABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect
INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect	DQ	INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000050$indirect
RTTI_$SYSTEM_$$_def00000050$indirect	DQ	RTTI_$SYSTEM_$$_def00000050

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect
RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect	DQ	RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE$indirect
RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE$indirect	DQ	RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TGUID$indirect
INIT_$SYSTEM_$$_TGUID$indirect	DQ	INIT_$SYSTEM_$$_TGUID

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000055$indirect
RTTI_$SYSTEM_$$_def00000055$indirect	DQ	RTTI_$SYSTEM_$$_def00000055

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000056$indirect
RTTI_$SYSTEM_$$_def00000056$indirect	DQ	RTTI_$SYSTEM_$$_def00000056

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000057$indirect
RTTI_$SYSTEM_$$_def00000057$indirect	DQ	RTTI_$SYSTEM_$$_def00000057

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TGUID$indirect
RTTI_$SYSTEM_$$_TGUID$indirect	DQ	RTTI_$SYSTEM_$$_TGUID

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PGUID$indirect
RTTI_$SYSTEM_$$_PGUID$indirect	DQ	RTTI_$SYSTEM_$$_PGUID

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE$indirect
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE$indirect	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o$indirect
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o$indirect	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s$indirect
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s$indirect	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TINTERFACEENTRY$indirect
INIT_$SYSTEM_$$_TINTERFACEENTRY$indirect	DQ	INIT_$SYSTEM_$$_TINTERFACEENTRY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACEENTRY$indirect
RTTI_$SYSTEM_$$_TINTERFACEENTRY$indirect	DQ	RTTI_$SYSTEM_$$_TINTERFACEENTRY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TINTERFACETABLE$indirect
INIT_$SYSTEM_$$_TINTERFACETABLE$indirect	DQ	INIT_$SYSTEM_$$_TINTERFACETABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000005D$indirect
RTTI_$SYSTEM_$$_def0000005D$indirect	DQ	RTTI_$SYSTEM_$$_def0000005D

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINTERFACETABLE$indirect
RTTI_$SYSTEM_$$_TINTERFACETABLE$indirect	DQ	RTTI_$SYSTEM_$$_TINTERFACETABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PINTERFACETABLE$indirect
RTTI_$SYSTEM_$$_PINTERFACETABLE$indirect	DQ	RTTI_$SYSTEM_$$_PINTERFACETABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TVMT$indirect
INIT_$SYSTEM_$$_TVMT$indirect	DQ	INIT_$SYSTEM_$$_TVMT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TVMT$indirect
RTTI_$SYSTEM_$$_TVMT$indirect	DQ	RTTI_$SYSTEM_$$_TVMT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PVMT$indirect
RTTI_$SYSTEM_$$_PVMT$indirect	DQ	RTTI_$SYSTEM_$$_PVMT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPVMT$indirect
RTTI_$SYSTEM_$$_PPVMT$indirect	DQ	RTTI_$SYSTEM_$$_PPVMT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_JMP_BUF$indirect
INIT_$SYSTEM_$$_JMP_BUF$indirect	DQ	INIT_$SYSTEM_$$_JMP_BUF

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_JMP_BUF$indirect
RTTI_$SYSTEM_$$_JMP_BUF$indirect	DQ	RTTI_$SYSTEM_$$_JMP_BUF

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PJMP_BUF$indirect
RTTI_$SYSTEM_$$_PJMP_BUF$indirect	DQ	RTTI_$SYSTEM_$$_PJMP_BUF

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TEXCEPTADDR$indirect
INIT_$SYSTEM_$$_TEXCEPTADDR$indirect	DQ	INIT_$SYSTEM_$$_TEXCEPTADDR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXCEPTADDR$indirect
RTTI_$SYSTEM_$$_TEXCEPTADDR$indirect	DQ	RTTI_$SYSTEM_$$_TEXCEPTADDR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PEXCEPTADDR$indirect
RTTI_$SYSTEM_$$_PEXCEPTADDR$indirect	DQ	RTTI_$SYSTEM_$$_PEXCEPTADDR

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_FILEREC$indirect
INIT_$SYSTEM_$$_FILEREC$indirect	DQ	INIT_$SYSTEM_$$_FILEREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_FILEREC$indirect
RTTI_$SYSTEM_$$_FILEREC$indirect	DQ	RTTI_$SYSTEM_$$_FILEREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTYPEKIND$indirect
RTTI_$SYSTEM_$$_TTYPEKIND$indirect	DQ	RTTI_$SYSTEM_$$_TTYPEKIND

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTYPEKIND_s2o$indirect
RTTI_$SYSTEM_$$_TTYPEKIND_s2o$indirect	DQ	RTTI_$SYSTEM_$$_TTYPEKIND_s2o

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TTYPEKIND_o2s$indirect
RTTI_$SYSTEM_$$_TTYPEKIND_o2s$indirect	DQ	RTTI_$SYSTEM_$$_TTYPEKIND_o2s

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PTEXT$indirect
RTTI_$SYSTEM_$$_PTEXT$indirect	DQ	RTTI_$SYSTEM_$$_PTEXT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TEXTREC$indirect
INIT_$SYSTEM_$$_TEXTREC$indirect	DQ	INIT_$SYSTEM_$$_TEXTREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TEXTREC$indirect
RTTI_$SYSTEM_$$_TEXTREC$indirect	DQ	RTTI_$SYSTEM_$$_TEXTREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TANSIREC$indirect
INIT_$SYSTEM_$$_TANSIREC$indirect	DQ	INIT_$SYSTEM_$$_TANSIREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TANSIREC$indirect
RTTI_$SYSTEM_$$_TANSIREC$indirect	DQ	RTTI_$SYSTEM_$$_TANSIREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PANSIREC$indirect
RTTI_$SYSTEM_$$_PANSIREC$indirect	DQ	RTTI_$SYSTEM_$$_PANSIREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PHANDLE$indirect
RTTI_$SYSTEM_$$_PHANDLE$indirect	DQ	RTTI_$SYSTEM_$$_PHANDLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000088$indirect
RTTI_$SYSTEM_$$_def00000088$indirect	DQ	RTTI_$SYSTEM_$$_def00000088

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TENTRYINFORMATION$indirect
INIT_$SYSTEM_$$_TENTRYINFORMATION$indirect	DQ	INIT_$SYSTEM_$$_TENTRYINFORMATION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def0000009F$indirect
RTTI_$SYSTEM_$$_def0000009F$indirect	DQ	RTTI_$SYSTEM_$$_def0000009F

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TENTRYINFORMATION$indirect
RTTI_$SYSTEM_$$_TENTRYINFORMATION$indirect	DQ	RTTI_$SYSTEM_$$_TENTRYINFORMATION

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LPVOID$indirect
RTTI_$SYSTEM_$$_LPVOID$indirect	DQ	RTTI_$SYSTEM_$$_LPVOID

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LPCVOID$indirect
RTTI_$SYSTEM_$$_LPCVOID$indirect	DQ	RTTI_$SYSTEM_$$_LPCVOID

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PDWORD$indirect
RTTI_$SYSTEM_$$_PDWORD$indirect	DQ	RTTI_$SYSTEM_$$_PDWORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_POINT$indirect
INIT_$SYSTEM_$$_POINT$indirect	DQ	INIT_$SYSTEM_$$_POINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_POINT$indirect
RTTI_$SYSTEM_$$_POINT$indirect	DQ	RTTI_$SYSTEM_$$_POINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PPOINT$indirect
RTTI_$SYSTEM_$$_PPOINT$indirect	DQ	RTTI_$SYSTEM_$$_PPOINT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TMESSAGE$indirect
INIT_$SYSTEM_$$_TMESSAGE$indirect	DQ	INIT_$SYSTEM_$$_TMESSAGE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TMESSAGE$indirect
RTTI_$SYSTEM_$$_TMESSAGE$indirect	DQ	RTTI_$SYSTEM_$$_TMESSAGE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PMESSAGE$indirect
RTTI_$SYSTEM_$$_PMESSAGE$indirect	DQ	RTTI_$SYSTEM_$$_PMESSAGE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_STD_HANDLES$indirect
RTTI_$SYSTEM_$$_STD_HANDLES$indirect	DQ	RTTI_$SYSTEM_$$_STD_HANDLES

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_STD_HANDLES_s2o$indirect
RTTI_$SYSTEM_$$_STD_HANDLES_s2o$indirect	DQ	RTTI_$SYSTEM_$$_STD_HANDLES_s2o

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_STD_HANDLES_o2s$indirect
RTTI_$SYSTEM_$$_STD_HANDLES_o2s$indirect	DQ	RTTI_$SYSTEM_$$_STD_HANDLES_o2s

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_COORD$indirect
INIT_$SYSTEM_$$_COORD$indirect	DQ	INIT_$SYSTEM_$$_COORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_COORD$indirect
RTTI_$SYSTEM_$$_COORD$indirect	DQ	RTTI_$SYSTEM_$$_COORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCORD$indirect
RTTI_$SYSTEM_$$_PCORD$indirect	DQ	RTTI_$SYSTEM_$$_PCORD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_SMALL_RECT$indirect
INIT_$SYSTEM_$$_SMALL_RECT$indirect	DQ	INIT_$SYSTEM_$$_SMALL_RECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SMALL_RECT$indirect
RTTI_$SYSTEM_$$_SMALL_RECT$indirect	DQ	RTTI_$SYSTEM_$$_SMALL_RECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSMALL_RECT$indirect
RTTI_$SYSTEM_$$_PSMALL_RECT$indirect	DQ	RTTI_$SYSTEM_$$_PSMALL_RECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO$indirect
INIT_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO$indirect	DQ	INIT_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO$indirect
RTTI_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO$indirect	DQ	RTTI_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCONSOLE_SCREEN_BUFFER_INFO$indirect
RTTI_$SYSTEM_$$_PCONSOLE_SCREEN_BUFFER_INFO$indirect	DQ	RTTI_$SYSTEM_$$_PCONSOLE_SCREEN_BUFFER_INFO

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL$indirect
INIT_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL$indirect	DQ	INIT_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL$indirect
RTTI_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL$indirect	DQ	RTTI_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PCONSOLE_READCONSOLE_CONTROL$indirect
RTTI_$SYSTEM_$$_PCONSOLE_READCONSOLE_CONTROL$indirect	DQ	RTTI_$SYSTEM_$$_PCONSOLE_READCONSOLE_CONTROL

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_SECURITY_ATTRIBUTES$indirect
INIT_$SYSTEM_$$_SECURITY_ATTRIBUTES$indirect	DQ	INIT_$SYSTEM_$$_SECURITY_ATTRIBUTES

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_SECURITY_ATTRIBUTES$indirect
RTTI_$SYSTEM_$$_SECURITY_ATTRIBUTES$indirect	DQ	RTTI_$SYSTEM_$$_SECURITY_ATTRIBUTES

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSECURITY_ATTRIBUTES$indirect
RTTI_$SYSTEM_$$_PSECURITY_ATTRIBUTES$indirect	DQ	RTTI_$SYSTEM_$$_PSECURITY_ATTRIBUTES

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_LPSECURITY_ATTRIBUTES$indirect
RTTI_$SYSTEM_$$_LPSECURITY_ATTRIBUTES$indirect	DQ	RTTI_$SYSTEM_$$_LPSECURITY_ATTRIBUTES

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PSECURITYATTRIBUTES$indirect
RTTI_$SYSTEM_$$_PSECURITYATTRIBUTES$indirect	DQ	RTTI_$SYSTEM_$$_PSECURITYATTRIBUTES

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$__OVERLAPPED$indirect
INIT_$SYSTEM_$$__OVERLAPPED$indirect	DQ	INIT_$SYSTEM_$$__OVERLAPPED

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$__OVERLAPPED$indirect
RTTI_$SYSTEM_$$__OVERLAPPED$indirect	DQ	RTTI_$SYSTEM_$$__OVERLAPPED

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_POVERLAPPED$indirect
RTTI_$SYSTEM_$$_POVERLAPPED$indirect	DQ	RTTI_$SYSTEM_$$_POVERLAPPED

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TOBJECT$indirect
INIT_$SYSTEM_$$_TOBJECT$indirect	DQ	INIT_$SYSTEM_$$_TOBJECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TOBJECT$indirect
RTTI_$SYSTEM_$$_TOBJECT$indirect	DQ	RTTI_$SYSTEM_$$_TOBJECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TCLASS$indirect
RTTI_$SYSTEM_$$_TCLASS$indirect	DQ	RTTI_$SYSTEM_$$_TCLASS

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TLIST$indirect
INIT_$SYSTEM_$$_TLIST$indirect	DQ	INIT_$SYSTEM_$$_TLIST

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TLIST$indirect
RTTI_$SYSTEM_$$_TLIST$indirect	DQ	RTTI_$SYSTEM_$$_TLIST

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TPROCEDURE$indirect
RTTI_$SYSTEM_$$_TPROCEDURE$indirect	DQ	RTTI_$SYSTEM_$$_TPROCEDURE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TINITFINALREC$indirect
INIT_$SYSTEM_$$_TINITFINALREC$indirect	DQ	INIT_$SYSTEM_$$_TINITFINALREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINITFINALREC$indirect
RTTI_$SYSTEM_$$_TINITFINALREC$indirect	DQ	RTTI_$SYSTEM_$$_TINITFINALREC

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TINITFINALTABLE$indirect
INIT_$SYSTEM_$$_TINITFINALTABLE$indirect	DQ	INIT_$SYSTEM_$$_TINITFINALTABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_def00000190$indirect
RTTI_$SYSTEM_$$_def00000190$indirect	DQ	RTTI_$SYSTEM_$$_def00000190

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TINITFINALTABLE$indirect
RTTI_$SYSTEM_$$_TINITFINALTABLE$indirect	DQ	RTTI_$SYSTEM_$$_TINITFINALTABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_PINITFINALTABLE$indirect
RTTI_$SYSTEM_$$_PINITFINALTABLE$indirect	DQ	RTTI_$SYSTEM_$$_PINITFINALTABLE

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TDOSCMD$indirect
INIT_$SYSTEM_$$_TDOSCMD$indirect	DQ	INIT_$SYSTEM_$$_TDOSCMD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TDOSCMD$indirect
RTTI_$SYSTEM_$$_TDOSCMD$indirect	DQ	RTTI_$SYSTEM_$$_TDOSCMD

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_WINDOWS_CLASS$indirect
INIT_$SYSTEM_$$_WINDOWS_CLASS$indirect	DQ	INIT_$SYSTEM_$$_WINDOWS_CLASS

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_WINDOWS_CLASS$indirect
RTTI_$SYSTEM_$$_WINDOWS_CLASS$indirect	DQ	RTTI_$SYSTEM_$$_WINDOWS_CLASS

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TVGAIO$indirect
INIT_$SYSTEM_$$_TVGAIO$indirect	DQ	INIT_$SYSTEM_$$_TVGAIO

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TVGAIO$indirect
RTTI_$SYSTEM_$$_TVGAIO$indirect	DQ	RTTI_$SYSTEM_$$_TVGAIO

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TSYSTEMIO$indirect
INIT_$SYSTEM_$$_TSYSTEMIO$indirect	DQ	INIT_$SYSTEM_$$_TSYSTEMIO

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TSYSTEMIO$indirect
RTTI_$SYSTEM_$$_TSYSTEMIO$indirect	DQ	RTTI_$SYSTEM_$$_TSYSTEMIO

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TCPU$indirect
INIT_$SYSTEM_$$_TCPU$indirect	DQ	INIT_$SYSTEM_$$_TCPU

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TCPU$indirect
RTTI_$SYSTEM_$$_TCPU$indirect	DQ	RTTI_$SYSTEM_$$_TCPU

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TMEMORY$indirect
INIT_$SYSTEM_$$_TMEMORY$indirect	DQ	INIT_$SYSTEM_$$_TMEMORY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TMEMORY$indirect
RTTI_$SYSTEM_$$_TMEMORY$indirect	DQ	RTTI_$SYSTEM_$$_TMEMORY

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_TSYSTEM$indirect
INIT_$SYSTEM_$$_TSYSTEM$indirect	DQ	INIT_$SYSTEM_$$_TSYSTEM

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TSYSTEM$indirect
RTTI_$SYSTEM_$$_TSYSTEM$indirect	DQ	RTTI_$SYSTEM_$$_TSYSTEM
; End asmlist al_indirectglobals
; Begin asmlist al_dwarf_frame

SECTION .debug_frame
..@c445:
	DD	..@c447-..@c446
..@c446:
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
..@c447:
	DD	..@c449-..@c448
..@c448:
	DQ	..@c1,..@c2-..@c1
	DB	4
	DD	..@c3-..@c1
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c449:
	DD	..@c451-..@c450
..@c450:
	DQ	..@c4,..@c5-..@c4
	DB	4
	DD	..@c6-..@c4
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c451:
	DD	..@c453-..@c452
..@c452:
	DQ	..@c7,..@c8-..@c7
	DB	4
	DD	..@c9-..@c7
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c453:
	DD	..@c455-..@c454
..@c454:
	DQ	..@c10,..@c11-..@c10
	DB	4
	DD	..@c12-..@c10
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c455:
	DD	..@c457-..@c456
..@c456:
	DQ	..@c13,..@c14-..@c13
	DB	4
	DD	..@c15-..@c13
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c457:
	DD	..@c459-..@c458
..@c458:
	DQ	..@c16,..@c17-..@c16
	DB	4
	DD	..@c18-..@c16
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c459:
	DD	..@c461-..@c460
..@c460:
	DQ	..@c19,..@c20-..@c19
	DB	4
	DD	..@c21-..@c19
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c461:
	DD	..@c463-..@c462
..@c462:
	DQ	..@c22,..@c23-..@c22
	DB	4
	DD	..@c24-..@c22
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c463:
	DD	..@c465-..@c464
..@c464:
	DQ	..@c25,..@c26-..@c25
	DB	4
	DD	..@c27-..@c25
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c465:
	DD	..@c467-..@c466
..@c466:
	DQ	..@c28,..@c29-..@c28
	DB	4
	DD	..@c30-..@c28
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c467:
	DD	..@c469-..@c468
..@c468:
	DQ	..@c31,..@c32-..@c31
	DB	4
	DD	..@c33-..@c31
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c469:
	DD	..@c471-..@c470
..@c470:
	DQ	..@c34,..@c35-..@c34
	DB	4
	DD	..@c36-..@c34
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c471:
	DD	..@c473-..@c472
..@c472:
	DQ	..@c37,..@c38-..@c37
	ALIGN 4,DB 0
..@c473:
	DD	..@c475-..@c474
..@c474:
	DQ	..@c39,..@c40-..@c39
	ALIGN 4,DB 0
..@c475:
	DD	..@c477-..@c476
..@c476:
	DQ	..@c41,..@c42-..@c41
	ALIGN 4,DB 0
..@c477:
	DD	..@c479-..@c478
..@c478:
	DQ	..@c43,..@c44-..@c43
	ALIGN 4,DB 0
..@c479:
	DD	..@c481-..@c480
..@c480:
	DQ	..@c45,..@c46-..@c45
	ALIGN 4,DB 0
..@c481:
	DD	..@c483-..@c482
..@c482:
	DQ	..@c47,..@c48-..@c47
	DB	4
	DD	..@c49-..@c47
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c483:
	DD	..@c485-..@c484
..@c484:
	DQ	..@c50,..@c51-..@c50
	ALIGN 4,DB 0
..@c485:
	DD	..@c487-..@c486
..@c486:
	DQ	..@c52,..@c53-..@c52
	ALIGN 4,DB 0
..@c487:
	DD	..@c489-..@c488
..@c488:
	DQ	..@c54,..@c55-..@c54
	DB	4
	DD	..@c56-..@c54
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c489:
	DD	..@c491-..@c490
..@c490:
	DQ	..@c57,..@c58-..@c57
	ALIGN 4,DB 0
..@c491:
	DD	..@c493-..@c492
..@c492:
	DQ	..@c59,..@c60-..@c59
	ALIGN 4,DB 0
..@c493:
	DD	..@c495-..@c494
..@c494:
	DQ	..@c61,..@c62-..@c61
	ALIGN 4,DB 0
..@c495:
	DD	..@c497-..@c496
..@c496:
	DQ	..@c63,..@c64-..@c63
	ALIGN 4,DB 0
..@c497:
	DD	..@c499-..@c498
..@c498:
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
..@c499:
	DD	..@c501-..@c500
..@c500:
	DQ	..@c70,..@c71-..@c70
	DB	4
	DD	..@c72-..@c70
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c73-..@c72
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c74-..@c73
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c501:
	DD	..@c503-..@c502
..@c502:
	DQ	..@c75,..@c76-..@c75
	ALIGN 4,DB 0
..@c503:
	DD	..@c505-..@c504
..@c504:
	DQ	..@c77,..@c78-..@c77
	DB	4
	DD	..@c79-..@c77
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c80-..@c79
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c81-..@c80
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c505:
	DD	..@c507-..@c506
..@c506:
	DQ	..@c82,..@c83-..@c82
	DB	4
	DD	..@c84-..@c82
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c85-..@c84
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c86-..@c85
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c507:
	DD	..@c509-..@c508
..@c508:
	DQ	..@c87,..@c88-..@c87
	DB	4
	DD	..@c89-..@c87
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c509:
	DD	..@c511-..@c510
..@c510:
	DQ	..@c90,..@c91-..@c90
	DB	4
	DD	..@c92-..@c90
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c511:
	DD	..@c513-..@c512
..@c512:
	DQ	..@c93,..@c94-..@c93
	DB	4
	DD	..@c95-..@c93
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c96-..@c95
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c97-..@c96
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c513:
	DD	..@c515-..@c514
..@c514:
	DQ	..@c98,..@c99-..@c98
	DB	4
	DD	..@c100-..@c98
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c515:
	DD	..@c517-..@c516
..@c516:
	DQ	..@c101,..@c102-..@c101
	ALIGN 4,DB 0
..@c517:
	DD	..@c519-..@c518
..@c518:
	DQ	..@c103,..@c104-..@c103
	ALIGN 4,DB 0
..@c519:
	DD	..@c521-..@c520
..@c520:
	DQ	..@c105,..@c106-..@c105
	ALIGN 4,DB 0
..@c521:
	DD	..@c523-..@c522
..@c522:
	DQ	..@c107,..@c108-..@c107
	ALIGN 4,DB 0
..@c523:
	DD	..@c525-..@c524
..@c524:
	DQ	..@c109,..@c110-..@c109
	ALIGN 4,DB 0
..@c525:
	DD	..@c527-..@c526
..@c526:
	DQ	..@c111,..@c112-..@c111
	ALIGN 4,DB 0
..@c527:
	DD	..@c529-..@c528
..@c528:
	DQ	..@c113,..@c114-..@c113
	ALIGN 4,DB 0
..@c529:
	DD	..@c531-..@c530
..@c530:
	DQ	..@c115,..@c116-..@c115
	ALIGN 4,DB 0
..@c531:
	DD	..@c533-..@c532
..@c532:
	DQ	..@c117,..@c118-..@c117
	ALIGN 4,DB 0
..@c533:
	DD	..@c535-..@c534
..@c534:
	DQ	..@c119,..@c120-..@c119
	DB	4
	DD	..@c121-..@c119
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c535:
	DD	..@c537-..@c536
..@c536:
	DQ	..@c122,..@c123-..@c122
	DB	4
	DD	..@c124-..@c122
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c537:
	DD	..@c539-..@c538
..@c538:
	DQ	..@c125,..@c126-..@c125
	DB	4
	DD	..@c127-..@c125
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c539:
	DD	..@c541-..@c540
..@c540:
	DQ	..@c128,..@c129-..@c128
	DB	4
	DD	..@c130-..@c128
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c541:
	DD	..@c543-..@c542
..@c542:
	DQ	..@c131,..@c132-..@c131
	DB	4
	DD	..@c133-..@c131
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c543:
	DD	..@c545-..@c544
..@c544:
	DQ	..@c134,..@c135-..@c134
	ALIGN 4,DB 0
..@c545:
	DD	..@c547-..@c546
..@c546:
	DQ	..@c136,..@c137-..@c136
	DB	4
	DD	..@c138-..@c136
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c547:
	DD	..@c549-..@c548
..@c548:
	DQ	..@c139,..@c140-..@c139
	DB	4
	DD	..@c141-..@c139
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c549:
	DD	..@c551-..@c550
..@c550:
	DQ	..@c142,..@c143-..@c142
	DB	4
	DD	..@c144-..@c142
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c551:
	DD	..@c553-..@c552
..@c552:
	DQ	..@c145,..@c146-..@c145
	DB	4
	DD	..@c147-..@c145
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c553:
	DD	..@c555-..@c554
..@c554:
	DQ	..@c148,..@c149-..@c148
	DB	4
	DD	..@c150-..@c148
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c555:
	DD	..@c557-..@c556
..@c556:
	DQ	..@c151,..@c152-..@c151
	DB	4
	DD	..@c153-..@c151
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c557:
	DD	..@c559-..@c558
..@c558:
	DQ	..@c154,..@c155-..@c154
	DB	4
	DD	..@c156-..@c154
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c559:
	DD	..@c561-..@c560
..@c560:
	DQ	..@c157,..@c158-..@c157
	DB	4
	DD	..@c159-..@c157
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c561:
	DD	..@c563-..@c562
..@c562:
	DQ	..@c160,..@c161-..@c160
	DB	4
	DD	..@c162-..@c160
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c563:
	DD	..@c565-..@c564
..@c564:
	DQ	..@c163,..@c164-..@c163
	DB	4
	DD	..@c165-..@c163
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c565:
	DD	..@c567-..@c566
..@c566:
	DQ	..@c166,..@c167-..@c166
	DB	4
	DD	..@c168-..@c166
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c567:
	DD	..@c569-..@c568
..@c568:
	DQ	..@c169,..@c170-..@c169
	DB	4
	DD	..@c171-..@c169
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c172-..@c171
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c173-..@c172
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c569:
	DD	..@c571-..@c570
..@c570:
	DQ	..@c174,..@c175-..@c174
	DB	4
	DD	..@c176-..@c174
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c571:
	DD	..@c573-..@c572
..@c572:
	DQ	..@c177,..@c178-..@c177
	ALIGN 4,DB 0
..@c573:
	DD	..@c575-..@c574
..@c574:
	DQ	..@c179,..@c180-..@c179
	ALIGN 4,DB 0
..@c575:
	DD	..@c577-..@c576
..@c576:
	DQ	..@c181,..@c182-..@c181
	DB	4
	DD	..@c183-..@c181
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c577:
	DD	..@c579-..@c578
..@c578:
	DQ	..@c184,..@c185-..@c184
	DB	4
	DD	..@c186-..@c184
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c579:
	DD	..@c581-..@c580
..@c580:
	DQ	..@c187,..@c188-..@c187
	ALIGN 4,DB 0
..@c581:
	DD	..@c583-..@c582
..@c582:
	DQ	..@c189,..@c190-..@c189
	DB	4
	DD	..@c191-..@c189
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c583:
	DD	..@c585-..@c584
..@c584:
	DQ	..@c192,..@c193-..@c192
	DB	4
	DD	..@c194-..@c192
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c585:
	DD	..@c587-..@c586
..@c586:
	DQ	..@c195,..@c196-..@c195
	ALIGN 4,DB 0
..@c587:
	DD	..@c589-..@c588
..@c588:
	DQ	..@c197,..@c198-..@c197
	DB	4
	DD	..@c199-..@c197
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c589:
	DD	..@c591-..@c590
..@c590:
	DQ	..@c200,..@c201-..@c200
	ALIGN 4,DB 0
..@c591:
	DD	..@c593-..@c592
..@c592:
	DQ	..@c202,..@c203-..@c202
	ALIGN 4,DB 0
..@c593:
	DD	..@c595-..@c594
..@c594:
	DQ	..@c204,..@c205-..@c204
	ALIGN 4,DB 0
..@c595:
	DD	..@c597-..@c596
..@c596:
	DQ	..@c206,..@c207-..@c206
	DB	4
	DD	..@c208-..@c206
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c209-..@c208
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c210-..@c209
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c597:
	DD	..@c599-..@c598
..@c598:
	DQ	..@c211,..@c212-..@c211
	DB	4
	DD	..@c213-..@c211
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c599:
	DD	..@c601-..@c600
..@c600:
	DQ	..@c214,..@c215-..@c214
	ALIGN 4,DB 0
..@c601:
	DD	..@c603-..@c602
..@c602:
	DQ	..@c216,..@c217-..@c216
	DB	4
	DD	..@c218-..@c216
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c603:
	DD	..@c605-..@c604
..@c604:
	DQ	..@c219,..@c220-..@c219
	DB	4
	DD	..@c221-..@c219
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c605:
	DD	..@c607-..@c606
..@c606:
	DQ	..@c222,..@c223-..@c222
	DB	4
	DD	..@c224-..@c222
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c225-..@c224
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c226-..@c225
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c607:
	DD	..@c609-..@c608
..@c608:
	DQ	..@c227,..@c228-..@c227
	DB	4
	DD	..@c229-..@c227
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c609:
	DD	..@c611-..@c610
..@c610:
	DQ	..@c230,..@c231-..@c230
	DB	4
	DD	..@c232-..@c230
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c611:
	DD	..@c613-..@c612
..@c612:
	DQ	..@c233,..@c234-..@c233
	ALIGN 4,DB 0
..@c613:
	DD	..@c615-..@c614
..@c614:
	DQ	..@c235,..@c236-..@c235
	DB	4
	DD	..@c237-..@c235
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c615:
	DD	..@c617-..@c616
..@c616:
	DQ	..@c238,..@c239-..@c238
	DB	4
	DD	..@c240-..@c238
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c617:
	DD	..@c619-..@c618
..@c618:
	DQ	..@c241,..@c242-..@c241
	DB	4
	DD	..@c243-..@c241
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c244-..@c243
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c245-..@c244
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c619:
	DD	..@c621-..@c620
..@c620:
	DQ	..@c246,..@c247-..@c246
	DB	4
	DD	..@c248-..@c246
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c249-..@c248
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c250-..@c249
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c621:
	DD	..@c623-..@c622
..@c622:
	DQ	..@c251,..@c252-..@c251
	DB	4
	DD	..@c253-..@c251
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c623:
	DD	..@c625-..@c624
..@c624:
	DQ	..@c254,..@c255-..@c254
	DB	4
	DD	..@c256-..@c254
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c625:
	DD	..@c627-..@c626
..@c626:
	DQ	..@c257,..@c258-..@c257
	DB	4
	DD	..@c259-..@c257
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c627:
	DD	..@c629-..@c628
..@c628:
	DQ	..@c260,..@c261-..@c260
	DB	4
	DD	..@c262-..@c260
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c629:
	DD	..@c631-..@c630
..@c630:
	DQ	..@c263,..@c264-..@c263
	DB	4
	DD	..@c265-..@c263
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c631:
	DD	..@c633-..@c632
..@c632:
	DQ	..@c266,..@c267-..@c266
	ALIGN 4,DB 0
..@c633:
	DD	..@c635-..@c634
..@c634:
	DQ	..@c268,..@c269-..@c268
	DB	4
	DD	..@c270-..@c268
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c271-..@c270
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c272-..@c271
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c635:
	DD	..@c637-..@c636
..@c636:
	DQ	..@c273,..@c274-..@c273
	DB	4
	DD	..@c275-..@c273
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c276-..@c275
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c277-..@c276
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c637:
	DD	..@c639-..@c638
..@c638:
	DQ	..@c278,..@c279-..@c278
	DB	4
	DD	..@c280-..@c278
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c639:
	DD	..@c641-..@c640
..@c640:
	DQ	..@c281,..@c282-..@c281
	DB	4
	DD	..@c283-..@c281
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c641:
	DD	..@c643-..@c642
..@c642:
	DQ	..@c284,..@c285-..@c284
	DB	4
	DD	..@c286-..@c284
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c643:
	DD	..@c645-..@c644
..@c644:
	DQ	..@c287,..@c288-..@c287
	DB	4
	DD	..@c289-..@c287
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c645:
	DD	..@c647-..@c646
..@c646:
	DQ	..@c290,..@c291-..@c290
	DB	4
	DD	..@c292-..@c290
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c647:
	DD	..@c649-..@c648
..@c648:
	DQ	..@c293,..@c294-..@c293
	DB	4
	DD	..@c295-..@c293
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c649:
	DD	..@c651-..@c650
..@c650:
	DQ	..@c296,..@c297-..@c296
	DB	4
	DD	..@c298-..@c296
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c651:
	DD	..@c653-..@c652
..@c652:
	DQ	..@c299,..@c300-..@c299
	DB	4
	DD	..@c301-..@c299
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c653:
	DD	..@c655-..@c654
..@c654:
	DQ	..@c302,..@c303-..@c302
	DB	4
	DD	..@c304-..@c302
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c655:
	DD	..@c657-..@c656
..@c656:
	DQ	..@c305,..@c306-..@c305
	DB	4
	DD	..@c307-..@c305
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c657:
	DD	..@c659-..@c658
..@c658:
	DQ	..@c308,..@c309-..@c308
	DB	4
	DD	..@c310-..@c308
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c311-..@c310
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c312-..@c311
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c659:
	DD	..@c661-..@c660
..@c660:
	DQ	..@c313,..@c314-..@c313
	DB	4
	DD	..@c315-..@c313
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c661:
	DD	..@c663-..@c662
..@c662:
	DQ	..@c316,..@c317-..@c316
	DB	4
	DD	..@c318-..@c316
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c663:
	DD	..@c665-..@c664
..@c664:
	DQ	..@c319,..@c320-..@c319
	DB	4
	DD	..@c321-..@c319
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c322-..@c321
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c323-..@c322
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c665:
	DD	..@c667-..@c666
..@c666:
	DQ	..@c324,..@c325-..@c324
	DB	4
	DD	..@c326-..@c324
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c327-..@c326
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c328-..@c327
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c667:
	DD	..@c669-..@c668
..@c668:
	DQ	..@c329,..@c330-..@c329
	DB	4
	DD	..@c331-..@c329
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c332-..@c331
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c333-..@c332
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c669:
	DD	..@c671-..@c670
..@c670:
	DQ	..@c334,..@c335-..@c334
	DB	4
	DD	..@c336-..@c334
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c337-..@c336
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c338-..@c337
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c671:
	DD	..@c673-..@c672
..@c672:
	DQ	..@c339,..@c340-..@c339
	DB	4
	DD	..@c341-..@c339
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c342-..@c341
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c343-..@c342
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c673:
	DD	..@c675-..@c674
..@c674:
	DQ	..@c344,..@c345-..@c344
	DB	4
	DD	..@c346-..@c344
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c347-..@c346
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c348-..@c347
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c675:
	DD	..@c677-..@c676
..@c676:
	DQ	..@c349,..@c350-..@c349
	DB	4
	DD	..@c351-..@c349
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c352-..@c351
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c353-..@c352
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c677:
	DD	..@c679-..@c678
..@c678:
	DQ	..@c354,..@c355-..@c354
	DB	4
	DD	..@c356-..@c354
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c357-..@c356
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c358-..@c357
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c679:
	DD	..@c681-..@c680
..@c680:
	DQ	..@c359,..@c360-..@c359
	DB	4
	DD	..@c361-..@c359
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c681:
	DD	..@c683-..@c682
..@c682:
	DQ	..@c362,..@c363-..@c362
	DB	4
	DD	..@c364-..@c362
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c365-..@c364
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c366-..@c365
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c683:
	DD	..@c685-..@c684
..@c684:
	DQ	..@c367,..@c368-..@c367
	DB	4
	DD	..@c369-..@c367
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c685:
	DD	..@c687-..@c686
..@c686:
	DQ	..@c370,..@c371-..@c370
	DB	4
	DD	..@c372-..@c370
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c687:
	DD	..@c689-..@c688
..@c688:
	DQ	..@c373,..@c374-..@c373
	DB	4
	DD	..@c375-..@c373
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c689:
	DD	..@c691-..@c690
..@c690:
	DQ	..@c376,..@c377-..@c376
	ALIGN 4,DB 0
..@c691:
	DD	..@c693-..@c692
..@c692:
	DQ	..@c378,..@c379-..@c378
	DB	4
	DD	..@c380-..@c378
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c693:
	DD	..@c695-..@c694
..@c694:
	DQ	..@c381,..@c382-..@c381
	DB	4
	DD	..@c383-..@c381
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c695:
	DD	..@c697-..@c696
..@c696:
	DQ	..@c384,..@c385-..@c384
	DB	4
	DD	..@c386-..@c384
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c387-..@c386
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c388-..@c387
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c697:
	DD	..@c699-..@c698
..@c698:
	DQ	..@c389,..@c390-..@c389
	DB	4
	DD	..@c391-..@c389
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c392-..@c391
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c393-..@c392
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c699:
	DD	..@c701-..@c700
..@c700:
	DQ	..@c394,..@c395-..@c394
	DB	4
	DD	..@c396-..@c394
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c397-..@c396
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c398-..@c397
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c701:
	DD	..@c703-..@c702
..@c702:
	DQ	..@c399,..@c400-..@c399
	DB	4
	DD	..@c401-..@c399
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c402-..@c401
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c403-..@c402
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c703:
	DD	..@c705-..@c704
..@c704:
	DQ	..@c404,..@c405-..@c404
	DB	4
	DD	..@c406-..@c404
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c705:
	DD	..@c707-..@c706
..@c706:
	DQ	..@c407,..@c408-..@c407
	DB	4
	DD	..@c409-..@c407
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c707:
	DD	..@c709-..@c708
..@c708:
	DQ	..@c410,..@c411-..@c410
	DB	4
	DD	..@c412-..@c410
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c709:
	DD	..@c711-..@c710
..@c710:
	DQ	..@c413,..@c414-..@c413
	DB	4
	DD	..@c415-..@c413
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c711:
	DD	..@c713-..@c712
..@c712:
	DQ	..@c416,..@c417-..@c416
	DB	4
	DD	..@c418-..@c416
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c713:
	DD	..@c715-..@c714
..@c714:
	DQ	..@c419,..@c420-..@c419
	DB	4
	DD	..@c421-..@c419
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c715:
	DD	..@c717-..@c716
..@c716:
	DQ	..@c422,..@c423-..@c422
	DB	4
	DD	..@c424-..@c422
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c717:
	DD	..@c719-..@c718
..@c718:
	DQ	..@c425,..@c426-..@c425
	DB	4
	DD	..@c427-..@c425
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c428-..@c427
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c429-..@c428
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c719:
	DD	..@c721-..@c720
..@c720:
	DQ	..@c430,..@c431-..@c430
	DB	4
	DD	..@c432-..@c430
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c721:
	DD	..@c723-..@c722
..@c722:
	DQ	..@c433,..@c434-..@c433
	DB	4
	DD	..@c435-..@c433
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c723:
	DD	..@c725-..@c724
..@c724:
	DQ	..@c436,..@c437-..@c436
	DB	4
	DD	..@c438-..@c436
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c725:
	DD	..@c727-..@c726
..@c726:
	DQ	..@c439,..@c440-..@c439
	DB	4
	DD	..@c441-..@c439
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c727:
	DD	..@c729-..@c728
..@c728:
	DQ	..@c442,..@c443-..@c442
	DB	4
	DD	..@c444-..@c442
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c729:
; End asmlist al_dwarf_frame

