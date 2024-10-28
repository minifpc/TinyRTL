BITS 64
default rel
CPU x64

EXTERN	PASCALMAIN
EXTERN	_$dll$user32$MessageBoxA
EXTERN	_$dll$kernel32$ExitProcess
EXTERN	_$dll$msvcrt$memset
EXTERN	_$dll$kernel32$lstrlenA
EXTERN	_$dll$ucrtbase$malloc
EXTERN	_$dll$ucrtbase$strcpy
EXTERN	_$dll$ucrtbase$strcat
EXTERN	_$dll$msvcrt$strcmp
EXTERN	INITFINAL
EXTERN	_$dll$msvcrt$printf
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
	GLOBAL SYSTEM_$$_MAIN
SYSTEM_$$_MAIN:
	GLOBAL _mainCRTStartup
_mainCRTStartup:
..@c1:
		lea	rsp,[rsp-40]
..@c3:
		call	PASCALMAIN
		nop
		lea	rsp,[rsp+40]
		ret
..@c2:

SECTION .text
SYSTEM_$$_SIZEBYTE$$BYTE:
..@c4:
		mov	al,1
		movzx	eax,al
		ret
..@c5:

SECTION .text
SYSTEM_$$_SIZECHAR$$BYTE:
..@c6:
		mov	al,2
		movzx	eax,al
		ret
..@c7:

SECTION .text
SYSTEM_$$_SIZEWORD$$BYTE:
..@c8:
		mov	al,4
		movzx	eax,al
		ret
..@c9:

SECTION .text
SYSTEM_$$_SIZEDWORD$$BYTE:
..@c10:
		mov	al,8
		movzx	eax,al
		ret
..@c11:

SECTION .text
SYSTEM_$$_SIZEQWORD$$BYTE:
..@c12:
		mov	al,16
		movzx	eax,al
		ret
..@c13:

SECTION .text
	GLOBAL fpc_doneexception
fpc_doneexception:
	GLOBAL FPC_DONEEXCEPTION
FPC_DONEEXCEPTION:
..@c14:
		lea	rsp,[rsp-40]
..@c16:
		xor	eax,eax
		lea	r8,[_$SYSTEM$_Ld1]
		lea	rdx,[_$SYSTEM$_Ld2]
		xor	ecx,ecx
		mov	r9d,eax
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c15:

SECTION .text
	GLOBAL SYSTEM_$$_FPC_EMPTYMETHOD
SYSTEM_$$_FPC_EMPTYMETHOD:
	GLOBAL FPC_EMPTYMETHOD
FPC_EMPTYMETHOD:
..@c17:
		ret
..@c18:

SECTION .text
	GLOBAL fpc_copy_proc
fpc_copy_proc:
..@c19:
		mov	rax,rcx
		ret
..@c20:

SECTION .text
	GLOBAL fpc_emptychar
fpc_emptychar:
	GLOBAL FPC_EMPTYCHAR
FPC_EMPTYCHAR:
..@c21:
		push	rbx
		lea	rsp,[rsp-32]
..@c23:
		mov	rbx,rcx
		mov	edx,1
		call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
		cmp	qword [rbx],0
		je	..@j24
		mov	rcx,qword [rbx]
		xor	r8d,r8d
		mov	edx,1
		call	SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR
		mov	rdx,qword [rbx]
		mov	rcx,rax
		mov	r8d,1
		call	SYSTEM_$$_MOVE$formal$formal$LONGDWORD
		jmp	..@j25
..@j24:
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld4]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
..@j25:
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c22:

SECTION .text
	GLOBAL fpc_addref
fpc_addref:
	GLOBAL FPC_ADDREF
FPC_ADDREF:
..@c24:
		mov	rax,rcx
		ret
..@c25:

SECTION .text
	GLOBAL fpc_decref
fpc_decref:
	GLOBAL FPC_DECREF
FPC_DECREF:
..@c26:
		mov	rax,rcx
		ret
..@c27:

SECTION .text
	GLOBAL fpc_ansistr_decr_ref
fpc_ansistr_decr_ref:
	GLOBAL FPC_ANSISTR_DECR_REF
FPC_ANSISTR_DECR_REF:
..@c28:
		mov	rax,rcx
		ret
..@c29:

SECTION .text
	GLOBAL fpc_ansistr_incr_ref
fpc_ansistr_incr_ref:
	GLOBAL FPC_ANSISTR_INCR_REF
FPC_ANSISTR_INCR_REF:
..@c30:
		mov	rax,rcx
		ret
..@c31:

SECTION .text
SYSTEM$_$fpc_char_to_ansistr$CHAR$WORD$$ANSISTRING_$$_fin$000001FD:
..@c32:
		push	rbp
..@c34:
..@c35:
		mov	rbp,rcx
..@c36:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c33:

SECTION .text
	GLOBAL fpc_char_to_ansistr
fpc_char_to_ansistr:
..@c37:
		push	rbp
..@c39:
..@c40:
		mov	rbp,rsp
..@c41:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-16],rsi
		mov	rbx,rcx
		mov	sil,dl
		mov	qword [rbp-8],0
..@j42:
		nop
..@j38:
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
..@j40:
		nop
..@j39:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_char_to_ansistr$CHAR$WORD$$ANSISTRING_$$_fin$000001FD
		mov	rbx,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c38:

SECTION .text
	GLOBAL fpc_ansistr_unique
fpc_ansistr_unique:
..@c42:
		mov	rax,qword [rcx]
		cmp	qword [rcx],0
		je	..@j43
		mov	rax,qword [rcx]
..@j43:
		ret
..@c43:

SECTION .text
SYSTEM$_$fpc_pchar_to_ansistr$PCHAR$WORD$$ANSISTRING_$$_fin$000001FE:
..@c44:
		push	rbp
..@c46:
..@c47:
		mov	rbp,rcx
..@c48:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c45:

SECTION .text
	GLOBAL fpc_pchar_to_ansistr
fpc_pchar_to_ansistr:
..@c49:
		push	rbp
..@c51:
..@c52:
		mov	rbp,rsp
..@c53:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-16],rsi
		mov	rbx,rcx
		mov	rsi,rdx
		mov	qword [rbp-8],0
..@j55:
		nop
..@j51:
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
		jne	..@j56
		lea	rcx,[FPC_EMPTYCHAR]
..@j56:
		mov	rdx,rsi
		call	_$dll$ucrtbase$strcpy
		mov	rcx,rbx
		mov	rdx,qword [rbp-8]
		call	fpc_ansistr_assign
..@j53:
		nop
..@j52:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_pchar_to_ansistr$PCHAR$WORD$$ANSISTRING_$$_fin$000001FE
		mov	rbx,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c50:

SECTION .text
	GLOBAL fpc_ansistr_assign
fpc_ansistr_assign:
	GLOBAL FPC_ANSISTR_ASSIGN
FPC_ANSISTR_ASSIGN:
..@c54:
		push	rbx
		lea	rsp,[rsp-48]
..@c56:
		mov	rbx,rcx
		mov	qword [rsp+32],rdx
		lea	rcx,[rsp+32]
		test	rcx,rcx
		jne	..@j59
		lea	rcx,[FPC_EMPTYCHAR]
..@j59:
		call	_$dll$kernel32$lstrlenA
		lea	ecx,[eax+1]
		call	_$dll$ucrtbase$malloc
		mov	qword [rbx],rax
		mov	rcx,rbx
		test	rbx,rbx
		jne	..@j60
		lea	rcx,[FPC_EMPTYCHAR]
..@j60:
		lea	rdx,[rsp+32]
		test	rdx,rdx
		jne	..@j61
		lea	rdx,[FPC_EMPTYCHAR]
..@j61:
		call	_$dll$ucrtbase$strcpy
		nop
		lea	rsp,[rsp+48]
		pop	rbx
		ret
..@c55:

SECTION .text
	GLOBAL fpc_ansistr_concat
fpc_ansistr_concat:
..@c57:
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-56]
..@c59:
		mov	rbx,rcx
		mov	rsi,rdx
		mov	rdi,r8
		mov	rcx,rsi
		test	rsi,rsi
		jne	..@j64
		lea	rcx,[FPC_EMPTYCHAR]
..@j64:
		call	_$dll$kernel32$lstrlenA
		mov	r12d,eax
		mov	rcx,rdi
		test	rdi,rdi
		jne	..@j65
		lea	rcx,[FPC_EMPTYCHAR]
..@j65:
		call	_$dll$kernel32$lstrlenA
		add	eax,r12d
		lea	ecx,[eax+1]
		call	_$dll$ucrtbase$malloc
		mov	rdx,rax
		mov	rcx,rbx
		call	fpc_ansistr_assign
		mov	rdx,rsi
		test	rsi,rsi
		jne	..@j66
		lea	rdx,[FPC_EMPTYCHAR]
..@j66:
		mov	rcx,rsi
		call	_$dll$ucrtbase$strcpy
		mov	rdx,rdi
		test	rdi,rdi
		jne	..@j67
		lea	rdx,[FPC_EMPTYCHAR]
..@j67:
		mov	rcx,rsi
		call	_$dll$ucrtbase$strcat
		mov	rcx,qword [rbx]
		test	rcx,rcx
		jne	..@j68
		lea	rcx,[FPC_EMPTYCHAR]
..@j68:
		mov	rdx,rsi
		call	_$dll$ucrtbase$strcpy
		nop
		lea	rsp,[rsp+56]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c58:

SECTION .text
	GLOBAL fpc_ansistr_concat_multi
fpc_ansistr_concat_multi:
..@c60:
		push	rbp
..@c62:
..@c63:
		mov	rbp,rsp
..@c64:
		mov	rax,rcx
		lea	rsp,[rbp]
		pop	rbp
		ret
..@c61:

SECTION .text
	GLOBAL fpc_ansistr_compare_equal
fpc_ansistr_compare_equal:
	GLOBAL FPC_ANSISTR_COMPARE_EQUAL
FPC_ANSISTR_COMPARE_EQUAL:
..@c65:
		lea	rsp,[rsp-40]
..@c67:
		call	_$dll$msvcrt$strcmp
		test	eax,eax
		jne	..@j74
		mov	eax,1
		jmp	..@j75
..@j74:
		xor	eax,eax
..@j75:
		nop
		lea	rsp,[rsp+40]
		ret
..@c66:

SECTION .text
	GLOBAL SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT
SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT:
..@c68:
		xor	eax,eax
		ret
..@c69:

SECTION .text
	GLOBAL fpc_get_input
fpc_get_input:
..@c70:
		xor	eax,eax
		ret
..@c71:

SECTION .text
	GLOBAL fpc_readln_end
fpc_readln_end:
	GLOBAL FPC_READLN_END
FPC_READLN_END:
..@c72:
		mov	rax,rcx
		ret
..@c73:

SECTION .text
	GLOBAL fpc_do_exit
fpc_do_exit:
	GLOBAL FPC_DO_EXIT
FPC_DO_EXIT:
..@c74:
		lea	rsp,[rsp-40]
..@c76:
		xor	ecx,ecx
		call	_$dll$kernel32$ExitProcess
		nop
		lea	rsp,[rsp+40]
		ret
..@c75:

SECTION .text
	GLOBAL fpc_iocheck
fpc_iocheck:
..@c77:
		ret
..@c78:

SECTION .text
	GLOBAL fpc_help_constructor
fpc_help_constructor:
..@c79:
		xor	eax,eax
		ret
..@c80:

SECTION .text
	GLOBAL fpc_help_destructor
fpc_help_destructor:
..@c81:
		mov	rax,rcx
		ret
..@c82:

SECTION .text
	GLOBAL fpc_help_fail
fpc_help_fail:
..@c83:
		mov	rax,rcx
		ret
..@c84:

SECTION .text
	GLOBAL fpc_reraise
fpc_reraise:
..@c85:
		ret
..@c86:

SECTION .text
	GLOBAL fpc_finalize
fpc_finalize:
..@c87:
		mov	rax,rcx
		ret
..@c88:

SECTION .text
	GLOBAL fpc_initializeunits
fpc_initializeunits:
	GLOBAL FPC_INITIALIZEUNITS
FPC_INITIALIZEUNITS:
..@c89:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c91:
		mov	rdx,qword [INITFINAL]
		lea	rcx,[_$SYSTEM$_Ld5]
		call	_$dll$msvcrt$printf
		cmp	qword [INITFINAL],0
		jna	..@j101
		mov	rax,qword [INITFINAL]
		lea	rbx,[rax-1]
		cmp	ebx,1
		jnae	..@j103
		xor	esi,esi
..@j104:
		inc	esi
		mov	eax,esi
		shl	rax,4
		lea	rdx,[INITFINAL]
		mov	rdx,qword [rdx+rax]
		mov	rcx,rsp
		call	SYSTEM$_$fpc_initializeunits_$$_CALLPROCEDURE$TPROCEDURE
		cmp	ebx,esi
		jnbe	..@j104
..@j103:
..@j101:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c90:

SECTION .text
SYSTEM$_$fpc_initializeunits_$$_CALLPROCEDURE$TPROCEDURE:
..@c92:
		lea	rsp,[rsp-40]
..@c94:
		mov	qword [rsp+32],rcx
		mov	rax,rdx
		test	rdx,rdx
		je	..@j108
		call	rax
..@j108:
		nop
		lea	rsp,[rsp+40]
		ret
..@c93:

SECTION .text
	GLOBAL fpc_libinitializeunits
fpc_libinitializeunits:
	GLOBAL FPC_LIBINITIALIZEUNITS
FPC_LIBINITIALIZEUNITS:
..@c95:
		ret
..@c96:

SECTION .text
	GLOBAL SYSTEM_$$_MOVE$formal$formal$LONGDWORD
SYSTEM_$$_MOVE$formal$formal$LONGDWORD:
	GLOBAL FPC_move
FPC_move:
..@c97:
		lea	rsp,[rsp-40]
..@c99:
		mov	rax,rcx
		mov	rcx,rdx
		mov	rdx,rax
		call	_$dll$msvcrt$memmove
		nop
		lea	rsp,[rsp+40]
		ret
..@c98:

SECTION .text
	GLOBAL SYSTEM_$$_SHOWMESSAGE$PCHAR
SYSTEM_$$_SHOWMESSAGE$PCHAR:
..@c100:
		lea	rsp,[rsp-40]
..@c102:
		mov	rdx,rcx
		mov	r9d,64
		lea	r8,[_$SYSTEM$_Ld6]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c101:

SECTION .text
	GLOBAL SYSTEM_$$_SHOWWARN$PCHAR
SYSTEM_$$_SHOWWARN$PCHAR:
..@c103:
		lea	rsp,[rsp-40]
..@c105:
		mov	rdx,rcx
		mov	r9d,48
		lea	r8,[_$SYSTEM$_Ld7]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c104:

SECTION .text
	GLOBAL SYSTEM_$$_SHOWERROR$PCHAR
SYSTEM_$$_SHOWERROR$PCHAR:
..@c106:
		lea	rsp,[rsp-40]
..@c108:
		mov	rdx,rcx
		mov	r9d,48
		lea	r8,[_$SYSTEM$_Ld3]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c107:

SECTION .text
	GLOBAL SYSTEM_$$_SHOWINFO$PCHAR
SYSTEM_$$_SHOWINFO$PCHAR:
..@c109:
		lea	rsp,[rsp-40]
..@c111:
		call	SYSTEM_$$_SHOWMESSAGE$PCHAR
		nop
		lea	rsp,[rsp+40]
		ret
..@c110:

SECTION .text
	GLOBAL SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR
SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR:
..@c112:
		lea	rax,[rdx-1]
		mov	rdx,-1
..@j123:
		inc	rdx
		mov	byte [rcx],r8b
		inc	rcx
		cmp	rax,rdx
		jnbe	..@j123
		ret
..@c113:

SECTION .text
	GLOBAL SYSTEM_$$_FREEMEM$POINTER
SYSTEM_$$_FREEMEM$POINTER:
..@c114:
		lea	rsp,[rsp-40]
..@c116:
		mov	rax,rcx
		cmp	qword [rax],0
		je	..@j129
		mov	rcx,qword [rax]
		mov	r8d,32768
		xor	edx,edx
		call	_$dll$kernel32$VirtualAlloc
..@j129:
		nop
		lea	rsp,[rsp+40]
		ret
..@c115:

SECTION .text
	GLOBAL SYSTEM_$$_GETMEM$POINTER$LONGDWORD
SYSTEM_$$_GETMEM$POINTER$LONGDWORD:
..@c117:
		push	rbx
		lea	rsp,[rsp-32]
..@c119:
		mov	rbx,rcx
		mov	r9d,4
		mov	r8d,12288
		xor	ecx,ecx
		call	_$dll$kernel32$VirtualAlloc
		mov	qword [rbx],rax
		test	rax,rax
		jne	..@j133
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld8]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
..@j133:
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c118:

SECTION .text
	GLOBAL SYSTEM_$$_LOCKFILE$POINTER$$BOOLEAN
SYSTEM_$$_LOCKFILE$POINTER$$BOOLEAN:
..@c120:
		push	rbx
		lea	rsp,[rsp-48]
..@c122:
		xor	bl,bl
		mov	dword [rsp+32],0
		xor	r8d,r8d
		xor	edx,edx
		call	_$dll$kernel32$LockFile
		test	al,al
		jne	..@j137
		lea	rcx,[_$SYSTEM$_Ld9]
		call	SYSTEM_$$_SHOWERROR$PCHAR
		jmp	..@j134
..@j137:
		mov	bl,1
..@j134:
		mov	al,bl
		nop
		lea	rsp,[rsp+48]
		pop	rbx
		ret
..@c121:

SECTION .text
	GLOBAL SYSTEM_$$_WRITEFILE$LONGWORD$PCHAR$$QWORD
SYSTEM_$$_WRITEFILE$LONGWORD$PCHAR$$QWORD:
..@c123:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c125:
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
..@c124:

SECTION .text
	GLOBAL SYSTEM_$$_WRITEFILE$LONGWORD$POINTER$$QWORD
SYSTEM_$$_WRITEFILE$LONGWORD$POINTER$$QWORD:
..@c126:
		lea	rsp,[rsp-56]
..@c128:
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
..@c127:

SECTION .text
	GLOBAL SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER
SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER:
..@c129:
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		lea	rsp,[rsp-64]
..@c131:
		mov	rbx,rcx
		mov	sil,dl
		lea	rcx,[_$SYSTEM$_Ld10]
		call	SYSTEM_$$_SHOWINFO$PCHAR
		mov	rcx,rbx
		call	_$dll$shlwapi$PathFileExistsA
		mov	rdi,rax
		cmp	edi,1
		jne	..@j145
		test	sil,sil
		jne	..@j147
		xor	r12d,r12d
		lea	rcx,[rsp+56]
		mov	edx,255
		call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
		mov	rcx,qword [rsp+56]
		lea	rdx,[_$SYSTEM$_Ld11]
		call	_$dll$ucrtbase$strcpy
		mov	rdx,rbx
		mov	rcx,qword [rsp+56]
		call	_$dll$ucrtbase$strcat
		mov	rcx,qword [rsp+56]
		lea	rdx,[_$SYSTEM$_Ld12]
		call	_$dll$ucrtbase$strcat
		mov	rcx,qword [rsp+56]
		lea	rdx,[_$SYSTEM$_Ld13]
		call	_$dll$ucrtbase$strcat
		mov	rdx,qword [rsp+56]
		mov	r9d,4
		lea	r8,[_$SYSTEM$_Ld6]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	edi,eax
		cmp	edi,6
		jne	..@j149
		mov	rcx,rbx
		call	SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN
		mov	rcx,rbx
		mov	dl,1
		call	SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER
		mov	r13,rax
		call	_$dll$kernel32$GetLastError
		mov	r12d,eax
..@j149:
		lea	rcx,[rsp+56]
		call	SYSTEM_$$_FREEMEM$POINTER
		test	r12d,r12d
		je	..@j157
		lea	rcx,[_$SYSTEM$_Ld14]
		call	SYSTEM_$$_SHOWERROR$PCHAR
		jmp	..@j142
		jmp	..@j157
..@j147:
		test	sil,sil
		je	..@j157
		mov	rcx,rbx
		call	_$dll$kernel32$DeleteFileA
		mov	dl,al
		test	dil,dil
		jne	..@j156
		lea	rcx,[_$SYSTEM$_Ld15]
		call	SYSTEM_$$_SHOWMESSAGE$PCHAR
..@j156:
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
		jmp	..@j142
		jmp	..@j157
..@j145:
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
		je	..@j159
		lea	rcx,[_$SYSTEM$_Ld14]
		call	SYSTEM_$$_SHOWERROR$PCHAR
		jmp	..@j142
..@j159:
..@j157:
		mov	eax,r13d
		cmp	eax,-1
		jne	..@j161
		lea	rcx,[rsp+56]
		mov	edx,255
		call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
		mov	rcx,qword [rsp+56]
		lea	rdx,[_$SYSTEM$_Ld11]
		call	_$dll$ucrtbase$strcpy
		mov	rdx,rbx
		mov	rcx,qword [rsp+56]
		call	_$dll$ucrtbase$strcat
		mov	rcx,qword [rsp+56]
		lea	rdx,[_$SYSTEM$_Ld16]
		call	_$dll$ucrtbase$strcat
		mov	rcx,qword [rsp+56]
		call	SYSTEM_$$_SHOWERROR$PCHAR
		lea	rcx,[rsp+56]
		call	SYSTEM_$$_FREEMEM$POINTER
		xor	esi,esi
		jmp	..@j142
..@j161:
		mov	rsi,r13
..@j142:
		mov	rax,rsi
		nop
		lea	rsp,[rsp+64]
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c130:

SECTION .text
	GLOBAL SYSTEM_$$_FILECREATE$RAWBYTESTRING$BOOLEAN$$POINTER
SYSTEM_$$_FILECREATE$RAWBYTESTRING$BOOLEAN$$POINTER:
..@c132:
		lea	rsp,[rsp-40]
..@c134:
		test	rcx,rcx
		jne	..@j164
		lea	rcx,[FPC_EMPTYCHAR]
..@j164:
		call	SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER
		nop
		lea	rsp,[rsp+40]
		ret
..@c133:

SECTION .text
	GLOBAL SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN
SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN:
..@c135:
		lea	rsp,[rsp-40]
..@c137:
		call	_$dll$kernel32$DeleteFileA
		nop
		lea	rsp,[rsp+40]
		ret
..@c136:

SECTION .text
	GLOBAL SYSTEM_$$_FILEDELETE$RAWBYTESTRING$$BOOLEAN
SYSTEM_$$_FILEDELETE$RAWBYTESTRING$$BOOLEAN:
..@c138:
		lea	rsp,[rsp-40]
..@c140:
		test	rcx,rcx
		jne	..@j169
		lea	rcx,[FPC_EMPTYCHAR]
..@j169:
		call	SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN
		nop
		lea	rsp,[rsp+40]
		ret
..@c139:

SECTION .text
	GLOBAL SYSTEM_$$_FILESEEK$LONGWORD$LONGDWORD$LONGDWORD$$LONGDWORD
SYSTEM_$$_FILESEEK$LONGWORD$LONGDWORD$LONGDWORD$$LONGDWORD:
..@c141:
		push	rbx
		lea	rsp,[rsp-32]
..@c143:
		mov	r9d,r8d
		xor	r8,r8
		call	_$dll$kernel32$SetFilePointer
		mov	ebx,eax
		call	_$dll$kernel32$GetLastError
		cmp	ebx,-1
		jne	..@j173
		test	eax,eax
		je	..@j173
		lea	rcx,[_$SYSTEM$_Ld17]
		call	SYSTEM_$$_SHOWERROR$PCHAR
		mov	eax,-1
		jmp	..@j170
..@j173:
		mov	eax,ebx
..@j170:
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c142:

SECTION .text
	GLOBAL SYSTEM_$$_FILESEEK$POINTER$LONGDWORD$LONGDWORD$$LONGDWORD
SYSTEM_$$_FILESEEK$POINTER$LONGDWORD$LONGDWORD$$LONGDWORD:
..@c144:
		lea	rsp,[rsp-40]
..@c146:
		call	SYSTEM_$$_FILESEEK$LONGWORD$LONGDWORD$LONGDWORD$$LONGDWORD
		mov	eax,edx
		nop
		lea	rsp,[rsp+40]
		ret
..@c145:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT:
..@c147:
		push	rbp
..@c149:
..@c150:
		mov	rbp,rsp
..@c151:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j180
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j180:
		cmp	qword [rbp-16],0
		je	..@j177
..@j188:
		nop
..@j187:
		mov	qword [rbp-24],-1
		mov	rdx,qword [rbp-16]
		lea	rcx,[VMT_$SYSTEM_$$_TOBJECT]
		lea	rax,[VMT_$SYSTEM_$$_TOBJECT]
		call	[rax+120]
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j185
		cmp	qword [rbp-8],0
		je	..@j185
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j185
..@j184:
		cmp	qword [rbp-8],0
		je	..@j194
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+96]
..@j194:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j195:
		nop
..@j185:
..@j177:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c148:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_DESTROY
SYSTEM$_$TOBJECT_$__$$_DESTROY:
..@c152:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c154:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j199
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j199:
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
		test	rbx,rbx
		je	..@j201
		test	rsi,rsi
		je	..@j201
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j201:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c153:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION:
..@c155:
		mov	rax,rcx
		ret
..@c156:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION:
..@c157:
		mov	rax,rcx
		ret
..@c158:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING:
..@c159:
		lea	rsp,[rsp-40]
..@c161:
		mov	rax,rcx
		mov	rcx,rdx
		lea	rdx,[..@d18]
		call	fpc_ansistr_assign
		nop
		lea	rsp,[rsp+40]
		ret
..@c160:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_GETINSTANCE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_GETINSTANCE$$TOBJECT:
..@c162:
		push	rbx
		lea	rsp,[rsp-32]
..@c164:
		xor	ebx,ebx
		cmp	qword [U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE],0
		jne	..@j212
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld19]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		jmp	..@j209
..@j212:
		mov	rbx,qword [U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE]
..@j209:
		mov	rax,rbx
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c163:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT:
..@c165:
		xor	eax,eax
		ret
..@c166:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_FREE
SYSTEM$_$TOBJECT_$__$$_FREE:
..@c167:
		lea	rsp,[rsp-40]
..@c169:
		mov	rax,rcx
		test	rcx,rcx
		je	..@j218
		mov	rcx,qword [rax]
		mov	rax,qword [rax]
		call	[rax+136]
..@j218:
		nop
		lea	rsp,[rsp+40]
		ret
..@c168:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT:
..@c170:
		lea	rsp,[rsp-40]
..@c172:
		lea	rcx,[U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE]
		mov	edx,8
		call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
		mov	rax,rdx
		nop
		lea	rsp,[rsp+40]
		ret
..@c171:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER:
..@c173:
		mov	qword [rdx],rcx
		ret
..@c174:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE:
..@c175:
		lea	rsp,[rsp-40]
..@c177:
		mov	qword [rsp+32],rcx
		lea	rcx,[U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE]
		call	SYSTEM_$$_FREEMEM$POINTER
		cmp	qword [rsp+32],0
		je	..@j226
		lea	rcx,[rsp+32]
		call	SYSTEM_$$_FREEMEM$POINTER
..@j226:
		nop
		lea	rsp,[rsp+40]
		ret
..@c176:

SECTION .text
SYSTEM_$$_SAFECALLEXCEPTION$POINTER$POINTER$$SHORTDWORD:
..@c178:
		mov	eax,edx
		ret
..@c179:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD:
..@c180:
		mov	eax,1
		ret
..@c181:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal
SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal:
..@c182:
		mov	rax,rcx
		ret
..@c183:

SECTION .text
	GLOBAL SYSTEM$_$TLIST_$__$$_CREATE$$TLIST
SYSTEM$_$TLIST_$__$$_CREATE$$TLIST:
..@c184:
		push	rbp
..@c186:
..@c187:
		mov	rbp,rsp
..@c188:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j236
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j236:
		cmp	qword [rbp-16],0
		je	..@j233
..@j244:
		nop
..@j243:
		mov	qword [rbp-24],-1
		mov	rcx,qword [rbp-16]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j241
		cmp	qword [rbp-8],0
		je	..@j241
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j241
..@j240:
		cmp	qword [rbp-8],0
		je	..@j250
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSTEM$_$TLIST_$__$$_DESTROY
..@j250:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j251:
		nop
..@j241:
..@j233:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c185:

SECTION .text
	GLOBAL SYSTEM$_$TLIST_$__$$_DESTROY
SYSTEM$_$TLIST_$__$$_DESTROY:
..@c189:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c191:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j255
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j255:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j257
		test	rsi,rsi
		je	..@j257
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j257:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c190:

SECTION .text
SYSTEM_$$_STRINGLENGTH$ANSISTRING$$LONGDWORD:
..@c192:
		xor	eax,eax
		jmp	..@j262
..@j261:
		inc	eax
..@j262:
		mov	edx,eax
		inc	rdx
		cmp	byte [rcx+rdx*1-1],0
		jne	..@j261
		ret
..@c193:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_CREATE$$TDOSCMD
SYSTEM$_$TDOSCMD_$__$$_CREATE$$TDOSCMD:
..@c194:
		push	rbp
..@c196:
..@c197:
		mov	rbp,rsp
..@c198:
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
		je	..@j277
		cmp	dword [rax+28],-1
		je	..@j277
		cmp	dword [rax+32],-1
		jne	..@j280
..@j277:
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld20]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
..@j280:
		mov	rax,qword [rbp-16]
		lea	rcx,[rax+16]
		lea	rdx,[..@d21]
		call	fpc_ansistr_assign
		mov	ecx,65001
		call	_$dll$kernel32$SetConsoleOutputCP
		mov	ecx,65001
		call	_$dll$kernel32$SetConsoleCP
		mov	rcx,qword [rbp-16]
		lea	rdx,[..@d22]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING
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
		je	..@j285
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+96]
..@j285:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j286:
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
..@c195:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_DESTROY
SYSTEM$_$TDOSCMD_$__$$_DESTROY:
..@c199:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c201:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j290
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j290:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j292
		test	rsi,rsi
		je	..@j292
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j292:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c200:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_FREE
SYSTEM$_$TDOSCMD_$__$$_FREE:
..@c202:
		lea	rsp,[rsp-40]
..@c204:
		mov	rax,rcx
		test	rcx,rcx
		je	..@j297
		mov	rcx,rax
		mov	edx,1
		mov	rax,qword [rax]
		call	[rax+96]
..@j297:
		nop
		lea	rsp,[rsp+40]
		ret
..@c203:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_CLS
SYSTEM$_$TDOSCMD_$__$$_CLS:
..@c205:
		mov	rax,rcx
		ret
..@c206:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_CLRSCR
SYSTEM$_$TDOSCMD_$__$$_CLRSCR:
..@c207:
		lea	rsp,[rsp-40]
..@c209:
		call	SYSTEM$_$TDOSCMD_$__$$_CLS
		nop
		lea	rsp,[rsp+40]
		ret
..@c208:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_CLEARSCREEN
SYSTEM$_$TDOSCMD_$__$$_CLEARSCREEN:
..@c210:
		lea	rsp,[rsp-40]
..@c212:
		call	SYSTEM$_$TDOSCMD_$__$$_CLS
		nop
		lea	rsp,[rsp+40]
		ret
..@c211:

SECTION .text
SYSTEM$_$TDOSCMD_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$00000201:
..@c213:
		push	rbp
..@c215:
..@c216:
		mov	rbp,rcx
..@c217:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c214:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD:
..@c218:
		push	rbp
..@c220:
..@c221:
		mov	rbp,rsp
..@c222:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
		mov	rcx,qword [rbp-16]
		call	fpc_ansistr_incr_ref
..@j312:
		nop
..@j308:
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		jne	..@j313
		lea	rdx,[FPC_EMPTYCHAR]
..@j313:
		lea	rcx,[_$SYSTEM$_Ld23]
		call	_$dll$msvcrt$printf
		mov	rdx,qword [rbp-16]
		test	rdx,rdx
		jne	..@j314
		lea	rdx,[FPC_EMPTYCHAR]
..@j314:
		lea	rcx,[_$SYSTEM$_Ld24]
		call	_$dll$msvcrt$printf
		xor	ebx,ebx
..@j310:
		nop
..@j309:
		mov	rcx,rbp
		call	SYSTEM$_$TDOSCMD_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$00000201
		mov	eax,ebx
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c219:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_WRITE$PCHAR
SYSTEM$_$TDOSCMD_$__$$_WRITE$PCHAR:
..@c223:
		lea	rsp,[rsp-40]
..@c225:
		mov	rax,rcx
		lea	rcx,[_$SYSTEM$_Ld25]
		call	_$dll$msvcrt$printf
		nop
		lea	rsp,[rsp+40]
		ret
..@c224:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR:
..@c226:
		lea	rsp,[rsp-40]
..@c228:
		mov	rax,rcx
		lea	rcx,[_$SYSTEM$_Ld26]
		call	_$dll$msvcrt$printf
		nop
		lea	rsp,[rsp+40]
		ret
..@c227:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_WRITE$ANSISTRING
SYSTEM$_$TDOSCMD_$__$$_WRITE$ANSISTRING:
..@c229:
		lea	rsp,[rsp-40]
..@c231:
		mov	rax,rcx
		test	rdx,rdx
		jne	..@j321
		lea	rdx,[FPC_EMPTYCHAR]
..@j321:
		mov	rcx,qword [TC_$SYSTEM_$$_DOS]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITE$PCHAR
		nop
		lea	rsp,[rsp+40]
		ret
..@c230:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING
SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING:
..@c232:
		lea	rsp,[rsp-40]
..@c234:
		mov	rax,rcx
		test	rdx,rdx
		jne	..@j324
		lea	rdx,[FPC_EMPTYCHAR]
..@j324:
		mov	rcx,qword [TC_$SYSTEM_$$_DOS]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
		nop
		lea	rsp,[rsp+40]
		ret
..@c233:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_READLN$ANSISTRING$ANSISTRING
SYSTEM$_$TDOSCMD_$__$$_READLN$ANSISTRING$ANSISTRING:
..@c235:
		push	rbx
		lea	rsp,[rsp-32]
..@c237:
		mov	rax,rcx
		mov	rbx,rdx
		mov	rcx,qword [TC_$SYSTEM_$$_DOS]
		lea	rdx,[..@d27]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING
		mov	rdx,rbx
		lea	rcx,[_$SYSTEM$_Ld25]
		call	_$dll$msvcrt$scanf
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c236:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_READLN$ANSISTRING
SYSTEM$_$TDOSCMD_$__$$_READLN$ANSISTRING:
..@c238:
		mov	rax,rcx
		ret
..@c239:

SECTION .text
SYSTEM$_$TDOSCMD_$_READ$ANSISTRING$ANSISTRING_$$_fin$00000202:
..@c240:
		push	rbp
..@c242:
..@c243:
		mov	rbp,rcx
..@c244:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-272]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-280]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c241:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_READ$ANSISTRING$ANSISTRING
SYSTEM$_$TDOSCMD_$__$$_READ$ANSISTRING$ANSISTRING:
..@c245:
		push	rbp
..@c247:
..@c248:
		mov	rbp,rsp
..@c249:
		lea	rsp,[rsp-352]
		mov	qword [rbp-296],rbx
		mov	qword [rbp-288],rsi
		mov	rbx,rcx
		mov	rsi,rdx
		mov	rdx,r8
		mov	qword [rbp-272],0
		mov	qword [rbp-280],0
..@j337:
		nop
..@j333:
		mov	rcx,qword [TC_$SYSTEM_$$_DOS]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITE$ANSISTRING
		mov	rdx,rsi
		lea	rcx,[_$SYSTEM$_Ld25]
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
		jmp	..@j335
..@j338:
		cmp	byte [rbp-264],13
		jne	..@j338
		jmp	..@j340
		jmp	..@j338
..@j340:
		mov	rdx,qword [rbp-272]
		mov	rcx,qword [TC_$SYSTEM_$$_DOS]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING
		jmp	..@j335
		mov	edx,dword [rbp-260]
		lea	rcx,[_$SYSTEM$_Ld29]
		call	_$dll$msvcrt$printf
		mov	eax,dword [rbp-260]
		mov	byte [rbp+rax*1-258],0
		lea	rdx,[rbp-256]
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld30]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
..@j335:
		nop
..@j334:
		mov	rcx,rbp
		call	SYSTEM$_$TDOSCMD_$_READ$ANSISTRING$ANSISTRING_$$_fin$00000202
		mov	rbx,qword [rbp-296]
		mov	rsi,qword [rbp-288]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c246:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_READ$ANSISTRING
SYSTEM$_$TDOSCMD_$__$$_READ$ANSISTRING:
..@c250:
		lea	rsp,[rsp-40]
..@c252:
		mov	rax,rcx
		mov	rcx,qword [TC_$SYSTEM_$$_DOS]
		lea	rdx,[..@d31]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING
		nop
		lea	rsp,[rsp+40]
		ret
..@c251:

SECTION .text
SYSTEM_$$_CHECK_RESULT$LONGDWORD:
..@c253:
		lea	rsp,[rsp-40]
..@c255:
		mov	eax,ecx
		cmp	eax,-1
		jne	..@j350
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld32]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
..@j350:
		nop
		lea	rsp,[rsp+40]
		ret
..@c254:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_GET_STDIN$$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_GET_STDIN$$LONGDWORD:
..@c256:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c258:
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
..@c257:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_GET_STDOUT$$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_GET_STDOUT$$LONGDWORD:
..@c259:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c261:
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
..@c260:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_GET_STDERR$$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_GET_STDERR$$LONGDWORD:
..@c262:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c264:
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
..@c263:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_SET_STDIN$LONGDWORD$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_SET_STDIN$LONGDWORD$LONGDWORD:
..@c265:
		push	rbx
		lea	rsp,[rsp-32]
..@c267:
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
..@c266:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_SET_STDOUT$LONGDWORD$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_SET_STDOUT$LONGDWORD$LONGDWORD:
..@c268:
		push	rbx
		lea	rsp,[rsp-32]
..@c270:
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
..@c269:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_SET_STDERR$LONGDWORD$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_SET_STDERR$LONGDWORD$LONGDWORD:
..@c271:
		push	rbx
		lea	rsp,[rsp-32]
..@c273:
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
..@c272:

SECTION .text
	GLOBAL SYSTEM_$$_INITWINDOWS
SYSTEM_$$_INITWINDOWS:
..@c274:
		lea	rsp,[rsp-40]
..@c276:
		mov	eax,1
		lea	rcx,[VMT_$SYSTEM_$$_WINDOWS_CLASS]
		mov	rdx,rax
		call	SYSTEM$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS
		mov	qword [U_$SYSTEM_$$_WINDOWS],rax
		nop
		lea	rsp,[rsp+40]
		ret
..@c275:

SECTION .text
	GLOBAL SYSTEM_$$_DONEWINDOWS
SYSTEM_$$_DONEWINDOWS:
..@c277:
		lea	rsp,[rsp-40]
..@c279:
		cmp	qword [U_$SYSTEM_$$_WINDOWS],0
		je	..@j368
		mov	rax,qword [U_$SYSTEM_$$_WINDOWS]
		mov	rdx,qword [U_$SYSTEM_$$_WINDOWS]
		mov	rdx,qword [rdx]
		mov	rcx,rax
		call	[rdx+184]
..@j368:
		nop
		lea	rsp,[rsp+40]
		ret
..@c278:

SECTION .text
	GLOBAL SYSTEM$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS
SYSTEM$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS:
..@c280:
		push	rbp
..@c282:
..@c283:
		mov	rbp,rsp
..@c284:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j372
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j372:
		cmp	qword [rbp-16],0
		je	..@j369
..@j380:
		nop
..@j379:
		mov	qword [rbp-24],-1
		mov	rcx,qword [rbp-16]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j377
		cmp	qword [rbp-8],0
		je	..@j377
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j377
..@j376:
		cmp	qword [rbp-8],0
		je	..@j386
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY
..@j386:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j387:
		nop
..@j377:
..@j369:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c281:

SECTION .text
	GLOBAL SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY
SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY:
..@c285:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c287:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j391
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j391:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j393
		test	rsi,rsi
		je	..@j393
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j393:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c286:

SECTION .text
	GLOBAL SYSTEM$_$WINDOWS_CLASS_$__$$_FREE
SYSTEM$_$WINDOWS_CLASS_$__$$_FREE:
..@c288:
		lea	rsp,[rsp-40]
..@c290:
		mov	rax,rcx
		test	rcx,rcx
		je	..@j398
		mov	rcx,rax
		mov	edx,1
		call	SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY
..@j398:
		nop
		lea	rsp,[rsp+40]
		ret
..@c289:

SECTION .text
SYSTEM$_$WINDOWS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$00000206:
..@c291:
		push	rbp
..@c293:
..@c294:
		mov	rbp,rcx
..@c295:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c292:

SECTION .text
	GLOBAL SYSTEM$_$WINDOWS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD
SYSTEM$_$WINDOWS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD:
..@c296:
		push	rbp
..@c298:
..@c299:
		mov	rbp,rsp
..@c300:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
		mov	rcx,qword [rbp-16]
		call	fpc_ansistr_incr_ref
..@j407:
		nop
..@j403:
		mov	r8,qword [rbp-16]
		test	r8,r8
		jne	..@j408
		lea	r8,[FPC_EMPTYCHAR]
..@j408:
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		jne	..@j409
		lea	rdx,[FPC_EMPTYCHAR]
..@j409:
		xor	r9d,r9d
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		xor	ebx,ebx
..@j405:
		nop
..@j404:
		mov	rcx,rbp
		call	SYSTEM$_$WINDOWS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$00000206
		mov	eax,ebx
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c297:

SECTION .text
	GLOBAL SYSTEM$_$TVGAIO_$__$$_$lower$TVGAIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TVGAIO_$__$$_$lower$TVGAIO$ANSISTRING$$BOOLEAN:
..@c301:
		push	rbp
..@c303:
..@c304:
		mov	rbp,rsp
..@c305:
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
..@c302:

SECTION .text
	GLOBAL SYSTEM$_$TVGAIO_$__$$_$greater$TVGAIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TVGAIO_$__$$_$greater$TVGAIO$ANSISTRING$$BOOLEAN:
..@c306:
		push	rbp
..@c308:
..@c309:
		mov	rbp,rsp
..@c310:
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
..@c307:

SECTION .text
SYSTEM$_$TSYSTEMIO_$_lower$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$00000209:
..@c311:
		push	rbp
..@c313:
..@c314:
		mov	rbp,rcx
..@c315:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c312:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEMIO_$__$$_$lower$TSYSTEMIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TSYSTEMIO_$__$$_$lower$TSYSTEMIO$ANSISTRING$$BOOLEAN:
..@c316:
		push	rbp
..@c318:
..@c319:
		mov	rbp,rsp
..@c320:
		lea	rsp,[rsp-64]
		mov	qword [rbp-32],rdi
		mov	qword [rbp-24],rsi
		mov	rsi,rcx
		mov	qword [rbp-8],rdx
		lea	rdi,[rbp-12]
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
..@j426:
		nop
..@j422:
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		jne	..@j427
		lea	rdx,[FPC_EMPTYCHAR]
..@j427:
		mov	rcx,qword [TC_$SYSTEM_$$_DOS]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
..@j424:
		nop
..@j423:
		mov	rcx,rbp
		call	SYSTEM$_$TSYSTEMIO_$_lower$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$00000209
		mov	al,dl
		mov	rdi,qword [rbp-32]
		mov	rsi,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c317:

SECTION .text
SYSTEM$_$TSYSTEMIO_$_greater$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$0000020A:
..@c321:
		push	rbp
..@c323:
..@c324:
		mov	rbp,rcx
..@c325:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c322:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$ANSISTRING$$BOOLEAN:
..@c326:
		push	rbp
..@c328:
..@c329:
		mov	rbp,rsp
..@c330:
		lea	rsp,[rsp-80]
		mov	qword [rbp-40],rbx
		mov	qword [rbp-32],rdi
		mov	qword [rbp-24],rsi
		mov	rsi,rcx
		mov	qword [rbp-8],rdx
		lea	rdi,[rbp-12]
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
..@j436:
		nop
..@j432:
		mov	bl,1
..@j434:
		nop
..@j433:
		mov	rcx,rbp
		call	SYSTEM$_$TSYSTEMIO_$_greater$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$0000020A
		mov	al,bl
		mov	rbx,qword [rbp-40]
		mov	rdi,qword [rbp-32]
		mov	rsi,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c327:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$LONGDWORD$$QWORD
SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$LONGDWORD$$QWORD:
..@c331:
		push	rdi
		push	rsi
		lea	rsp,[rsp-8]
..@c333:
		mov	rsi,rcx
		mov	rdi,rsp
		mov	eax,1
		lea	rsp,[rsp+8]
		pop	rsi
		pop	rdi
		ret
..@c332:

SECTION .text
	GLOBAL SYSTEM$_$TCPU_$__$$_CREATE$$TCPU
SYSTEM$_$TCPU_$__$$_CREATE$$TCPU:
..@c334:
		push	rbp
..@c336:
..@c337:
		mov	rbp,rsp
..@c338:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j442
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j442:
		cmp	qword [rbp-16],0
		je	..@j439
..@j450:
		nop
..@j449:
		mov	qword [rbp-24],-1
		mov	rcx,qword [rbp-16]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j447
		cmp	qword [rbp-8],0
		je	..@j447
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j447
..@j446:
		cmp	qword [rbp-8],0
		je	..@j456
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSTEM$_$TCPU_$__$$_DESTROY
..@j456:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j457:
		nop
..@j447:
..@j439:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c335:

SECTION .text
	GLOBAL SYSTEM$_$TCPU_$__$$_DESTROY
SYSTEM$_$TCPU_$__$$_DESTROY:
..@c339:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c341:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j461
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j461:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j463
		test	rsi,rsi
		je	..@j463
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j463:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c340:

SECTION .text
	GLOBAL SYSTEM$_$TCPU_$__$$_CLASSNAME$$ANSISTRING
SYSTEM$_$TCPU_$__$$_CLASSNAME$$ANSISTRING:
..@c342:
		lea	rsp,[rsp-40]
..@c344:
		mov	rax,rcx
		mov	rcx,rdx
		lea	rdx,[..@d33]
		call	fpc_ansistr_assign
		nop
		lea	rsp,[rsp+40]
		ret
..@c343:

SECTION .text
	GLOBAL SYSTEM$_$TCPU_$__$$_CLASSPARENT$$TOBJECT
SYSTEM$_$TCPU_$__$$_CLASSPARENT$$TOBJECT:
..@c345:
		lea	rsp,[rsp-40]
..@c347:
		call	SYSTEM$_$TCPU_$__$$_GETPARENT$$TOBJECT
		nop
		lea	rsp,[rsp+40]
		ret
..@c346:

SECTION .text
	GLOBAL SYSTEM$_$TCPU_$__$$_GETPARENT$$TOBJECT
SYSTEM$_$TCPU_$__$$_GETPARENT$$TOBJECT:
..@c348:
		mov	rax,qword [U_$SYSTEM_$$__static_tcpu_FCLASSPARENT]
		ret
..@c349:

SECTION .text
	GLOBAL SYSTEM_$$_INITMEMORY
SYSTEM_$$_INITMEMORY:
..@c350:
		lea	rsp,[rsp-40]
..@c352:
		mov	eax,1
		lea	rcx,[VMT_$SYSTEM_$$_TMEMORY]
		mov	rdx,rax
		call	SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY
		mov	qword [TC_$SYSTEM_$$_MEM],rax
		nop
		lea	rsp,[rsp+40]
		ret
..@c351:

SECTION .text
	GLOBAL SYSTEM_$$_DONEMEMORY
SYSTEM_$$_DONEMEMORY:
..@c353:
		lea	rsp,[rsp-40]
..@c355:
		mov	rax,qword [TC_$SYSTEM_$$_MEM]
		mov	rdx,qword [TC_$SYSTEM_$$_MEM]
		mov	rdx,qword [rdx]
		mov	rcx,rax
		call	[rdx+184]
		nop
		lea	rsp,[rsp+40]
		ret
..@c354:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY
SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY:
..@c356:
		push	rbp
..@c358:
..@c359:
		mov	rbp,rsp
..@c360:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j478
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j478:
		cmp	qword [rbp-16],0
		je	..@j475
..@j486:
		nop
..@j485:
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
		je	..@j483
		cmp	qword [rbp-8],0
		je	..@j483
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j483
..@j482:
		cmp	qword [rbp-8],0
		je	..@j492
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSTEM$_$TMEMORY_$__$$_DESTROY
..@j492:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j493:
		nop
..@j483:
..@j475:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c357:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_CREATE$LONGDWORD$$TMEMORY
SYSTEM$_$TMEMORY_$__$$_CREATE$LONGDWORD$$TMEMORY:
..@c361:
		push	rbp
..@c363:
..@c364:
		mov	rbp,rsp
..@c365:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rcx
		mov	qword [rbp-16],rdx
		mov	dword [rbp-8],r8d
		cmp	qword [rbp-16],1
		jne	..@j497
		mov	rax,qword [rbp-24]
		mov	rdx,qword [rbp-24]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-24],rax
..@j497:
		cmp	qword [rbp-24],0
		je	..@j494
..@j505:
		nop
..@j504:
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
		je	..@j502
		cmp	qword [rbp-16],0
		je	..@j502
		mov	rcx,qword [rbp-24]
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j502
..@j501:
		cmp	qword [rbp-16],0
		je	..@j511
		mov	rdx,qword [rbp-32]
		mov	rcx,qword [rbp-24]
		call	SYSTEM$_$TMEMORY_$__$$_DESTROY
..@j511:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j512:
		nop
..@j502:
..@j494:
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c362:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$LONGDWORD$$TMEMORY
SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$LONGDWORD$$TMEMORY:
..@c366:
		push	rbp
..@c368:
..@c369:
		mov	rbp,rsp
..@c370:
		lea	rsp,[rsp-80]
		mov	qword [rbp-32],rcx
		mov	qword [rbp-24],rdx
		mov	qword [rbp-8],r8
		mov	dword [rbp-16],r9d
		cmp	qword [rbp-24],1
		jne	..@j516
		mov	rax,qword [rbp-32]
		mov	rdx,qword [rbp-32]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-32],rax
..@j516:
		cmp	qword [rbp-32],0
		je	..@j513
..@j524:
		nop
..@j523:
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
		je	..@j521
		cmp	qword [rbp-24],0
		je	..@j521
		mov	rcx,qword [rbp-32]
		mov	rax,qword [rbp-32]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j521
..@j520:
		cmp	qword [rbp-24],0
		je	..@j530
		mov	rdx,qword [rbp-40]
		mov	rcx,qword [rbp-32]
		call	SYSTEM$_$TMEMORY_$__$$_DESTROY
..@j530:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j531:
		nop
..@j521:
..@j513:
		mov	rax,qword [rbp-32]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c367:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$$TMEMORY
SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$$TMEMORY:
..@c371:
		push	rbp
..@c373:
..@c374:
		mov	rbp,rsp
..@c375:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-8],r8
		cmp	qword [rbp-16],1
		jne	..@j535
		mov	rax,qword [rbp-24]
		mov	rdx,qword [rbp-24]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-24],rax
..@j535:
		cmp	qword [rbp-24],0
		je	..@j532
..@j543:
		nop
..@j542:
		mov	qword [rbp-32],-1
		mov	rcx,qword [rbp-24]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld30]
		lea	rdx,[_$SYSTEM$_Ld34]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		cmp	qword [rbp-8],0
		jne	..@j546
		mov	edx,8
		mov	dword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE],edx
		lea	rcx,[U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY]
		call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
		jmp	..@j547
..@j546:
		mov	rax,qword [rbp-8]
		mov	qword [U_$SYSTEM_$$__static_tmemory_FCLASSPARENT],rax
		mov	rcx,qword [rbp-24]
		mov	edx,8
		call	SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER
		mov	qword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY],rax
..@j547:
		mov	qword [rbp-32],1
		cmp	qword [rbp-24],0
		je	..@j540
		cmp	qword [rbp-16],0
		je	..@j540
		mov	rcx,qword [rbp-24]
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j540
..@j539:
		cmp	qword [rbp-16],0
		je	..@j552
		mov	rdx,qword [rbp-32]
		mov	rcx,qword [rbp-24]
		call	SYSTEM$_$TMEMORY_$__$$_DESTROY
..@j552:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j553:
		nop
..@j540:
..@j532:
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c372:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_DESTROY
SYSTEM$_$TMEMORY_$__$$_DESTROY:
..@c376:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c378:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j557
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j557:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j559
		test	rsi,rsi
		je	..@j559
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j559:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c377:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_CLASSNAME$$ANSISTRING
SYSTEM$_$TMEMORY_$__$$_CLASSNAME$$ANSISTRING:
..@c379:
		lea	rsp,[rsp-40]
..@c381:
		mov	rax,rcx
		mov	rcx,rdx
		lea	rdx,[..@d35]
		call	fpc_ansistr_assign
		nop
		lea	rsp,[rsp+40]
		ret
..@c380:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER
SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER:
..@c382:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c384:
		mov	ebx,edx
		xor	esi,esi
		cmp	ebx,dword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE]
		je	..@j563
		cmp	dword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE],0
		jne	..@j569
		mov	edx,ebx
		lea	rcx,[U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY]
		call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
		mov	dword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE],ebx
..@j569:
		mov	rsi,qword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY]
..@j563:
		mov	rax,rsi
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c383:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_ALLOC
SYSTEM$_$TMEMORY_$__$$_ALLOC:
..@c385:
		lea	rsp,[rsp-40]
..@c387:
		mov	edx,512
		call	SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER
		nop
		lea	rsp,[rsp+40]
		ret
..@c386:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_FREE
SYSTEM$_$TMEMORY_$__$$_FREE:
..@c388:
		lea	rsp,[rsp-40]
..@c390:
		mov	rax,rcx
		lea	rcx,[U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY]
		call	SYSTEM_$$_FREEMEM$POINTER
		cmp	qword [U_$SYSTEM_$$__static_tmemory_FCLASSPARENT],0
		je	..@j575
		mov	rcx,qword [U_$SYSTEM_$$__static_tmemory_FCLASSPARENT]
		mov	rax,qword [U_$SYSTEM_$$__static_tmemory_FCLASSPARENT]
		mov	rax,qword [rax]
		call	[rax+160]
..@j575:
		nop
		lea	rsp,[rsp+40]
		ret
..@c389:

SECTION .text
	GLOBAL SYSTEM_$$_INITSYSTEM
SYSTEM_$$_INITSYSTEM:
..@c391:
		lea	rsp,[rsp-40]
..@c393:
		mov	eax,1
		lea	rcx,[VMT_$SYSTEM_$$_TDOSCMD]
		mov	rdx,rax
		call	SYSTEM$_$TDOSCMD_$__$$_CREATE$$TDOSCMD
		mov	qword [TC_$SYSTEM_$$_DOS],rax
		mov	edx,1
		lea	rcx,[VMT_$SYSTEM_$$_TSYSTEM]
		call	SYSTEM$_$TSYSTEM_$__$$_CREATE$$TSYSTEM
		mov	qword [TC_$SYSTEM_$$_SYS],rax
		mov	edx,1
		lea	rcx,[VMT_$SYSTEM_$$_TMEMORY]
		call	SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY
		mov	qword [TC_$SYSTEM_$$_MEM],rax
		mov	rcx,qword [TC_$SYSTEM_$$_DOS]
		lea	rdx,[..@d36]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING
		nop
		lea	rsp,[rsp+40]
		ret
..@c392:

SECTION .text
	GLOBAL SYSTEM_$$_DONESYSTEM
SYSTEM_$$_DONESYSTEM:
..@c394:
		ret
..@c395:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEM_$__$$_CREATE$$TSYSTEM
SYSTEM$_$TSYSTEM_$__$$_CREATE$$TSYSTEM:
..@c396:
		push	rbp
..@c398:
..@c399:
		mov	rbp,rsp
..@c400:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j583
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j583:
		cmp	qword [rbp-16],0
		je	..@j580
..@j591:
		nop
..@j590:
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
		je	..@j588
		cmp	qword [rbp-8],0
		je	..@j588
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j588
..@j587:
		cmp	qword [rbp-8],0
		je	..@j597
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSTEM$_$TSYSTEM_$__$$_DESTROY
..@j597:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j598:
		nop
..@j588:
..@j580:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c397:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEM_$__$$_DESTROY
SYSTEM$_$TSYSTEM_$__$$_DESTROY:
..@c401:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c403:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j602
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j602:
		cmp	qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS],0
		je	..@j604
		mov	rcx,qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS]
		mov	rax,qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS]
		mov	rax,qword [rax]
		call	[rax+184]
		mov	qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS],0
..@j604:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j606
		test	rsi,rsi
		je	..@j606
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j606:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c402:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEM_$__$$_GETMEMORY$$TMEMORY
SYSTEM$_$TSYSTEM_$__$$_GETMEMORY$$TMEMORY:
..@c404:
		lea	rsp,[rsp-40]
..@c406:
		cmp	qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS],0
		jne	..@j611
		mov	edx,1
		lea	rcx,[VMT_$SYSTEM_$$_TMEMORY]
		call	SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY
		mov	qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS],rax
..@j611:
		mov	rax,qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS]
		nop
		lea	rsp,[rsp+40]
		ret
..@c405:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEM_$__$$_CLASSNAME$$ANSISTRING
SYSTEM$_$TSYSTEM_$__$$_CLASSNAME$$ANSISTRING:
..@c407:
		lea	rsp,[rsp-40]
..@c409:
		mov	rax,rcx
		mov	rcx,rdx
		lea	rdx,[..@d37]
		call	fpc_ansistr_assign
		nop
		lea	rsp,[rsp+40]
		ret
..@c408:

SECTION .text
	GLOBAL INIT$_$SYSTEM
INIT$_$SYSTEM:
	GLOBAL SYSTEM_$$_init$
SYSTEM_$$_init$:
..@c410:
		lea	rsp,[rsp-40]
..@c412:
		lea	rcx,[_$SYSTEM$_Ld45]
		call	_$dll$msvcrt$printf
		nop
		lea	rsp,[rsp+40]
		ret
..@c411:
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
VMT_$SYSTEM_$$_TOBJECT	DQ	8,-8,0,..@d38,0,0,0,RTTI_$SYSTEM_$$_TOBJECT,0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING,SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_FREE,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TLIST
VMT_$SYSTEM_$$_TLIST	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d39,0,0,0,RTTI_$SYSTEM_$$_TLIST,0
	DQ	0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_FREE,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TDOSCMD
VMT_$SYSTEM_$$_TDOSCMD	DQ	40,-40,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d40,0,0,0,RTTI_$SYSTEM_$$_TDOSCMD
	DQ	INIT_$SYSTEM_$$_TDOSCMD,0,0,0,SYSTEM$_$TDOSCMD_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_FREE,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD
	DQ	SYSTEM$_$TDOSCMD_$__$$_FREE,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_WINDOWS_CLASS
VMT_$SYSTEM_$$_WINDOWS_CLASS	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d41,0,0,0,RTTI_$SYSTEM_$$_WINDOWS_CLASS
	DQ	0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_FREE,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD
	DQ	SYSTEM$_$WINDOWS_CLASS_$__$$_FREE,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TCPU
VMT_$SYSTEM_$$_TCPU	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d42,0,0,0,RTTI_$SYSTEM_$$_TCPU,0,0
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
VMT_$SYSTEM_$$_TMEMORY	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d43,0,0,0,RTTI_$SYSTEM_$$_TMEMORY
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
VMT_$SYSTEM_$$_TSYSTEM	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d44,0,0,0,RTTI_$SYSTEM_$$_TSYSTEM
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
..@d38:
	DB	7
		DB	"TObject"

SECTION .data
	ALIGN 8,DB 0
..@d39:
	DB	5
		DB	"TList"

SECTION .data
	ALIGN 8,DB 0
..@d40:
	DB	7
		DB	"TDosCmd"

SECTION .data
	ALIGN 8,DB 0
..@d41:
	DB	13
		DB	"Windows_Class"

SECTION .data
	ALIGN 8,DB 0
..@d42:
	DB	4
		DB	"TCPU"

SECTION .data
	ALIGN 8,DB 0
..@d43:
	DB	7
		DB	"TMemory"

SECTION .data
	ALIGN 8,DB 0
..@d44:
	DB	7
		DB	"TSystem"
; End asmlist al_const
; Begin asmlist al_typedconsts

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
		DB	"system.pas",0

SECTION .rodata
_$SYSTEM$_Ld2:
		DB	"fpc_doneexceptions",0

SECTION .rodata
_$SYSTEM$_Ld3:
		DB	"Error",0

SECTION .rodata
_$SYSTEM$_Ld4:
		DB	"Error: fpc_AnsiStr_EmptyChar memory allocation fail.",0

SECTION .rodata
_$SYSTEM$_Ld5:
		DB	"Count Items: %d",13,10,0

SECTION .rodata
_$SYSTEM$_Ld6:
		DB	"Information",0

SECTION .rodata
_$SYSTEM$_Ld7:
		DB	"Warning",0

SECTION .rodata
_$SYSTEM$_Ld8:
		DB	"Error: could not allocate memory.",0

SECTION .rodata
_$SYSTEM$_Ld9:
		DB	"File can not be lock.",0

SECTION .rodata
_$SYSTEM$_Ld10:
		DB	"pacher",0

SECTION .rodata
_$SYSTEM$_Ld11:
		DB	"File: ",34,0

SECTION .rodata
_$SYSTEM$_Ld12:
		DB	34," already exists.\n",0

SECTION .rodata
_$SYSTEM$_Ld13:
		DB	"Would you like override it ?",0

SECTION .rodata
_$SYSTEM$_Ld14:
		DB	"file could not be created !",0

SECTION .rodata
_$SYSTEM$_Ld15:
		DB	"file not delete",0

SECTION .rodata
_$SYSTEM$_Ld16:
		DB	34," could not be open.",0

SECTION .rodata
_$SYSTEM$_Ld17:
		DB	"SetFilePointer() failed.",0

SECTION .rodata
..@d18$strlab:
	DW	0,1
	DD	0
	DQ	-1,7
..@d18:
		DB	"TObject",0

SECTION .rodata
_$SYSTEM$_Ld19:
		DB	"Error: instance is not allocated.",0

SECTION .rodata
_$SYSTEM$_Ld20:
		DB	"Error: io handles.",0

SECTION .rodata
..@d21$strlab:
	DW	0,1
	DD	0
	DQ	-1,2
..@d21:
		DB	13,10,0

SECTION .rodata
..@d22$strlab:
	DW	0,1
	DD	0
	DQ	-1,5
..@d22:
		DB	"xxxxx",0

SECTION .rodata
_$SYSTEM$_Ld23:
		DB	"Message: %s",0

SECTION .rodata
_$SYSTEM$_Ld24:
		DB	"Title  : %s",0

SECTION .rodata
_$SYSTEM$_Ld25:
		DB	"%s",0

SECTION .rodata
_$SYSTEM$_Ld26:
		DB	"%s",13,10,0

SECTION .rodata
..@d27$strlab:
	DW	0,1
	DD	0
	DQ	-1,14
..@d27:
		DB	"PChar(AString)",0

SECTION .rodata
_$SYSTEM$_Ld28:
		DB	"Error: could not read data.",0

SECTION .rodata
_$SYSTEM$_Ld29:
		DB	"chars read: %d",13,10,0

SECTION .rodata
_$SYSTEM$_Ld30:
		DB	"info",0

SECTION .rodata
..@d31$strlab:
	DW	0,1
	DD	0
	DQ	-1,9
..@d31:
		DB	"uhuhuhuhu",0

SECTION .rodata
_$SYSTEM$_Ld32:
		DB	"Error: invalide handle.",0

SECTION .rodata
..@d33$strlab:
	DW	0,1
	DD	0
	DQ	-1,4
..@d33:
		DB	"TCPU",0

SECTION .rodata
_$SYSTEM$_Ld34:
		DB	"memory 5555",0

SECTION .rodata
..@d35$strlab:
	DW	0,1
	DD	0
	DQ	-1,7
..@d35:
		DB	"TMemory",0

SECTION .rodata
..@d36$strlab:
	DW	0,1
	DD	0
	DQ	-1,8
..@d36:
		DB	"start...",0

SECTION .rodata
..@d37$strlab:
	DW	0,1
	DD	0
	DQ	-1,7
..@d37:
		DB	"TSystem",0

SECTION .rodata
_$SYSTEM$_Ld45:
		DB	"---< hocus pocus >-----",13,10,0
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
	GLOBAL RTTI_$SYSTEM_$$_def00000188
RTTI_$SYSTEM_$$_def00000188	DB	12,0
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
	DQ	RTTI_$SYSTEM_$$_QWORD$indirect,0,RTTI_$SYSTEM_$$_QWORD$indirect,8,RTTI_$SYSTEM_$$_def00000188$indirect
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
	GLOBAL RTTI_$SYSTEM_$$_def00000188$indirect
RTTI_$SYSTEM_$$_def00000188$indirect	DQ	RTTI_$SYSTEM_$$_def00000188

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
..@c413:
	DD	..@c415-..@c414
..@c414:
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
..@c415:
	DD	..@c417-..@c416
..@c416:
	DQ	..@c1,..@c2-..@c1
	DB	4
	DD	..@c3-..@c1
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c417:
	DD	..@c419-..@c418
..@c418:
	DQ	..@c4,..@c5-..@c4
	ALIGN 4,DB 0
..@c419:
	DD	..@c421-..@c420
..@c420:
	DQ	..@c6,..@c7-..@c6
	ALIGN 4,DB 0
..@c421:
	DD	..@c423-..@c422
..@c422:
	DQ	..@c8,..@c9-..@c8
	ALIGN 4,DB 0
..@c423:
	DD	..@c425-..@c424
..@c424:
	DQ	..@c10,..@c11-..@c10
	ALIGN 4,DB 0
..@c425:
	DD	..@c427-..@c426
..@c426:
	DQ	..@c12,..@c13-..@c12
	ALIGN 4,DB 0
..@c427:
	DD	..@c429-..@c428
..@c428:
	DQ	..@c14,..@c15-..@c14
	DB	4
	DD	..@c16-..@c14
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c429:
	DD	..@c431-..@c430
..@c430:
	DQ	..@c17,..@c18-..@c17
	ALIGN 4,DB 0
..@c431:
	DD	..@c433-..@c432
..@c432:
	DQ	..@c19,..@c20-..@c19
	ALIGN 4,DB 0
..@c433:
	DD	..@c435-..@c434
..@c434:
	DQ	..@c21,..@c22-..@c21
	DB	4
	DD	..@c23-..@c21
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c435:
	DD	..@c437-..@c436
..@c436:
	DQ	..@c24,..@c25-..@c24
	ALIGN 4,DB 0
..@c437:
	DD	..@c439-..@c438
..@c438:
	DQ	..@c26,..@c27-..@c26
	ALIGN 4,DB 0
..@c439:
	DD	..@c441-..@c440
..@c440:
	DQ	..@c28,..@c29-..@c28
	ALIGN 4,DB 0
..@c441:
	DD	..@c443-..@c442
..@c442:
	DQ	..@c30,..@c31-..@c30
	ALIGN 4,DB 0
..@c443:
	DD	..@c445-..@c444
..@c444:
	DQ	..@c32,..@c33-..@c32
	DB	4
	DD	..@c34-..@c32
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c35-..@c34
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c36-..@c35
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c445:
	DD	..@c447-..@c446
..@c446:
	DQ	..@c37,..@c38-..@c37
	DB	4
	DD	..@c39-..@c37
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c40-..@c39
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c41-..@c40
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c447:
	DD	..@c449-..@c448
..@c448:
	DQ	..@c42,..@c43-..@c42
	ALIGN 4,DB 0
..@c449:
	DD	..@c451-..@c450
..@c450:
	DQ	..@c44,..@c45-..@c44
	DB	4
	DD	..@c46-..@c44
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c47-..@c46
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c48-..@c47
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c451:
	DD	..@c453-..@c452
..@c452:
	DQ	..@c49,..@c50-..@c49
	DB	4
	DD	..@c51-..@c49
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c52-..@c51
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c53-..@c52
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c453:
	DD	..@c455-..@c454
..@c454:
	DQ	..@c54,..@c55-..@c54
	DB	4
	DD	..@c56-..@c54
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c455:
	DD	..@c457-..@c456
..@c456:
	DQ	..@c57,..@c58-..@c57
	DB	4
	DD	..@c59-..@c57
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c457:
	DD	..@c459-..@c458
..@c458:
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
..@c459:
	DD	..@c461-..@c460
..@c460:
	DQ	..@c65,..@c66-..@c65
	DB	4
	DD	..@c67-..@c65
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c461:
	DD	..@c463-..@c462
..@c462:
	DQ	..@c68,..@c69-..@c68
	ALIGN 4,DB 0
..@c463:
	DD	..@c465-..@c464
..@c464:
	DQ	..@c70,..@c71-..@c70
	ALIGN 4,DB 0
..@c465:
	DD	..@c467-..@c466
..@c466:
	DQ	..@c72,..@c73-..@c72
	ALIGN 4,DB 0
..@c467:
	DD	..@c469-..@c468
..@c468:
	DQ	..@c74,..@c75-..@c74
	DB	4
	DD	..@c76-..@c74
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c469:
	DD	..@c471-..@c470
..@c470:
	DQ	..@c77,..@c78-..@c77
	ALIGN 4,DB 0
..@c471:
	DD	..@c473-..@c472
..@c472:
	DQ	..@c79,..@c80-..@c79
	ALIGN 4,DB 0
..@c473:
	DD	..@c475-..@c474
..@c474:
	DQ	..@c81,..@c82-..@c81
	ALIGN 4,DB 0
..@c475:
	DD	..@c477-..@c476
..@c476:
	DQ	..@c83,..@c84-..@c83
	ALIGN 4,DB 0
..@c477:
	DD	..@c479-..@c478
..@c478:
	DQ	..@c85,..@c86-..@c85
	ALIGN 4,DB 0
..@c479:
	DD	..@c481-..@c480
..@c480:
	DQ	..@c87,..@c88-..@c87
	ALIGN 4,DB 0
..@c481:
	DD	..@c483-..@c482
..@c482:
	DQ	..@c89,..@c90-..@c89
	DB	4
	DD	..@c91-..@c89
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c483:
	DD	..@c485-..@c484
..@c484:
	DQ	..@c92,..@c93-..@c92
	DB	4
	DD	..@c94-..@c92
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c485:
	DD	..@c487-..@c486
..@c486:
	DQ	..@c95,..@c96-..@c95
	ALIGN 4,DB 0
..@c487:
	DD	..@c489-..@c488
..@c488:
	DQ	..@c97,..@c98-..@c97
	DB	4
	DD	..@c99-..@c97
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c489:
	DD	..@c491-..@c490
..@c490:
	DQ	..@c100,..@c101-..@c100
	DB	4
	DD	..@c102-..@c100
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c491:
	DD	..@c493-..@c492
..@c492:
	DQ	..@c103,..@c104-..@c103
	DB	4
	DD	..@c105-..@c103
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c493:
	DD	..@c495-..@c494
..@c494:
	DQ	..@c106,..@c107-..@c106
	DB	4
	DD	..@c108-..@c106
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c495:
	DD	..@c497-..@c496
..@c496:
	DQ	..@c109,..@c110-..@c109
	DB	4
	DD	..@c111-..@c109
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c497:
	DD	..@c499-..@c498
..@c498:
	DQ	..@c112,..@c113-..@c112
	ALIGN 4,DB 0
..@c499:
	DD	..@c501-..@c500
..@c500:
	DQ	..@c114,..@c115-..@c114
	DB	4
	DD	..@c116-..@c114
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c501:
	DD	..@c503-..@c502
..@c502:
	DQ	..@c117,..@c118-..@c117
	DB	4
	DD	..@c119-..@c117
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c503:
	DD	..@c505-..@c504
..@c504:
	DQ	..@c120,..@c121-..@c120
	DB	4
	DD	..@c122-..@c120
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c505:
	DD	..@c507-..@c506
..@c506:
	DQ	..@c123,..@c124-..@c123
	DB	4
	DD	..@c125-..@c123
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c507:
	DD	..@c509-..@c508
..@c508:
	DQ	..@c126,..@c127-..@c126
	DB	4
	DD	..@c128-..@c126
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c509:
	DD	..@c511-..@c510
..@c510:
	DQ	..@c129,..@c130-..@c129
	DB	4
	DD	..@c131-..@c129
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c511:
	DD	..@c513-..@c512
..@c512:
	DQ	..@c132,..@c133-..@c132
	DB	4
	DD	..@c134-..@c132
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c513:
	DD	..@c515-..@c514
..@c514:
	DQ	..@c135,..@c136-..@c135
	DB	4
	DD	..@c137-..@c135
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c515:
	DD	..@c517-..@c516
..@c516:
	DQ	..@c138,..@c139-..@c138
	DB	4
	DD	..@c140-..@c138
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c517:
	DD	..@c519-..@c518
..@c518:
	DQ	..@c141,..@c142-..@c141
	DB	4
	DD	..@c143-..@c141
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c519:
	DD	..@c521-..@c520
..@c520:
	DQ	..@c144,..@c145-..@c144
	DB	4
	DD	..@c146-..@c144
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c521:
	DD	..@c523-..@c522
..@c522:
	DQ	..@c147,..@c148-..@c147
	DB	4
	DD	..@c149-..@c147
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c150-..@c149
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c151-..@c150
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c523:
	DD	..@c525-..@c524
..@c524:
	DQ	..@c152,..@c153-..@c152
	DB	4
	DD	..@c154-..@c152
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c525:
	DD	..@c527-..@c526
..@c526:
	DQ	..@c155,..@c156-..@c155
	ALIGN 4,DB 0
..@c527:
	DD	..@c529-..@c528
..@c528:
	DQ	..@c157,..@c158-..@c157
	ALIGN 4,DB 0
..@c529:
	DD	..@c531-..@c530
..@c530:
	DQ	..@c159,..@c160-..@c159
	DB	4
	DD	..@c161-..@c159
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c531:
	DD	..@c533-..@c532
..@c532:
	DQ	..@c162,..@c163-..@c162
	DB	4
	DD	..@c164-..@c162
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c533:
	DD	..@c535-..@c534
..@c534:
	DQ	..@c165,..@c166-..@c165
	ALIGN 4,DB 0
..@c535:
	DD	..@c537-..@c536
..@c536:
	DQ	..@c167,..@c168-..@c167
	DB	4
	DD	..@c169-..@c167
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c537:
	DD	..@c539-..@c538
..@c538:
	DQ	..@c170,..@c171-..@c170
	DB	4
	DD	..@c172-..@c170
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c539:
	DD	..@c541-..@c540
..@c540:
	DQ	..@c173,..@c174-..@c173
	ALIGN 4,DB 0
..@c541:
	DD	..@c543-..@c542
..@c542:
	DQ	..@c175,..@c176-..@c175
	DB	4
	DD	..@c177-..@c175
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c543:
	DD	..@c545-..@c544
..@c544:
	DQ	..@c178,..@c179-..@c178
	ALIGN 4,DB 0
..@c545:
	DD	..@c547-..@c546
..@c546:
	DQ	..@c180,..@c181-..@c180
	ALIGN 4,DB 0
..@c547:
	DD	..@c549-..@c548
..@c548:
	DQ	..@c182,..@c183-..@c182
	ALIGN 4,DB 0
..@c549:
	DD	..@c551-..@c550
..@c550:
	DQ	..@c184,..@c185-..@c184
	DB	4
	DD	..@c186-..@c184
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c187-..@c186
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c188-..@c187
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c551:
	DD	..@c553-..@c552
..@c552:
	DQ	..@c189,..@c190-..@c189
	DB	4
	DD	..@c191-..@c189
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c553:
	DD	..@c555-..@c554
..@c554:
	DQ	..@c192,..@c193-..@c192
	ALIGN 4,DB 0
..@c555:
	DD	..@c557-..@c556
..@c556:
	DQ	..@c194,..@c195-..@c194
	DB	4
	DD	..@c196-..@c194
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c197-..@c196
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c198-..@c197
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c557:
	DD	..@c559-..@c558
..@c558:
	DQ	..@c199,..@c200-..@c199
	DB	4
	DD	..@c201-..@c199
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c559:
	DD	..@c561-..@c560
..@c560:
	DQ	..@c202,..@c203-..@c202
	DB	4
	DD	..@c204-..@c202
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c561:
	DD	..@c563-..@c562
..@c562:
	DQ	..@c205,..@c206-..@c205
	ALIGN 4,DB 0
..@c563:
	DD	..@c565-..@c564
..@c564:
	DQ	..@c207,..@c208-..@c207
	DB	4
	DD	..@c209-..@c207
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c565:
	DD	..@c567-..@c566
..@c566:
	DQ	..@c210,..@c211-..@c210
	DB	4
	DD	..@c212-..@c210
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c567:
	DD	..@c569-..@c568
..@c568:
	DQ	..@c213,..@c214-..@c213
	DB	4
	DD	..@c215-..@c213
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c216-..@c215
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c217-..@c216
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c569:
	DD	..@c571-..@c570
..@c570:
	DQ	..@c218,..@c219-..@c218
	DB	4
	DD	..@c220-..@c218
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c221-..@c220
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c222-..@c221
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c571:
	DD	..@c573-..@c572
..@c572:
	DQ	..@c223,..@c224-..@c223
	DB	4
	DD	..@c225-..@c223
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c573:
	DD	..@c575-..@c574
..@c574:
	DQ	..@c226,..@c227-..@c226
	DB	4
	DD	..@c228-..@c226
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c575:
	DD	..@c577-..@c576
..@c576:
	DQ	..@c229,..@c230-..@c229
	DB	4
	DD	..@c231-..@c229
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c577:
	DD	..@c579-..@c578
..@c578:
	DQ	..@c232,..@c233-..@c232
	DB	4
	DD	..@c234-..@c232
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c579:
	DD	..@c581-..@c580
..@c580:
	DQ	..@c235,..@c236-..@c235
	DB	4
	DD	..@c237-..@c235
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c581:
	DD	..@c583-..@c582
..@c582:
	DQ	..@c238,..@c239-..@c238
	ALIGN 4,DB 0
..@c583:
	DD	..@c585-..@c584
..@c584:
	DQ	..@c240,..@c241-..@c240
	DB	4
	DD	..@c242-..@c240
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c243-..@c242
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c244-..@c243
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c585:
	DD	..@c587-..@c586
..@c586:
	DQ	..@c245,..@c246-..@c245
	DB	4
	DD	..@c247-..@c245
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c248-..@c247
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c249-..@c248
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c587:
	DD	..@c589-..@c588
..@c588:
	DQ	..@c250,..@c251-..@c250
	DB	4
	DD	..@c252-..@c250
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c589:
	DD	..@c591-..@c590
..@c590:
	DQ	..@c253,..@c254-..@c253
	DB	4
	DD	..@c255-..@c253
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c591:
	DD	..@c593-..@c592
..@c592:
	DQ	..@c256,..@c257-..@c256
	DB	4
	DD	..@c258-..@c256
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c593:
	DD	..@c595-..@c594
..@c594:
	DQ	..@c259,..@c260-..@c259
	DB	4
	DD	..@c261-..@c259
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c595:
	DD	..@c597-..@c596
..@c596:
	DQ	..@c262,..@c263-..@c262
	DB	4
	DD	..@c264-..@c262
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c597:
	DD	..@c599-..@c598
..@c598:
	DQ	..@c265,..@c266-..@c265
	DB	4
	DD	..@c267-..@c265
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c599:
	DD	..@c601-..@c600
..@c600:
	DQ	..@c268,..@c269-..@c268
	DB	4
	DD	..@c270-..@c268
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c601:
	DD	..@c603-..@c602
..@c602:
	DQ	..@c271,..@c272-..@c271
	DB	4
	DD	..@c273-..@c271
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c603:
	DD	..@c605-..@c604
..@c604:
	DQ	..@c274,..@c275-..@c274
	DB	4
	DD	..@c276-..@c274
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c605:
	DD	..@c607-..@c606
..@c606:
	DQ	..@c277,..@c278-..@c277
	DB	4
	DD	..@c279-..@c277
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c607:
	DD	..@c609-..@c608
..@c608:
	DQ	..@c280,..@c281-..@c280
	DB	4
	DD	..@c282-..@c280
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c283-..@c282
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c284-..@c283
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c609:
	DD	..@c611-..@c610
..@c610:
	DQ	..@c285,..@c286-..@c285
	DB	4
	DD	..@c287-..@c285
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c611:
	DD	..@c613-..@c612
..@c612:
	DQ	..@c288,..@c289-..@c288
	DB	4
	DD	..@c290-..@c288
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c613:
	DD	..@c615-..@c614
..@c614:
	DQ	..@c291,..@c292-..@c291
	DB	4
	DD	..@c293-..@c291
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c294-..@c293
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c295-..@c294
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c615:
	DD	..@c617-..@c616
..@c616:
	DQ	..@c296,..@c297-..@c296
	DB	4
	DD	..@c298-..@c296
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c299-..@c298
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c300-..@c299
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c617:
	DD	..@c619-..@c618
..@c618:
	DQ	..@c301,..@c302-..@c301
	DB	4
	DD	..@c303-..@c301
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c304-..@c303
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c305-..@c304
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c619:
	DD	..@c621-..@c620
..@c620:
	DQ	..@c306,..@c307-..@c306
	DB	4
	DD	..@c308-..@c306
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c309-..@c308
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c310-..@c309
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c621:
	DD	..@c623-..@c622
..@c622:
	DQ	..@c311,..@c312-..@c311
	DB	4
	DD	..@c313-..@c311
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c314-..@c313
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c315-..@c314
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c623:
	DD	..@c625-..@c624
..@c624:
	DQ	..@c316,..@c317-..@c316
	DB	4
	DD	..@c318-..@c316
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c319-..@c318
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c320-..@c319
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c625:
	DD	..@c627-..@c626
..@c626:
	DQ	..@c321,..@c322-..@c321
	DB	4
	DD	..@c323-..@c321
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c324-..@c323
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c325-..@c324
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c627:
	DD	..@c629-..@c628
..@c628:
	DQ	..@c326,..@c327-..@c326
	DB	4
	DD	..@c328-..@c326
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c329-..@c328
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c330-..@c329
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c629:
	DD	..@c631-..@c630
..@c630:
	DQ	..@c331,..@c332-..@c331
	DB	4
	DD	..@c333-..@c331
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c631:
	DD	..@c633-..@c632
..@c632:
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
..@c633:
	DD	..@c635-..@c634
..@c634:
	DQ	..@c339,..@c340-..@c339
	DB	4
	DD	..@c341-..@c339
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c635:
	DD	..@c637-..@c636
..@c636:
	DQ	..@c342,..@c343-..@c342
	DB	4
	DD	..@c344-..@c342
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c637:
	DD	..@c639-..@c638
..@c638:
	DQ	..@c345,..@c346-..@c345
	DB	4
	DD	..@c347-..@c345
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c639:
	DD	..@c641-..@c640
..@c640:
	DQ	..@c348,..@c349-..@c348
	ALIGN 4,DB 0
..@c641:
	DD	..@c643-..@c642
..@c642:
	DQ	..@c350,..@c351-..@c350
	DB	4
	DD	..@c352-..@c350
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c643:
	DD	..@c645-..@c644
..@c644:
	DQ	..@c353,..@c354-..@c353
	DB	4
	DD	..@c355-..@c353
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c645:
	DD	..@c647-..@c646
..@c646:
	DQ	..@c356,..@c357-..@c356
	DB	4
	DD	..@c358-..@c356
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c359-..@c358
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c360-..@c359
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c647:
	DD	..@c649-..@c648
..@c648:
	DQ	..@c361,..@c362-..@c361
	DB	4
	DD	..@c363-..@c361
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c364-..@c363
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c365-..@c364
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c649:
	DD	..@c651-..@c650
..@c650:
	DQ	..@c366,..@c367-..@c366
	DB	4
	DD	..@c368-..@c366
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c369-..@c368
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c370-..@c369
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c651:
	DD	..@c653-..@c652
..@c652:
	DQ	..@c371,..@c372-..@c371
	DB	4
	DD	..@c373-..@c371
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c374-..@c373
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c375-..@c374
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c653:
	DD	..@c655-..@c654
..@c654:
	DQ	..@c376,..@c377-..@c376
	DB	4
	DD	..@c378-..@c376
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c655:
	DD	..@c657-..@c656
..@c656:
	DQ	..@c379,..@c380-..@c379
	DB	4
	DD	..@c381-..@c379
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c657:
	DD	..@c659-..@c658
..@c658:
	DQ	..@c382,..@c383-..@c382
	DB	4
	DD	..@c384-..@c382
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c659:
	DD	..@c661-..@c660
..@c660:
	DQ	..@c385,..@c386-..@c385
	DB	4
	DD	..@c387-..@c385
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c661:
	DD	..@c663-..@c662
..@c662:
	DQ	..@c388,..@c389-..@c388
	DB	4
	DD	..@c390-..@c388
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c663:
	DD	..@c665-..@c664
..@c664:
	DQ	..@c391,..@c392-..@c391
	DB	4
	DD	..@c393-..@c391
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c665:
	DD	..@c667-..@c666
..@c666:
	DQ	..@c394,..@c395-..@c394
	ALIGN 4,DB 0
..@c667:
	DD	..@c669-..@c668
..@c668:
	DQ	..@c396,..@c397-..@c396
	DB	4
	DD	..@c398-..@c396
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c399-..@c398
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c400-..@c399
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c669:
	DD	..@c671-..@c670
..@c670:
	DQ	..@c401,..@c402-..@c401
	DB	4
	DD	..@c403-..@c401
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c671:
	DD	..@c673-..@c672
..@c672:
	DQ	..@c404,..@c405-..@c404
	DB	4
	DD	..@c406-..@c404
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c673:
	DD	..@c675-..@c674
..@c674:
	DQ	..@c407,..@c408-..@c407
	DB	4
	DD	..@c409-..@c407
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c675:
	DD	..@c677-..@c676
..@c676:
	DQ	..@c410,..@c411-..@c410
	DB	4
	DD	..@c412-..@c410
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c677:
; End asmlist al_dwarf_frame

