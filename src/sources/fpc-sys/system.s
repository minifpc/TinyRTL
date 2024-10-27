BITS 64
default rel
CPU x64

EXTERN	PASCALMAIN
EXTERN	_$dll$user32$MessageBoxA
EXTERN	_$dll$kernel32$VirtualAlloc
EXTERN	_$dll$kernel32$ExitProcess
EXTERN	_$dll$kernel32$HeapCreate
EXTERN	_$dll$kernel32$LocalAlloc
EXTERN	_$dll$kernel32$LocalFree
EXTERN	_$dll$kernel32$lstrlenA
EXTERN	_$dll$ucrtbase$strcpy
EXTERN	_$dll$ucrtbase$strcat
EXTERN	_$dll$msvcrt$strcmp
EXTERN	_$dll$msvcrt$memmove
EXTERN	_$dll$kernel32$GetACP
EXTERN	_$dll$kernel32$LockFile
EXTERN	_$dll$kernel32$WriteFile
EXTERN	_$dll$shlwapi$PathFileExistsA
EXTERN	_$dll$kernel32$GetLastError
EXTERN	_$dll$kernel32$DeleteFileA
EXTERN	_$dll$kernel32$CreateFileA
EXTERN	_$dll$kernel32$SetFilePointer
EXTERN	_$dll$kernel32$SetConsoleOutputCP
EXTERN	_$dll$kernel32$SetConsoleCP
EXTERN	_$dll$msvcrt$printf
EXTERN	_$dll$msvcrt$scanf
EXTERN	_$dll$msvcrt$stdin
EXTERN	_$dll$msvcrt$fgets
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
		mov	r9d,4
		mov	r8d,12288
		mov	edx,1
		xor	ecx,ecx
		call	_$dll$kernel32$VirtualAlloc
		mov	qword [rbx],rax
		test	rax,rax
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
	GLOBAL fpc_char_to_ansistr
fpc_char_to_ansistr:
..@c32:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c34:
		mov	bl,dl
		xor	r8d,r8d
		mov	edx,65535
		mov	ecx,1
		call	_$dll$kernel32$HeapCreate
		mov	rsi,rax
		test	esi,esi
		jne	..@j37
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld5]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		jmp	..@j34
..@j37:
		mov	edx,2
		mov	ecx,66
		call	_$dll$kernel32$LocalAlloc
		and	eax,eax
		mov	byte [rax],bl
		mov	byte [rax+1],0
		mov	ecx,esi
		call	_$dll$kernel32$LocalFree
..@j34:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c33:

SECTION .text
	GLOBAL fpc_ansistr_unique
fpc_ansistr_unique:
..@c35:
		mov	rax,qword [rcx]
		cmp	qword [rcx],0
		je	..@j38
		mov	rax,qword [rcx]
..@j38:
		ret
..@c36:

SECTION .text
SYSTEM_$$_PCHARTOANSISTRING$PCHAR$$ANSISTRING:
..@c37:
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c39:
		mov	rbx,rcx
		mov	rsi,rdx
		xor	edi,edi
		jmp	..@j45
..@j44:
		inc	rdi
..@j45:
		cmp	byte [rsi+rdi*1],0
		jne	..@j44
		mov	edx,edi
		mov	r9d,4
		mov	r8d,12288
		xor	ecx,ecx
		call	_$dll$kernel32$VirtualAlloc
		mov	qword [rbx],rax
		cmp	rdi,1
		jnae	..@j48
		xor	r12,r12
..@j49:
		inc	r12
		mov	rcx,rbx
		call	fpc_ansistr_unique
		mov	dl,byte [rsi+r12*1-1]
		mov	byte [rax+r12*1-1],dl
		cmp	rdi,r12
		jnbe	..@j49
..@j48:
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c38:

SECTION .text
	GLOBAL fpc_pchar_to_ansistr
fpc_pchar_to_ansistr:
..@c40:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c42:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rdx,rdx
		jne	..@j55
		mov	rcx,rbx
		xor	edx,edx
		call	fpc_ansistr_assign
		jmp	..@j52
..@j55:
		mov	rcx,rsi
		call	_$dll$kernel32$lstrlenA
		lea	edx,[eax+1]
		mov	r9d,4
		mov	r8d,12288
		xor	ecx,ecx
		call	_$dll$kernel32$VirtualAlloc
		mov	qword [rsp+32],rax
		test	rax,rax
		jne	..@j57
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld6]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
..@j57:
		mov	rdx,rsi
		mov	rcx,qword [rsp+32]
		call	_$dll$ucrtbase$strcpy
		lea	rdx,[rsp+32]
		mov	rcx,rbx
		call	fpc_ansistr_assign
..@j52:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c41:

SECTION .text
	GLOBAL fpc_ansistr_assign
fpc_ansistr_assign:
	GLOBAL FPC_ANSISTR_ASSIGN
FPC_ANSISTR_ASSIGN:
..@c43:
		ret
..@c44:

SECTION .text
	GLOBAL fpc_ansistr_concat
fpc_ansistr_concat:
..@c45:
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c47:
		mov	rbx,rcx
		mov	rsi,rdx
		mov	rdi,r8
		mov	rcx,rsi
		call	_$dll$kernel32$lstrlenA
		mov	r12d,eax
		mov	rcx,rdi
		call	_$dll$kernel32$lstrlenA
		lea	edx,[r12d+1]
		mov	r9d,4
		mov	r8d,12288
		xor	ecx,ecx
		call	_$dll$kernel32$VirtualAlloc
		mov	qword [rbx],rax
		test	rax,rax
		je	..@j63
		mov	edx,r12d
		mov	rcx,rbx
		xor	r8d,r8d
		call	SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR
		mov	rcx,qword [rbx]
		mov	rdx,rsi
		call	_$dll$ucrtbase$strcpy
		mov	rcx,qword [rbx]
		mov	rdx,rdi
		call	_$dll$ucrtbase$strcat
		jmp	..@j64
..@j63:
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld7]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
..@j64:
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c46:

SECTION .text
	GLOBAL fpc_ansistr_compare_equal
fpc_ansistr_compare_equal:
	GLOBAL FPC_ANSISTR_COMPARE_EQUAL
FPC_ANSISTR_COMPARE_EQUAL:
..@c48:
		lea	rsp,[rsp-40]
..@c50:
		call	_$dll$msvcrt$strcmp
		test	eax,eax
		jne	..@j68
		mov	eax,1
		jmp	..@j69
..@j68:
		xor	eax,eax
..@j69:
		nop
		lea	rsp,[rsp+40]
		ret
..@c49:

SECTION .text
	GLOBAL SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT
SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT:
..@c51:
		xor	eax,eax
		ret
..@c52:

SECTION .text
	GLOBAL fpc_get_input
fpc_get_input:
..@c53:
		xor	eax,eax
		ret
..@c54:

SECTION .text
	GLOBAL fpc_readln_end
fpc_readln_end:
	GLOBAL FPC_READLN_END
FPC_READLN_END:
..@c55:
		mov	rax,rcx
		ret
..@c56:

SECTION .text
	GLOBAL fpc_do_exit
fpc_do_exit:
	GLOBAL FPC_DO_EXIT
FPC_DO_EXIT:
..@c57:
		lea	rsp,[rsp-40]
..@c59:
		xor	ecx,ecx
		call	_$dll$kernel32$ExitProcess
		nop
		lea	rsp,[rsp+40]
		ret
..@c58:

SECTION .text
	GLOBAL fpc_iocheck
fpc_iocheck:
..@c60:
		ret
..@c61:

SECTION .text
	GLOBAL fpc_help_constructor
fpc_help_constructor:
..@c62:
		xor	eax,eax
		ret
..@c63:

SECTION .text
	GLOBAL fpc_help_destructor
fpc_help_destructor:
..@c64:
		mov	rax,rcx
		ret
..@c65:

SECTION .text
	GLOBAL fpc_help_fail
fpc_help_fail:
..@c66:
		lea	rsp,[rsp-40]
..@c68:
		mov	rax,rcx
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld8]
		lea	rdx,[_$SYSTEM$_Ld9]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c67:

SECTION .text
	GLOBAL fpc_reraise
fpc_reraise:
..@c69:
		ret
..@c70:

SECTION .text
	GLOBAL fpc_finalize
fpc_finalize:
..@c71:
		mov	rax,rcx
		ret
..@c72:

SECTION .text
	GLOBAL fpc_initializeunits
fpc_initializeunits:
	GLOBAL FPC_INITIALIZEUNITS
FPC_INITIALIZEUNITS:
..@c73:
		ret
..@c74:

SECTION .text
	GLOBAL fpc_libinitializeunits
fpc_libinitializeunits:
	GLOBAL FPC_LIBINITIALIZEUNITS
FPC_LIBINITIALIZEUNITS:
..@c75:
		ret
..@c76:

SECTION .text
	GLOBAL SYSTEM_$$_MOVE$formal$formal$LONGDWORD
SYSTEM_$$_MOVE$formal$formal$LONGDWORD:
	GLOBAL FPC_move
FPC_move:
..@c77:
		lea	rsp,[rsp-40]
..@c79:
		mov	rax,rcx
		mov	rcx,rdx
		mov	rdx,rax
		call	_$dll$msvcrt$memmove
		nop
		lea	rsp,[rsp+40]
		ret
..@c78:

SECTION .text
	GLOBAL SYSTEM_$$_SHOWMESSAGE$PCHAR
SYSTEM_$$_SHOWMESSAGE$PCHAR:
..@c80:
		lea	rsp,[rsp-40]
..@c82:
		mov	rdx,rcx
		mov	r9d,64
		lea	r8,[_$SYSTEM$_Ld10]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c81:

SECTION .text
	GLOBAL SYSTEM_$$_SHOWWARN$PCHAR
SYSTEM_$$_SHOWWARN$PCHAR:
..@c83:
		lea	rsp,[rsp-40]
..@c85:
		mov	rdx,rcx
		mov	r9d,48
		lea	r8,[_$SYSTEM$_Ld11]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c84:

SECTION .text
	GLOBAL SYSTEM_$$_SHOWERROR$PCHAR
SYSTEM_$$_SHOWERROR$PCHAR:
..@c86:
		lea	rsp,[rsp-40]
..@c88:
		mov	rdx,rcx
		mov	r9d,48
		lea	r8,[_$SYSTEM$_Ld3]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c87:

SECTION .text
	GLOBAL SYSTEM_$$_SHOWINFO$PCHAR
SYSTEM_$$_SHOWINFO$PCHAR:
..@c89:
		lea	rsp,[rsp-40]
..@c91:
		call	SYSTEM_$$_SHOWMESSAGE$PCHAR
		nop
		lea	rsp,[rsp+40]
		ret
..@c90:

SECTION .text
	GLOBAL SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR
SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR:
..@c92:
		lea	rax,[rdx-1]
		mov	rdx,-1
..@j106:
		inc	rdx
		mov	byte [rcx],r8b
		inc	rcx
		cmp	rax,rdx
		jnbe	..@j106
		ret
..@c93:

SECTION .text
	GLOBAL SYSTEM_$$_FREEMEM$POINTER
SYSTEM_$$_FREEMEM$POINTER:
..@c94:
		lea	rsp,[rsp-40]
..@c96:
		mov	rax,rcx
		mov	rcx,qword [rax]
		mov	r8d,32768
		xor	edx,edx
		call	_$dll$kernel32$VirtualAlloc
		nop
		lea	rsp,[rsp+40]
		ret
..@c95:

SECTION .text
	GLOBAL SYSTEM_$$_GETMEM$POINTER$LONGDWORD
SYSTEM_$$_GETMEM$POINTER$LONGDWORD:
..@c97:
		push	rbx
		lea	rsp,[rsp-32]
..@c99:
		mov	rbx,rcx
		mov	r9d,4
		mov	r8d,12288
		xor	ecx,ecx
		call	_$dll$kernel32$VirtualAlloc
		mov	qword [rbx],rax
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c98:

SECTION .text
	GLOBAL SYSTEM_$$_TSYSTEMCODEPAGE$$LONGDWORD
SYSTEM_$$_TSYSTEMCODEPAGE$$LONGDWORD:
..@c100:
		lea	rsp,[rsp-40]
..@c102:
		call	_$dll$kernel32$GetACP
		nop
		lea	rsp,[rsp+40]
		ret
..@c101:

SECTION .text
	GLOBAL SYSTEM_$$_LOCKFILE$POINTER$$BOOLEAN
SYSTEM_$$_LOCKFILE$POINTER$$BOOLEAN:
..@c103:
		push	rbx
		lea	rsp,[rsp-48]
..@c105:
		xor	bl,bl
		mov	dword [rsp+32],0
		xor	r8d,r8d
		xor	edx,edx
		call	_$dll$kernel32$LockFile
		test	al,al
		jne	..@j118
		lea	rcx,[_$SYSTEM$_Ld12]
		call	SYSTEM_$$_SHOWERROR$PCHAR
		jmp	..@j115
..@j118:
		mov	bl,1
..@j115:
		mov	al,bl
		nop
		lea	rsp,[rsp+48]
		pop	rbx
		ret
..@c104:

SECTION .text
	GLOBAL SYSTEM_$$_WRITEFILE$LONGWORD$PCHAR$$QWORD
SYSTEM_$$_WRITEFILE$LONGWORD$PCHAR$$QWORD:
..@c106:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c108:
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
..@c107:

SECTION .text
	GLOBAL SYSTEM_$$_WRITEFILE$LONGWORD$POINTER$$QWORD
SYSTEM_$$_WRITEFILE$LONGWORD$POINTER$$QWORD:
..@c109:
		lea	rsp,[rsp-56]
..@c111:
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
..@c110:

SECTION .text
	GLOBAL SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER
SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER:
..@c112:
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		lea	rsp,[rsp-64]
..@c114:
		mov	rbx,rcx
		mov	sil,dl
		lea	rcx,[_$SYSTEM$_Ld13]
		call	SYSTEM_$$_SHOWINFO$PCHAR
		mov	rcx,rbx
		call	_$dll$shlwapi$PathFileExistsA
		mov	rdi,rax
		cmp	edi,1
		jne	..@j126
		test	sil,sil
		jne	..@j128
		xor	r12d,r12d
		lea	rcx,[rsp+56]
		mov	edx,255
		call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
		mov	rcx,qword [rsp+56]
		lea	rdx,[_$SYSTEM$_Ld14]
		call	_$dll$ucrtbase$strcpy
		mov	rdx,rbx
		mov	rcx,qword [rsp+56]
		call	_$dll$ucrtbase$strcat
		mov	rcx,qword [rsp+56]
		lea	rdx,[_$SYSTEM$_Ld15]
		call	_$dll$ucrtbase$strcat
		mov	rcx,qword [rsp+56]
		lea	rdx,[_$SYSTEM$_Ld16]
		call	_$dll$ucrtbase$strcat
		mov	rdx,qword [rsp+56]
		mov	r9d,4
		lea	r8,[_$SYSTEM$_Ld10]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	edi,eax
		cmp	edi,6
		jne	..@j130
		mov	rcx,rbx
		call	SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN
		mov	rcx,rbx
		mov	dl,1
		call	SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER
		mov	r13,rax
		call	_$dll$kernel32$GetLastError
		mov	r12d,eax
..@j130:
		lea	rcx,[rsp+56]
		call	SYSTEM_$$_FREEMEM$POINTER
		test	r12d,r12d
		je	..@j138
		lea	rcx,[_$SYSTEM$_Ld17]
		call	SYSTEM_$$_SHOWERROR$PCHAR
		jmp	..@j123
		jmp	..@j138
..@j128:
		test	sil,sil
		je	..@j138
		mov	rcx,rbx
		call	_$dll$kernel32$DeleteFileA
		mov	dl,al
		test	dil,dil
		jne	..@j137
		lea	rcx,[_$SYSTEM$_Ld18]
		call	SYSTEM_$$_SHOWMESSAGE$PCHAR
..@j137:
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
		jmp	..@j123
		jmp	..@j138
..@j126:
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
		je	..@j140
		lea	rcx,[_$SYSTEM$_Ld17]
		call	SYSTEM_$$_SHOWERROR$PCHAR
		jmp	..@j123
..@j140:
..@j138:
		mov	eax,r13d
		cmp	eax,-1
		jne	..@j142
		lea	rcx,[rsp+56]
		mov	edx,255
		call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
		mov	rcx,qword [rsp+56]
		lea	rdx,[_$SYSTEM$_Ld14]
		call	_$dll$ucrtbase$strcpy
		mov	rdx,rbx
		mov	rcx,qword [rsp+56]
		call	_$dll$ucrtbase$strcat
		mov	rcx,qword [rsp+56]
		lea	rdx,[_$SYSTEM$_Ld19]
		call	_$dll$ucrtbase$strcat
		mov	rcx,qword [rsp+56]
		call	SYSTEM_$$_SHOWERROR$PCHAR
		lea	rcx,[rsp+56]
		call	SYSTEM_$$_FREEMEM$POINTER
		xor	esi,esi
		jmp	..@j123
..@j142:
		mov	rsi,r13
..@j123:
		mov	rax,rsi
		nop
		lea	rsp,[rsp+64]
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c113:

SECTION .text
	GLOBAL SYSTEM_$$_FILECREATE$RAWBYTESTRING$BOOLEAN$$POINTER
SYSTEM_$$_FILECREATE$RAWBYTESTRING$BOOLEAN$$POINTER:
..@c115:
		lea	rsp,[rsp-40]
..@c117:
		test	rcx,rcx
		jne	..@j145
		lea	rcx,[FPC_EMPTYCHAR]
..@j145:
		call	SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER
		nop
		lea	rsp,[rsp+40]
		ret
..@c116:

SECTION .text
	GLOBAL SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN
SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN:
..@c118:
		lea	rsp,[rsp-40]
..@c120:
		call	_$dll$kernel32$DeleteFileA
		nop
		lea	rsp,[rsp+40]
		ret
..@c119:

SECTION .text
	GLOBAL SYSTEM_$$_FILEDELETE$RAWBYTESTRING$$BOOLEAN
SYSTEM_$$_FILEDELETE$RAWBYTESTRING$$BOOLEAN:
..@c121:
		lea	rsp,[rsp-40]
..@c123:
		test	rcx,rcx
		jne	..@j150
		lea	rcx,[FPC_EMPTYCHAR]
..@j150:
		call	SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN
		nop
		lea	rsp,[rsp+40]
		ret
..@c122:

SECTION .text
	GLOBAL SYSTEM_$$_FILESEEK$LONGWORD$LONGDWORD$LONGDWORD$$LONGDWORD
SYSTEM_$$_FILESEEK$LONGWORD$LONGDWORD$LONGDWORD$$LONGDWORD:
..@c124:
		push	rbx
		lea	rsp,[rsp-32]
..@c126:
		mov	r9d,r8d
		xor	r8,r8
		call	_$dll$kernel32$SetFilePointer
		mov	ebx,eax
		call	_$dll$kernel32$GetLastError
		cmp	ebx,-1
		jne	..@j154
		test	eax,eax
		je	..@j154
		lea	rcx,[_$SYSTEM$_Ld20]
		call	SYSTEM_$$_SHOWERROR$PCHAR
		mov	eax,-1
		jmp	..@j151
..@j154:
		mov	eax,ebx
..@j151:
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c125:

SECTION .text
	GLOBAL SYSTEM_$$_FILESEEK$POINTER$LONGDWORD$LONGDWORD$$LONGDWORD
SYSTEM_$$_FILESEEK$POINTER$LONGDWORD$LONGDWORD$$LONGDWORD:
..@c127:
		lea	rsp,[rsp-40]
..@c129:
		call	SYSTEM_$$_FILESEEK$LONGWORD$LONGDWORD$LONGDWORD$$LONGDWORD
		mov	eax,edx
		nop
		lea	rsp,[rsp+40]
		ret
..@c128:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT:
..@c130:
		push	rbp
..@c132:
..@c133:
		mov	rbp,rsp
..@c134:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j161
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j161:
		cmp	qword [rbp-16],0
		je	..@j158
..@j169:
		nop
..@j168:
		mov	qword [rbp-24],-1
		mov	rdx,qword [rbp-16]
		lea	rcx,[VMT_$SYSTEM_$$_TOBJECT]
		lea	rax,[VMT_$SYSTEM_$$_TOBJECT]
		call	[rax+120]
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j166
		cmp	qword [rbp-8],0
		je	..@j166
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j166
..@j165:
		cmp	qword [rbp-8],0
		je	..@j175
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+96]
..@j175:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j176:
		nop
..@j166:
..@j158:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c131:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_DESTROY
SYSTEM$_$TOBJECT_$__$$_DESTROY:
..@c135:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c137:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j180
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j180:
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
		test	rbx,rbx
		je	..@j182
		test	rsi,rsi
		je	..@j182
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j182:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c136:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION:
..@c138:
		mov	rax,rcx
		ret
..@c139:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION:
..@c140:
		mov	rax,rcx
		ret
..@c141:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING:
..@c142:
		lea	rsp,[rsp-40]
..@c144:
		mov	rax,rcx
		mov	rcx,rdx
		lea	rdx,[..@d21]
		call	fpc_ansistr_assign
		nop
		lea	rsp,[rsp+40]
		ret
..@c143:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_GETINSTANCE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_GETINSTANCE$$TOBJECT:
..@c145:
		push	rbx
		lea	rsp,[rsp-32]
..@c147:
		xor	ebx,ebx
		cmp	qword [U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE],0
		jne	..@j193
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld22]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		jmp	..@j190
..@j193:
		mov	rbx,qword [U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE]
..@j190:
		mov	rax,rbx
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c146:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT:
..@c148:
		xor	eax,eax
		ret
..@c149:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_FREE
SYSTEM$_$TOBJECT_$__$$_FREE:
..@c150:
		push	rbx
		lea	rsp,[rsp-32]
..@c152:
		mov	rbx,rcx
		mov	r9d,16
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld23]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		test	rbx,rbx
		je	..@j199
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j199:
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c151:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT:
..@c153:
		lea	rsp,[rsp-40]
..@c155:
		mov	r9d,4
		mov	r8d,12288
		mov	edx,8
		xor	ecx,ecx
		call	_$dll$kernel32$VirtualAlloc
		mov	qword [U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE],rax
		test	rax,rax
		jne	..@j203
		mov	r9d,16
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld23]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
..@j203:
		mov	rax,rdx
		nop
		lea	rsp,[rsp+40]
		ret
..@c154:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER:
..@c156:
		mov	qword [rdx],rcx
		ret
..@c157:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE:
..@c158:
		push	rbx
		lea	rsp,[rsp-32]
..@c160:
		mov	rbx,rcx
		mov	r9d,16
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld23]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		cmp	qword [U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE],0
		je	..@j209
		mov	rcx,qword [U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE]
		mov	r8d,32768
		xor	edx,edx
		call	_$dll$kernel32$VirtualAlloc
..@j209:
		mov	r9d,16
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld23]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		test	rbx,rbx
		je	..@j211
		mov	r9d,16
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld23]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	rcx,rbx
		mov	r8d,32768
		xor	edx,edx
		call	_$dll$kernel32$VirtualAlloc
..@j211:
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c159:

SECTION .text
SYSTEM_$$_SAFECALLEXCEPTION$POINTER$POINTER$$SHORTDWORD:
..@c161:
		mov	eax,edx
		ret
..@c162:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD:
..@c163:
		mov	eax,1
		ret
..@c164:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal
SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal:
..@c165:
		mov	rax,rcx
		ret
..@c166:

SECTION .text
	GLOBAL SYSTEM$_$TLIST_$__$$_CREATE$$TLIST
SYSTEM$_$TLIST_$__$$_CREATE$$TLIST:
..@c167:
		push	rbp
..@c169:
..@c170:
		mov	rbp,rsp
..@c171:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j221
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j221:
		cmp	qword [rbp-16],0
		je	..@j218
..@j229:
		nop
..@j228:
		mov	qword [rbp-24],-1
		mov	rcx,qword [rbp-16]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j226
		cmp	qword [rbp-8],0
		je	..@j226
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j226
..@j225:
		cmp	qword [rbp-8],0
		je	..@j235
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSTEM$_$TLIST_$__$$_DESTROY
..@j235:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j236:
		nop
..@j226:
..@j218:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c168:

SECTION .text
	GLOBAL SYSTEM$_$TLIST_$__$$_DESTROY
SYSTEM$_$TLIST_$__$$_DESTROY:
..@c172:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c174:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j240
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j240:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j242
		test	rsi,rsi
		je	..@j242
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j242:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c173:

SECTION .text
SYSTEM_$$_STRINGLENGTH$ANSISTRING$$LONGDWORD:
..@c175:
		xor	eax,eax
		jmp	..@j247
..@j246:
		inc	eax
..@j247:
		mov	edx,eax
		inc	rdx
		cmp	byte [rcx+rdx*1-1],0
		jne	..@j246
		ret
..@c176:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_CREATE$$TDOSCMD
SYSTEM$_$TDOSCMD_$__$$_CREATE$$TDOSCMD:
..@c177:
		push	rbp
..@c179:
..@c180:
		mov	rbp,rsp
..@c181:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j252
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j252:
		cmp	qword [rbp-16],0
		je	..@j249
..@j260:
		nop
..@j259:
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
		je	..@j262
		cmp	dword [rax+28],-1
		je	..@j262
		cmp	dword [rax+32],-1
		jne	..@j265
..@j262:
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld24]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
..@j265:
		mov	rax,qword [rbp-16]
		lea	rcx,[rax+16]
		lea	rdx,[..@d25]
		call	fpc_ansistr_assign
		mov	ecx,65001
		call	_$dll$kernel32$SetConsoleOutputCP
		mov	ecx,65001
		call	_$dll$kernel32$SetConsoleCP
		mov	rcx,qword [rbp-16]
		lea	rdx,[..@d26]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j257
		cmp	qword [rbp-8],0
		je	..@j257
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j257
..@j256:
		cmp	qword [rbp-8],0
		je	..@j270
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+96]
..@j270:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j271:
		nop
..@j257:
..@j249:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c178:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_DESTROY
SYSTEM$_$TDOSCMD_$__$$_DESTROY:
..@c182:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c184:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j275
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j275:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j277
		test	rsi,rsi
		je	..@j277
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j277:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c183:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_FREE
SYSTEM$_$TDOSCMD_$__$$_FREE:
..@c185:
		lea	rsp,[rsp-40]
..@c187:
		mov	rax,rcx
		test	rcx,rcx
		je	..@j282
		mov	rcx,rax
		mov	edx,1
		mov	rax,qword [rax]
		call	[rax+96]
..@j282:
		nop
		lea	rsp,[rsp+40]
		ret
..@c186:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_CLS
SYSTEM$_$TDOSCMD_$__$$_CLS:
..@c188:
		mov	rax,rcx
		ret
..@c189:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_CLRSCR
SYSTEM$_$TDOSCMD_$__$$_CLRSCR:
..@c190:
		lea	rsp,[rsp-40]
..@c192:
		call	SYSTEM$_$TDOSCMD_$__$$_CLS
		nop
		lea	rsp,[rsp+40]
		ret
..@c191:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_CLEARSCREEN
SYSTEM$_$TDOSCMD_$__$$_CLEARSCREEN:
..@c193:
		lea	rsp,[rsp-40]
..@c195:
		call	SYSTEM$_$TDOSCMD_$__$$_CLS
		nop
		lea	rsp,[rsp+40]
		ret
..@c194:

SECTION .text
SYSTEM$_$TDOSCMD_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$000001EC:
..@c196:
		push	rbp
..@c198:
..@c199:
		mov	rbp,rcx
..@c200:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c197:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD:
..@c201:
		push	rbp
..@c203:
..@c204:
		mov	rbp,rsp
..@c205:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
		mov	rcx,qword [rbp-16]
		call	fpc_ansistr_incr_ref
..@j297:
		nop
..@j293:
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		jne	..@j298
		lea	rdx,[FPC_EMPTYCHAR]
..@j298:
		lea	rcx,[_$SYSTEM$_Ld27]
		call	_$dll$msvcrt$printf
		mov	rdx,qword [rbp-16]
		test	rdx,rdx
		jne	..@j299
		lea	rdx,[FPC_EMPTYCHAR]
..@j299:
		lea	rcx,[_$SYSTEM$_Ld28]
		call	_$dll$msvcrt$printf
		xor	ebx,ebx
..@j295:
		nop
..@j294:
		mov	rcx,rbp
		call	SYSTEM$_$TDOSCMD_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$000001EC
		mov	eax,ebx
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c202:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_WRITE$PCHAR
SYSTEM$_$TDOSCMD_$__$$_WRITE$PCHAR:
..@c206:
		lea	rsp,[rsp-40]
..@c208:
		mov	rax,rcx
		lea	rcx,[_$SYSTEM$_Ld29]
		call	_$dll$msvcrt$printf
		nop
		lea	rsp,[rsp+40]
		ret
..@c207:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR:
..@c209:
		lea	rsp,[rsp-40]
..@c211:
		mov	rax,rcx
		lea	rcx,[_$SYSTEM$_Ld30]
		call	_$dll$msvcrt$printf
		nop
		lea	rsp,[rsp+40]
		ret
..@c210:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_WRITE$ANSISTRING
SYSTEM$_$TDOSCMD_$__$$_WRITE$ANSISTRING:
..@c212:
		lea	rsp,[rsp-40]
..@c214:
		mov	rax,rcx
		test	rdx,rdx
		jne	..@j306
		lea	rdx,[FPC_EMPTYCHAR]
..@j306:
		mov	rcx,qword [TC_$SYSTEM_$$_DOS]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITE$PCHAR
		nop
		lea	rsp,[rsp+40]
		ret
..@c213:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING
SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING:
..@c215:
		lea	rsp,[rsp-40]
..@c217:
		mov	rax,rcx
		test	rdx,rdx
		jne	..@j309
		lea	rdx,[FPC_EMPTYCHAR]
..@j309:
		mov	rcx,qword [TC_$SYSTEM_$$_DOS]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
		nop
		lea	rsp,[rsp+40]
		ret
..@c216:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_READLN$ANSISTRING$ANSISTRING
SYSTEM$_$TDOSCMD_$__$$_READLN$ANSISTRING$ANSISTRING:
..@c218:
		push	rbx
		lea	rsp,[rsp-32]
..@c220:
		mov	rax,rcx
		mov	rbx,rdx
		mov	rcx,qword [TC_$SYSTEM_$$_DOS]
		lea	rdx,[..@d31]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING
		mov	rdx,rbx
		lea	rcx,[_$SYSTEM$_Ld29]
		call	_$dll$msvcrt$scanf
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c219:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_READLN$ANSISTRING
SYSTEM$_$TDOSCMD_$__$$_READLN$ANSISTRING:
..@c221:
		mov	rax,rcx
		ret
..@c222:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_READ$ANSISTRING$ANSISTRING
SYSTEM$_$TDOSCMD_$__$$_READ$ANSISTRING$ANSISTRING:
..@c223:
		push	rbx
		lea	rsp,[rsp-304]
..@c225:
		mov	rbx,rcx
		mov	rdx,r8
		mov	rcx,qword [TC_$SYSTEM_$$_DOS]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITE$ANSISTRING
		lea	rcx,[rsp+40]
		mov	rax,qword [_$dll$msvcrt$stdin]
		mov	r8,qword [rax]
		mov	edx,255
		call	_$dll$msvcrt$fgets
		jmp	..@j314
		mov	edx,dword [rsp+296]
		lea	rcx,[_$SYSTEM$_Ld33]
		call	_$dll$msvcrt$printf
		mov	eax,dword [rsp+296]
		mov	byte [rsp+rax*1+38],0
		lea	rdx,[rsp+40]
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld34]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
..@j314:
		nop
		lea	rsp,[rsp+304]
		pop	rbx
		ret
..@c224:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_READ$ANSISTRING
SYSTEM$_$TDOSCMD_$__$$_READ$ANSISTRING:
..@c226:
		lea	rsp,[rsp-40]
..@c228:
		mov	rax,rcx
		mov	rcx,qword [TC_$SYSTEM_$$_DOS]
		lea	rdx,[..@d35]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING
		nop
		lea	rsp,[rsp+40]
		ret
..@c227:

SECTION .text
SYSTEM_$$_CHECK_RESULT$LONGDWORD:
..@c229:
		lea	rsp,[rsp-40]
..@c231:
		mov	eax,ecx
		cmp	eax,-1
		jne	..@j323
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld36]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
..@j323:
		nop
		lea	rsp,[rsp+40]
		ret
..@c230:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_GET_STDIN$$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_GET_STDIN$$LONGDWORD:
..@c232:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c234:
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
..@c233:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_GET_STDOUT$$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_GET_STDOUT$$LONGDWORD:
..@c235:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c237:
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
..@c236:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_GET_STDERR$$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_GET_STDERR$$LONGDWORD:
..@c238:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c240:
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
..@c239:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_SET_STDIN$LONGDWORD$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_SET_STDIN$LONGDWORD$LONGDWORD:
..@c241:
		push	rbx
		lea	rsp,[rsp-32]
..@c243:
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
..@c242:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_SET_STDOUT$LONGDWORD$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_SET_STDOUT$LONGDWORD$LONGDWORD:
..@c244:
		push	rbx
		lea	rsp,[rsp-32]
..@c246:
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
..@c245:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_SET_STDERR$LONGDWORD$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_SET_STDERR$LONGDWORD$LONGDWORD:
..@c247:
		push	rbx
		lea	rsp,[rsp-32]
..@c249:
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
..@c248:

SECTION .text
	GLOBAL SYSTEM_$$_INITWINDOWS
SYSTEM_$$_INITWINDOWS:
..@c250:
		lea	rsp,[rsp-40]
..@c252:
		mov	eax,1
		lea	rcx,[VMT_$SYSTEM_$$_WINDOWS_CLASS]
		mov	rdx,rax
		call	SYSTEM$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS
		mov	qword [U_$SYSTEM_$$_WINDOWS],rax
		nop
		lea	rsp,[rsp+40]
		ret
..@c251:

SECTION .text
	GLOBAL SYSTEM_$$_DONEWINDOWS
SYSTEM_$$_DONEWINDOWS:
..@c253:
		lea	rsp,[rsp-40]
..@c255:
		cmp	qword [U_$SYSTEM_$$_WINDOWS],0
		je	..@j341
		mov	rax,qword [U_$SYSTEM_$$_WINDOWS]
		mov	rdx,qword [U_$SYSTEM_$$_WINDOWS]
		mov	rdx,qword [rdx]
		mov	rcx,rax
		call	[rdx+184]
..@j341:
		nop
		lea	rsp,[rsp+40]
		ret
..@c254:

SECTION .text
	GLOBAL SYSTEM$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS
SYSTEM$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS:
..@c256:
		push	rbp
..@c258:
..@c259:
		mov	rbp,rsp
..@c260:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j345
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j345:
		cmp	qword [rbp-16],0
		je	..@j342
..@j353:
		nop
..@j352:
		mov	qword [rbp-24],-1
		mov	rcx,qword [rbp-16]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j350
		cmp	qword [rbp-8],0
		je	..@j350
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j350
..@j349:
		cmp	qword [rbp-8],0
		je	..@j359
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY
..@j359:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j360:
		nop
..@j350:
..@j342:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c257:

SECTION .text
	GLOBAL SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY
SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY:
..@c261:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c263:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j364
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j364:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j366
		test	rsi,rsi
		je	..@j366
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j366:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c262:

SECTION .text
	GLOBAL SYSTEM$_$WINDOWS_CLASS_$__$$_FREE
SYSTEM$_$WINDOWS_CLASS_$__$$_FREE:
..@c264:
		lea	rsp,[rsp-40]
..@c266:
		mov	rax,rcx
		test	rcx,rcx
		je	..@j371
		mov	rcx,rax
		mov	edx,1
		call	SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY
..@j371:
		nop
		lea	rsp,[rsp+40]
		ret
..@c265:

SECTION .text
SYSTEM$_$WINDOWS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$000001F0:
..@c267:
		push	rbp
..@c269:
..@c270:
		mov	rbp,rcx
..@c271:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c268:

SECTION .text
	GLOBAL SYSTEM$_$WINDOWS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD
SYSTEM$_$WINDOWS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD:
..@c272:
		push	rbp
..@c274:
..@c275:
		mov	rbp,rsp
..@c276:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
		mov	rcx,qword [rbp-16]
		call	fpc_ansistr_incr_ref
..@j380:
		nop
..@j376:
		mov	r8,qword [rbp-16]
		test	r8,r8
		jne	..@j381
		lea	r8,[FPC_EMPTYCHAR]
..@j381:
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		jne	..@j382
		lea	rdx,[FPC_EMPTYCHAR]
..@j382:
		xor	r9d,r9d
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		xor	ebx,ebx
..@j378:
		nop
..@j377:
		mov	rcx,rbp
		call	SYSTEM$_$WINDOWS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$000001F0
		mov	eax,ebx
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c273:

SECTION .text
	GLOBAL SYSTEM$_$TVGAIO_$__$$_$lower$TVGAIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TVGAIO_$__$$_$lower$TVGAIO$ANSISTRING$$BOOLEAN:
..@c277:
		push	rbp
..@c279:
..@c280:
		mov	rbp,rsp
..@c281:
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
..@c278:

SECTION .text
	GLOBAL SYSTEM$_$TVGAIO_$__$$_$greater$TVGAIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TVGAIO_$__$$_$greater$TVGAIO$ANSISTRING$$BOOLEAN:
..@c282:
		push	rbp
..@c284:
..@c285:
		mov	rbp,rsp
..@c286:
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
..@c283:

SECTION .text
SYSTEM$_$TSYSTEMIO_$_lower$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$000001F3:
..@c287:
		push	rbp
..@c289:
..@c290:
		mov	rbp,rcx
..@c291:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c288:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEMIO_$__$$_$lower$TSYSTEMIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TSYSTEMIO_$__$$_$lower$TSYSTEMIO$ANSISTRING$$BOOLEAN:
..@c292:
		push	rbp
..@c294:
..@c295:
		mov	rbp,rsp
..@c296:
		lea	rsp,[rsp-64]
		mov	qword [rbp-32],rdi
		mov	qword [rbp-24],rsi
		mov	rsi,rcx
		mov	qword [rbp-8],rdx
		lea	rdi,[rbp-12]
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
..@j399:
		nop
..@j395:
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		jne	..@j400
		lea	rdx,[FPC_EMPTYCHAR]
..@j400:
		mov	rcx,qword [TC_$SYSTEM_$$_DOS]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
..@j397:
		nop
..@j396:
		mov	rcx,rbp
		call	SYSTEM$_$TSYSTEMIO_$_lower$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$000001F3
		mov	al,dl
		mov	rdi,qword [rbp-32]
		mov	rsi,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c293:

SECTION .text
SYSTEM$_$TSYSTEMIO_$_greater$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$000001F4:
..@c297:
		push	rbp
..@c299:
..@c300:
		mov	rbp,rcx
..@c301:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c298:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$ANSISTRING$$BOOLEAN:
..@c302:
		push	rbp
..@c304:
..@c305:
		mov	rbp,rsp
..@c306:
		lea	rsp,[rsp-80]
		mov	qword [rbp-40],rbx
		mov	qword [rbp-32],rdi
		mov	qword [rbp-24],rsi
		mov	rsi,rcx
		mov	qword [rbp-8],rdx
		lea	rdi,[rbp-12]
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
..@j409:
		nop
..@j405:
		mov	bl,1
..@j407:
		nop
..@j406:
		mov	rcx,rbp
		call	SYSTEM$_$TSYSTEMIO_$_greater$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$000001F4
		mov	al,bl
		mov	rbx,qword [rbp-40]
		mov	rdi,qword [rbp-32]
		mov	rsi,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c303:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$LONGDWORD$$QWORD
SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$LONGDWORD$$QWORD:
..@c307:
		push	rdi
		push	rsi
		lea	rsp,[rsp-8]
..@c309:
		mov	rsi,rcx
		mov	rdi,rsp
		mov	eax,1
		lea	rsp,[rsp+8]
		pop	rsi
		pop	rdi
		ret
..@c308:

SECTION .text
	GLOBAL SYSTEM$_$TCPU_$__$$_CREATE$$TCPU
SYSTEM$_$TCPU_$__$$_CREATE$$TCPU:
..@c310:
		push	rbp
..@c312:
..@c313:
		mov	rbp,rsp
..@c314:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j415
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j415:
		cmp	qword [rbp-16],0
		je	..@j412
..@j423:
		nop
..@j422:
		mov	qword [rbp-24],-1
		mov	rcx,qword [rbp-16]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j420
		cmp	qword [rbp-8],0
		je	..@j420
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j420
..@j419:
		cmp	qword [rbp-8],0
		je	..@j429
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSTEM$_$TCPU_$__$$_DESTROY
..@j429:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j430:
		nop
..@j420:
..@j412:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c311:

SECTION .text
	GLOBAL SYSTEM$_$TCPU_$__$$_DESTROY
SYSTEM$_$TCPU_$__$$_DESTROY:
..@c315:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c317:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j434
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j434:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j436
		test	rsi,rsi
		je	..@j436
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j436:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c316:

SECTION .text
	GLOBAL SYSTEM$_$TCPU_$__$$_CLASSNAME$$ANSISTRING
SYSTEM$_$TCPU_$__$$_CLASSNAME$$ANSISTRING:
..@c318:
		lea	rsp,[rsp-40]
..@c320:
		mov	rax,rcx
		mov	rcx,rdx
		lea	rdx,[..@d37]
		call	fpc_ansistr_assign
		nop
		lea	rsp,[rsp+40]
		ret
..@c319:

SECTION .text
	GLOBAL SYSTEM$_$TCPU_$__$$_CLASSPARENT$$TOBJECT
SYSTEM$_$TCPU_$__$$_CLASSPARENT$$TOBJECT:
..@c321:
		lea	rsp,[rsp-40]
..@c323:
		call	SYSTEM$_$TCPU_$__$$_GETPARENT$$TOBJECT
		nop
		lea	rsp,[rsp+40]
		ret
..@c322:

SECTION .text
	GLOBAL SYSTEM$_$TCPU_$__$$_GETPARENT$$TOBJECT
SYSTEM$_$TCPU_$__$$_GETPARENT$$TOBJECT:
..@c324:
		mov	rax,qword [U_$SYSTEM_$$__static_tcpu_FCLASSPARENT]
		ret
..@c325:

SECTION .text
	GLOBAL SYSTEM_$$_INITMEMORY
SYSTEM_$$_INITMEMORY:
..@c326:
		lea	rsp,[rsp-40]
..@c328:
		mov	eax,1
		lea	rcx,[VMT_$SYSTEM_$$_TMEMORY]
		mov	rdx,rax
		call	SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY
		mov	qword [TC_$SYSTEM_$$_MEM],rax
		nop
		lea	rsp,[rsp+40]
		ret
..@c327:

SECTION .text
	GLOBAL SYSTEM_$$_DONEMEMORY
SYSTEM_$$_DONEMEMORY:
..@c329:
		lea	rsp,[rsp-40]
..@c331:
		mov	rax,qword [TC_$SYSTEM_$$_MEM]
		mov	rdx,qword [TC_$SYSTEM_$$_MEM]
		mov	rdx,qword [rdx]
		mov	rcx,rax
		call	[rdx+184]
		nop
		lea	rsp,[rsp+40]
		ret
..@c330:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY
SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY:
..@c332:
		push	rbp
..@c334:
..@c335:
		mov	rbp,rsp
..@c336:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j451
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j451:
		cmp	qword [rbp-16],0
		je	..@j448
..@j459:
		nop
..@j458:
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
		je	..@j456
		cmp	qword [rbp-8],0
		je	..@j456
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j456
..@j455:
		cmp	qword [rbp-8],0
		je	..@j465
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSTEM$_$TMEMORY_$__$$_DESTROY
..@j465:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j466:
		nop
..@j456:
..@j448:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c333:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_CREATE$LONGDWORD$$TMEMORY
SYSTEM$_$TMEMORY_$__$$_CREATE$LONGDWORD$$TMEMORY:
..@c337:
		push	rbp
..@c339:
..@c340:
		mov	rbp,rsp
..@c341:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rcx
		mov	qword [rbp-16],rdx
		mov	dword [rbp-8],r8d
		cmp	qword [rbp-16],1
		jne	..@j470
		mov	rax,qword [rbp-24]
		mov	rdx,qword [rbp-24]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-24],rax
..@j470:
		cmp	qword [rbp-24],0
		je	..@j467
..@j478:
		nop
..@j477:
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
		je	..@j475
		cmp	qword [rbp-16],0
		je	..@j475
		mov	rcx,qword [rbp-24]
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j475
..@j474:
		cmp	qword [rbp-16],0
		je	..@j484
		mov	rdx,qword [rbp-32]
		mov	rcx,qword [rbp-24]
		call	SYSTEM$_$TMEMORY_$__$$_DESTROY
..@j484:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j485:
		nop
..@j475:
..@j467:
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c338:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$LONGDWORD$$TMEMORY
SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$LONGDWORD$$TMEMORY:
..@c342:
		push	rbp
..@c344:
..@c345:
		mov	rbp,rsp
..@c346:
		lea	rsp,[rsp-80]
		mov	qword [rbp-32],rcx
		mov	qword [rbp-24],rdx
		mov	qword [rbp-8],r8
		mov	dword [rbp-16],r9d
		cmp	qword [rbp-24],1
		jne	..@j489
		mov	rax,qword [rbp-32]
		mov	rdx,qword [rbp-32]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-32],rax
..@j489:
		cmp	qword [rbp-32],0
		je	..@j486
..@j497:
		nop
..@j496:
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
		je	..@j494
		cmp	qword [rbp-24],0
		je	..@j494
		mov	rcx,qword [rbp-32]
		mov	rax,qword [rbp-32]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j494
..@j493:
		cmp	qword [rbp-24],0
		je	..@j503
		mov	rdx,qword [rbp-40]
		mov	rcx,qword [rbp-32]
		call	SYSTEM$_$TMEMORY_$__$$_DESTROY
..@j503:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j504:
		nop
..@j494:
..@j486:
		mov	rax,qword [rbp-32]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c343:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$$TMEMORY
SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$$TMEMORY:
..@c347:
		push	rbp
..@c349:
..@c350:
		mov	rbp,rsp
..@c351:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-8],r8
		cmp	qword [rbp-16],1
		jne	..@j508
		mov	rax,qword [rbp-24]
		mov	rdx,qword [rbp-24]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-24],rax
..@j508:
		cmp	qword [rbp-24],0
		je	..@j505
..@j516:
		nop
..@j515:
		mov	qword [rbp-32],-1
		mov	rcx,qword [rbp-24]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		cmp	qword [rbp-8],0
		jne	..@j519
		mov	edx,8
		mov	dword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE],edx
		mov	r9d,4
		mov	r8d,12288
		xor	ecx,ecx
		call	_$dll$kernel32$VirtualAlloc
		mov	qword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY],rax
		test	rax,rax
		jne	..@j522
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld38]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		jmp	..@j517
		jmp	..@j522
..@j519:
		mov	rax,qword [rbp-8]
		mov	qword [U_$SYSTEM_$$__static_tmemory_FCLASSPARENT],rax
		mov	rcx,qword [rbp-24]
		mov	edx,8
		call	SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER
		mov	qword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY],rax
..@j522:
..@j517:
		mov	qword [rbp-32],1
		cmp	qword [rbp-24],0
		je	..@j513
		cmp	qword [rbp-16],0
		je	..@j513
		mov	rcx,qword [rbp-24]
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j513
..@j512:
		cmp	qword [rbp-16],0
		je	..@j527
		mov	rdx,qword [rbp-32]
		mov	rcx,qword [rbp-24]
		call	SYSTEM$_$TMEMORY_$__$$_DESTROY
..@j527:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j528:
		nop
..@j513:
..@j505:
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c348:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_DESTROY
SYSTEM$_$TMEMORY_$__$$_DESTROY:
..@c352:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c354:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j532
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j532:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j534
		test	rsi,rsi
		je	..@j534
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j534:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c353:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_CLASSNAME$$ANSISTRING
SYSTEM$_$TMEMORY_$__$$_CLASSNAME$$ANSISTRING:
..@c355:
		lea	rsp,[rsp-40]
..@c357:
		mov	rax,rcx
		mov	rcx,rdx
		lea	rdx,[..@d39]
		call	fpc_ansistr_assign
		nop
		lea	rsp,[rsp+40]
		ret
..@c356:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER
SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER:
..@c358:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c360:
		mov	ebx,edx
		xor	esi,esi
		cmp	ebx,dword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE]
		je	..@j538
		cmp	dword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE],0
		jne	..@j544
		mov	edx,ebx
		mov	r9d,4
		mov	r8d,12288
		xor	ecx,ecx
		call	_$dll$kernel32$VirtualAlloc
		mov	qword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY],rax
		test	rax,rax
		jne	..@j546
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld38]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		jmp	..@j538
..@j546:
		mov	dword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE],ebx
..@j544:
		mov	rsi,qword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY]
..@j538:
		mov	rax,rsi
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c359:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_ALLOC
SYSTEM$_$TMEMORY_$__$$_ALLOC:
..@c361:
		lea	rsp,[rsp-40]
..@c363:
		mov	edx,512
		call	SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER
		nop
		lea	rsp,[rsp+40]
		ret
..@c362:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_FREE
SYSTEM$_$TMEMORY_$__$$_FREE:
..@c364:
		lea	rsp,[rsp-40]
..@c366:
		mov	rax,rcx
		cmp	qword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY],0
		je	..@j552
		mov	rcx,qword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY]
		mov	r8d,32768
		xor	edx,edx
		call	_$dll$kernel32$VirtualAlloc
..@j552:
		cmp	qword [U_$SYSTEM_$$__static_tmemory_FCLASSPARENT],0
		je	..@j554
		mov	rcx,qword [U_$SYSTEM_$$__static_tmemory_FCLASSPARENT]
		mov	rax,qword [U_$SYSTEM_$$__static_tmemory_FCLASSPARENT]
		mov	rax,qword [rax]
		call	[rax+160]
..@j554:
		nop
		lea	rsp,[rsp+40]
		ret
..@c365:

SECTION .text
	GLOBAL SYSTEM_$$_INITSYSTEM
SYSTEM_$$_INITSYSTEM:
..@c367:
		lea	rsp,[rsp-40]
..@c369:
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
		lea	rdx,[..@d40]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING
		nop
		lea	rsp,[rsp+40]
		ret
..@c368:

SECTION .text
	GLOBAL SYSTEM_$$_DONESYSTEM
SYSTEM_$$_DONESYSTEM:
..@c370:
		ret
..@c371:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEM_$__$$_CREATE$$TSYSTEM
SYSTEM$_$TSYSTEM_$__$$_CREATE$$TSYSTEM:
..@c372:
		push	rbp
..@c374:
..@c375:
		mov	rbp,rsp
..@c376:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j562
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j562:
		cmp	qword [rbp-16],0
		je	..@j559
..@j570:
		nop
..@j569:
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
		je	..@j567
		cmp	qword [rbp-8],0
		je	..@j567
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j567
..@j566:
		cmp	qword [rbp-8],0
		je	..@j576
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSTEM$_$TSYSTEM_$__$$_DESTROY
..@j576:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j577:
		nop
..@j567:
..@j559:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c373:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEM_$__$$_DESTROY
SYSTEM$_$TSYSTEM_$__$$_DESTROY:
..@c377:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c379:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j581
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j581:
		cmp	qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS],0
		je	..@j583
		mov	rcx,qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS]
		mov	rax,qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS]
		mov	rax,qword [rax]
		call	[rax+184]
		mov	qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS],0
..@j583:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j585
		test	rsi,rsi
		je	..@j585
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j585:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c378:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEM_$__$$_GETMEMORY$$TMEMORY
SYSTEM$_$TSYSTEM_$__$$_GETMEMORY$$TMEMORY:
..@c380:
		lea	rsp,[rsp-40]
..@c382:
		cmp	qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS],0
		jne	..@j590
		mov	edx,1
		lea	rcx,[VMT_$SYSTEM_$$_TMEMORY]
		call	SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY
		mov	qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS],rax
..@j590:
		mov	rax,qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS]
		nop
		lea	rsp,[rsp+40]
		ret
..@c381:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEM_$__$$_CLASSNAME$$ANSISTRING
SYSTEM$_$TSYSTEM_$__$$_CLASSNAME$$ANSISTRING:
..@c383:
		lea	rsp,[rsp-40]
..@c385:
		mov	rax,rcx
		mov	rcx,rdx
		lea	rdx,[..@d41]
		call	fpc_ansistr_assign
		nop
		lea	rsp,[rsp+40]
		ret
..@c384:
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
VMT_$SYSTEM_$$_TOBJECT	DQ	8,-8,0,..@d42,0,0,0,RTTI_$SYSTEM_$$_TOBJECT,0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING,SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_FREE,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TLIST
VMT_$SYSTEM_$$_TLIST	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d43,0,0,0,RTTI_$SYSTEM_$$_TLIST,0
	DQ	0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_FREE,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TDOSCMD
VMT_$SYSTEM_$$_TDOSCMD	DQ	40,-40,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d44,0,0,0,RTTI_$SYSTEM_$$_TDOSCMD
	DQ	INIT_$SYSTEM_$$_TDOSCMD,0,0,0,SYSTEM$_$TDOSCMD_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_FREE,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD
	DQ	SYSTEM$_$TDOSCMD_$__$$_FREE,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_WINDOWS_CLASS
VMT_$SYSTEM_$$_WINDOWS_CLASS	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d45,0,0,0,RTTI_$SYSTEM_$$_WINDOWS_CLASS
	DQ	0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_FREE,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD
	DQ	SYSTEM$_$WINDOWS_CLASS_$__$$_FREE,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TCPU
VMT_$SYSTEM_$$_TCPU	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d46,0,0,0,RTTI_$SYSTEM_$$_TCPU,0,0
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
VMT_$SYSTEM_$$_TMEMORY	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d47,0,0,0,RTTI_$SYSTEM_$$_TMEMORY
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
VMT_$SYSTEM_$$_TSYSTEM	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d48,0,0,0,RTTI_$SYSTEM_$$_TSYSTEM
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
..@d42:
	DB	7
		DB	"TObject"

SECTION .data
	ALIGN 8,DB 0
..@d43:
	DB	5
		DB	"TList"

SECTION .data
	ALIGN 8,DB 0
..@d44:
	DB	7
		DB	"TDosCmd"

SECTION .data
	ALIGN 8,DB 0
..@d45:
	DB	13
		DB	"Windows_Class"

SECTION .data
	ALIGN 8,DB 0
..@d46:
	DB	4
		DB	"TCPU"

SECTION .data
	ALIGN 8,DB 0
..@d47:
	DB	7
		DB	"TMemory"

SECTION .data
	ALIGN 8,DB 0
..@d48:
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
		DB	"Error: creating private heap.",0

SECTION .rodata
_$SYSTEM$_Ld6:
		DB	"Error: no more memory available.",0

SECTION .rodata
_$SYSTEM$_Ld7:
		DB	"Error: fpc_AnsiStr_Concat memory allocation fail.",0

SECTION .rodata
_$SYSTEM$_Ld8:
		DB	"dddddddd",0

SECTION .rodata
_$SYSTEM$_Ld9:
		DB	"ddddddd",0

SECTION .rodata
_$SYSTEM$_Ld10:
		DB	"Information",0

SECTION .rodata
_$SYSTEM$_Ld11:
		DB	"Warning",0

SECTION .rodata
_$SYSTEM$_Ld12:
		DB	"File can not be lock.",0

SECTION .rodata
_$SYSTEM$_Ld13:
		DB	"pacher",0

SECTION .rodata
_$SYSTEM$_Ld14:
		DB	"File: ",34,0

SECTION .rodata
_$SYSTEM$_Ld15:
		DB	34," already exists.\n",0

SECTION .rodata
_$SYSTEM$_Ld16:
		DB	"Would you like override it ?",0

SECTION .rodata
_$SYSTEM$_Ld17:
		DB	"file could not be created !",0

SECTION .rodata
_$SYSTEM$_Ld18:
		DB	"file not delete",0

SECTION .rodata
_$SYSTEM$_Ld19:
		DB	34," could not be open.",0

SECTION .rodata
_$SYSTEM$_Ld20:
		DB	"SetFilePointer() failed.",0

SECTION .rodata
..@d21$strlab:
	DW	0,1
	DD	0
	DQ	-1,7
..@d21:
		DB	"TObject",0

SECTION .rodata
_$SYSTEM$_Ld22:
		DB	"Error: instance is not allocated.",0

SECTION .rodata
_$SYSTEM$_Ld23:
		DB	"internal Error.",0

SECTION .rodata
_$SYSTEM$_Ld24:
		DB	"Error: io handles.",0

SECTION .rodata
..@d25$strlab:
	DW	0,1
	DD	0
	DQ	-1,2
..@d25:
		DB	13,10,0

SECTION .rodata
..@d26$strlab:
	DW	0,1
	DD	0
	DQ	-1,5
..@d26:
		DB	"xxxxx",0

SECTION .rodata
_$SYSTEM$_Ld27:
		DB	"Message: %s",0

SECTION .rodata
_$SYSTEM$_Ld28:
		DB	"Title  : %s",0

SECTION .rodata
_$SYSTEM$_Ld29:
		DB	"%s",0

SECTION .rodata
_$SYSTEM$_Ld30:
		DB	"%s",13,10,0

SECTION .rodata
..@d31$strlab:
	DW	0,1
	DD	0
	DQ	-1,14
..@d31:
		DB	"PChar(AString)",0

SECTION .rodata
_$SYSTEM$_Ld32:
		DB	"Error: could not read data.",0

SECTION .rodata
_$SYSTEM$_Ld33:
		DB	"chars read: %d",13,10,0

SECTION .rodata
_$SYSTEM$_Ld34:
		DB	"info",0

SECTION .rodata
..@d35$strlab:
	DW	0,1
	DD	0
	DQ	-1,9
..@d35:
		DB	"uhuhuhuhu",0

SECTION .rodata
_$SYSTEM$_Ld36:
		DB	"Error: invalide handle.",0

SECTION .rodata
..@d37$strlab:
	DW	0,1
	DD	0
	DQ	-1,4
..@d37:
		DB	"TCPU",0

SECTION .rodata
_$SYSTEM$_Ld38:
		DB	"Error: could not allocate memory.",0

SECTION .rodata
..@d39$strlab:
	DW	0,1
	DD	0
	DQ	-1,7
..@d39:
		DB	"TMemory",0

SECTION .rodata
..@d40$strlab:
	DW	0,1
	DD	0
	DQ	-1,8
..@d40:
		DB	"start...",0

SECTION .rodata
..@d41$strlab:
	DW	0,1
	DD	0
	DQ	-1,7
..@d41:
		DB	"TSystem",0
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
..@c386:
	DD	..@c388-..@c387
..@c387:
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
..@c388:
	DD	..@c390-..@c389
..@c389:
	DQ	..@c1,..@c2-..@c1
	DB	4
	DD	..@c3-..@c1
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c390:
	DD	..@c392-..@c391
..@c391:
	DQ	..@c4,..@c5-..@c4
	ALIGN 4,DB 0
..@c392:
	DD	..@c394-..@c393
..@c393:
	DQ	..@c6,..@c7-..@c6
	ALIGN 4,DB 0
..@c394:
	DD	..@c396-..@c395
..@c395:
	DQ	..@c8,..@c9-..@c8
	ALIGN 4,DB 0
..@c396:
	DD	..@c398-..@c397
..@c397:
	DQ	..@c10,..@c11-..@c10
	ALIGN 4,DB 0
..@c398:
	DD	..@c400-..@c399
..@c399:
	DQ	..@c12,..@c13-..@c12
	ALIGN 4,DB 0
..@c400:
	DD	..@c402-..@c401
..@c401:
	DQ	..@c14,..@c15-..@c14
	DB	4
	DD	..@c16-..@c14
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c402:
	DD	..@c404-..@c403
..@c403:
	DQ	..@c17,..@c18-..@c17
	ALIGN 4,DB 0
..@c404:
	DD	..@c406-..@c405
..@c405:
	DQ	..@c19,..@c20-..@c19
	ALIGN 4,DB 0
..@c406:
	DD	..@c408-..@c407
..@c407:
	DQ	..@c21,..@c22-..@c21
	DB	4
	DD	..@c23-..@c21
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c408:
	DD	..@c410-..@c409
..@c409:
	DQ	..@c24,..@c25-..@c24
	ALIGN 4,DB 0
..@c410:
	DD	..@c412-..@c411
..@c411:
	DQ	..@c26,..@c27-..@c26
	ALIGN 4,DB 0
..@c412:
	DD	..@c414-..@c413
..@c413:
	DQ	..@c28,..@c29-..@c28
	ALIGN 4,DB 0
..@c414:
	DD	..@c416-..@c415
..@c415:
	DQ	..@c30,..@c31-..@c30
	ALIGN 4,DB 0
..@c416:
	DD	..@c418-..@c417
..@c417:
	DQ	..@c32,..@c33-..@c32
	DB	4
	DD	..@c34-..@c32
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c418:
	DD	..@c420-..@c419
..@c419:
	DQ	..@c35,..@c36-..@c35
	ALIGN 4,DB 0
..@c420:
	DD	..@c422-..@c421
..@c421:
	DQ	..@c37,..@c38-..@c37
	DB	4
	DD	..@c39-..@c37
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c422:
	DD	..@c424-..@c423
..@c423:
	DQ	..@c40,..@c41-..@c40
	DB	4
	DD	..@c42-..@c40
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c424:
	DD	..@c426-..@c425
..@c425:
	DQ	..@c43,..@c44-..@c43
	ALIGN 4,DB 0
..@c426:
	DD	..@c428-..@c427
..@c427:
	DQ	..@c45,..@c46-..@c45
	DB	4
	DD	..@c47-..@c45
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c428:
	DD	..@c430-..@c429
..@c429:
	DQ	..@c48,..@c49-..@c48
	DB	4
	DD	..@c50-..@c48
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c430:
	DD	..@c432-..@c431
..@c431:
	DQ	..@c51,..@c52-..@c51
	ALIGN 4,DB 0
..@c432:
	DD	..@c434-..@c433
..@c433:
	DQ	..@c53,..@c54-..@c53
	ALIGN 4,DB 0
..@c434:
	DD	..@c436-..@c435
..@c435:
	DQ	..@c55,..@c56-..@c55
	ALIGN 4,DB 0
..@c436:
	DD	..@c438-..@c437
..@c437:
	DQ	..@c57,..@c58-..@c57
	DB	4
	DD	..@c59-..@c57
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c438:
	DD	..@c440-..@c439
..@c439:
	DQ	..@c60,..@c61-..@c60
	ALIGN 4,DB 0
..@c440:
	DD	..@c442-..@c441
..@c441:
	DQ	..@c62,..@c63-..@c62
	ALIGN 4,DB 0
..@c442:
	DD	..@c444-..@c443
..@c443:
	DQ	..@c64,..@c65-..@c64
	ALIGN 4,DB 0
..@c444:
	DD	..@c446-..@c445
..@c445:
	DQ	..@c66,..@c67-..@c66
	DB	4
	DD	..@c68-..@c66
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c446:
	DD	..@c448-..@c447
..@c447:
	DQ	..@c69,..@c70-..@c69
	ALIGN 4,DB 0
..@c448:
	DD	..@c450-..@c449
..@c449:
	DQ	..@c71,..@c72-..@c71
	ALIGN 4,DB 0
..@c450:
	DD	..@c452-..@c451
..@c451:
	DQ	..@c73,..@c74-..@c73
	ALIGN 4,DB 0
..@c452:
	DD	..@c454-..@c453
..@c453:
	DQ	..@c75,..@c76-..@c75
	ALIGN 4,DB 0
..@c454:
	DD	..@c456-..@c455
..@c455:
	DQ	..@c77,..@c78-..@c77
	DB	4
	DD	..@c79-..@c77
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c456:
	DD	..@c458-..@c457
..@c457:
	DQ	..@c80,..@c81-..@c80
	DB	4
	DD	..@c82-..@c80
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c458:
	DD	..@c460-..@c459
..@c459:
	DQ	..@c83,..@c84-..@c83
	DB	4
	DD	..@c85-..@c83
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c460:
	DD	..@c462-..@c461
..@c461:
	DQ	..@c86,..@c87-..@c86
	DB	4
	DD	..@c88-..@c86
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c462:
	DD	..@c464-..@c463
..@c463:
	DQ	..@c89,..@c90-..@c89
	DB	4
	DD	..@c91-..@c89
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c464:
	DD	..@c466-..@c465
..@c465:
	DQ	..@c92,..@c93-..@c92
	ALIGN 4,DB 0
..@c466:
	DD	..@c468-..@c467
..@c467:
	DQ	..@c94,..@c95-..@c94
	DB	4
	DD	..@c96-..@c94
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c468:
	DD	..@c470-..@c469
..@c469:
	DQ	..@c97,..@c98-..@c97
	DB	4
	DD	..@c99-..@c97
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c470:
	DD	..@c472-..@c471
..@c471:
	DQ	..@c100,..@c101-..@c100
	DB	4
	DD	..@c102-..@c100
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c472:
	DD	..@c474-..@c473
..@c473:
	DQ	..@c103,..@c104-..@c103
	DB	4
	DD	..@c105-..@c103
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c474:
	DD	..@c476-..@c475
..@c475:
	DQ	..@c106,..@c107-..@c106
	DB	4
	DD	..@c108-..@c106
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c476:
	DD	..@c478-..@c477
..@c477:
	DQ	..@c109,..@c110-..@c109
	DB	4
	DD	..@c111-..@c109
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c478:
	DD	..@c480-..@c479
..@c479:
	DQ	..@c112,..@c113-..@c112
	DB	4
	DD	..@c114-..@c112
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c480:
	DD	..@c482-..@c481
..@c481:
	DQ	..@c115,..@c116-..@c115
	DB	4
	DD	..@c117-..@c115
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c482:
	DD	..@c484-..@c483
..@c483:
	DQ	..@c118,..@c119-..@c118
	DB	4
	DD	..@c120-..@c118
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c484:
	DD	..@c486-..@c485
..@c485:
	DQ	..@c121,..@c122-..@c121
	DB	4
	DD	..@c123-..@c121
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c486:
	DD	..@c488-..@c487
..@c487:
	DQ	..@c124,..@c125-..@c124
	DB	4
	DD	..@c126-..@c124
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c488:
	DD	..@c490-..@c489
..@c489:
	DQ	..@c127,..@c128-..@c127
	DB	4
	DD	..@c129-..@c127
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c490:
	DD	..@c492-..@c491
..@c491:
	DQ	..@c130,..@c131-..@c130
	DB	4
	DD	..@c132-..@c130
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c133-..@c132
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c134-..@c133
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c492:
	DD	..@c494-..@c493
..@c493:
	DQ	..@c135,..@c136-..@c135
	DB	4
	DD	..@c137-..@c135
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c494:
	DD	..@c496-..@c495
..@c495:
	DQ	..@c138,..@c139-..@c138
	ALIGN 4,DB 0
..@c496:
	DD	..@c498-..@c497
..@c497:
	DQ	..@c140,..@c141-..@c140
	ALIGN 4,DB 0
..@c498:
	DD	..@c500-..@c499
..@c499:
	DQ	..@c142,..@c143-..@c142
	DB	4
	DD	..@c144-..@c142
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c500:
	DD	..@c502-..@c501
..@c501:
	DQ	..@c145,..@c146-..@c145
	DB	4
	DD	..@c147-..@c145
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c502:
	DD	..@c504-..@c503
..@c503:
	DQ	..@c148,..@c149-..@c148
	ALIGN 4,DB 0
..@c504:
	DD	..@c506-..@c505
..@c505:
	DQ	..@c150,..@c151-..@c150
	DB	4
	DD	..@c152-..@c150
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c506:
	DD	..@c508-..@c507
..@c507:
	DQ	..@c153,..@c154-..@c153
	DB	4
	DD	..@c155-..@c153
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c508:
	DD	..@c510-..@c509
..@c509:
	DQ	..@c156,..@c157-..@c156
	ALIGN 4,DB 0
..@c510:
	DD	..@c512-..@c511
..@c511:
	DQ	..@c158,..@c159-..@c158
	DB	4
	DD	..@c160-..@c158
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c512:
	DD	..@c514-..@c513
..@c513:
	DQ	..@c161,..@c162-..@c161
	ALIGN 4,DB 0
..@c514:
	DD	..@c516-..@c515
..@c515:
	DQ	..@c163,..@c164-..@c163
	ALIGN 4,DB 0
..@c516:
	DD	..@c518-..@c517
..@c517:
	DQ	..@c165,..@c166-..@c165
	ALIGN 4,DB 0
..@c518:
	DD	..@c520-..@c519
..@c519:
	DQ	..@c167,..@c168-..@c167
	DB	4
	DD	..@c169-..@c167
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c170-..@c169
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c171-..@c170
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c520:
	DD	..@c522-..@c521
..@c521:
	DQ	..@c172,..@c173-..@c172
	DB	4
	DD	..@c174-..@c172
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c522:
	DD	..@c524-..@c523
..@c523:
	DQ	..@c175,..@c176-..@c175
	ALIGN 4,DB 0
..@c524:
	DD	..@c526-..@c525
..@c525:
	DQ	..@c177,..@c178-..@c177
	DB	4
	DD	..@c179-..@c177
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c180-..@c179
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c181-..@c180
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c526:
	DD	..@c528-..@c527
..@c527:
	DQ	..@c182,..@c183-..@c182
	DB	4
	DD	..@c184-..@c182
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c528:
	DD	..@c530-..@c529
..@c529:
	DQ	..@c185,..@c186-..@c185
	DB	4
	DD	..@c187-..@c185
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c530:
	DD	..@c532-..@c531
..@c531:
	DQ	..@c188,..@c189-..@c188
	ALIGN 4,DB 0
..@c532:
	DD	..@c534-..@c533
..@c533:
	DQ	..@c190,..@c191-..@c190
	DB	4
	DD	..@c192-..@c190
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c534:
	DD	..@c536-..@c535
..@c535:
	DQ	..@c193,..@c194-..@c193
	DB	4
	DD	..@c195-..@c193
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c536:
	DD	..@c538-..@c537
..@c537:
	DQ	..@c196,..@c197-..@c196
	DB	4
	DD	..@c198-..@c196
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c199-..@c198
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c200-..@c199
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c538:
	DD	..@c540-..@c539
..@c539:
	DQ	..@c201,..@c202-..@c201
	DB	4
	DD	..@c203-..@c201
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c204-..@c203
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c205-..@c204
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c540:
	DD	..@c542-..@c541
..@c541:
	DQ	..@c206,..@c207-..@c206
	DB	4
	DD	..@c208-..@c206
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c542:
	DD	..@c544-..@c543
..@c543:
	DQ	..@c209,..@c210-..@c209
	DB	4
	DD	..@c211-..@c209
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c544:
	DD	..@c546-..@c545
..@c545:
	DQ	..@c212,..@c213-..@c212
	DB	4
	DD	..@c214-..@c212
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c546:
	DD	..@c548-..@c547
..@c547:
	DQ	..@c215,..@c216-..@c215
	DB	4
	DD	..@c217-..@c215
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c548:
	DD	..@c550-..@c549
..@c549:
	DQ	..@c218,..@c219-..@c218
	DB	4
	DD	..@c220-..@c218
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c550:
	DD	..@c552-..@c551
..@c551:
	DQ	..@c221,..@c222-..@c221
	ALIGN 4,DB 0
..@c552:
	DD	..@c554-..@c553
..@c553:
	DQ	..@c223,..@c224-..@c223
	DB	4
	DD	..@c225-..@c223
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c554:
	DD	..@c556-..@c555
..@c555:
	DQ	..@c226,..@c227-..@c226
	DB	4
	DD	..@c228-..@c226
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c556:
	DD	..@c558-..@c557
..@c557:
	DQ	..@c229,..@c230-..@c229
	DB	4
	DD	..@c231-..@c229
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c558:
	DD	..@c560-..@c559
..@c559:
	DQ	..@c232,..@c233-..@c232
	DB	4
	DD	..@c234-..@c232
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c560:
	DD	..@c562-..@c561
..@c561:
	DQ	..@c235,..@c236-..@c235
	DB	4
	DD	..@c237-..@c235
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c562:
	DD	..@c564-..@c563
..@c563:
	DQ	..@c238,..@c239-..@c238
	DB	4
	DD	..@c240-..@c238
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c564:
	DD	..@c566-..@c565
..@c565:
	DQ	..@c241,..@c242-..@c241
	DB	4
	DD	..@c243-..@c241
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c566:
	DD	..@c568-..@c567
..@c567:
	DQ	..@c244,..@c245-..@c244
	DB	4
	DD	..@c246-..@c244
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c568:
	DD	..@c570-..@c569
..@c569:
	DQ	..@c247,..@c248-..@c247
	DB	4
	DD	..@c249-..@c247
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c570:
	DD	..@c572-..@c571
..@c571:
	DQ	..@c250,..@c251-..@c250
	DB	4
	DD	..@c252-..@c250
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c572:
	DD	..@c574-..@c573
..@c573:
	DQ	..@c253,..@c254-..@c253
	DB	4
	DD	..@c255-..@c253
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c574:
	DD	..@c576-..@c575
..@c575:
	DQ	..@c256,..@c257-..@c256
	DB	4
	DD	..@c258-..@c256
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c259-..@c258
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c260-..@c259
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c576:
	DD	..@c578-..@c577
..@c577:
	DQ	..@c261,..@c262-..@c261
	DB	4
	DD	..@c263-..@c261
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c578:
	DD	..@c580-..@c579
..@c579:
	DQ	..@c264,..@c265-..@c264
	DB	4
	DD	..@c266-..@c264
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c580:
	DD	..@c582-..@c581
..@c581:
	DQ	..@c267,..@c268-..@c267
	DB	4
	DD	..@c269-..@c267
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c270-..@c269
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c271-..@c270
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c582:
	DD	..@c584-..@c583
..@c583:
	DQ	..@c272,..@c273-..@c272
	DB	4
	DD	..@c274-..@c272
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c275-..@c274
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c276-..@c275
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c584:
	DD	..@c586-..@c585
..@c585:
	DQ	..@c277,..@c278-..@c277
	DB	4
	DD	..@c279-..@c277
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c280-..@c279
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c281-..@c280
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c586:
	DD	..@c588-..@c587
..@c587:
	DQ	..@c282,..@c283-..@c282
	DB	4
	DD	..@c284-..@c282
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c285-..@c284
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c286-..@c285
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c588:
	DD	..@c590-..@c589
..@c589:
	DQ	..@c287,..@c288-..@c287
	DB	4
	DD	..@c289-..@c287
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c290-..@c289
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c291-..@c290
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c590:
	DD	..@c592-..@c591
..@c591:
	DQ	..@c292,..@c293-..@c292
	DB	4
	DD	..@c294-..@c292
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c295-..@c294
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c296-..@c295
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c592:
	DD	..@c594-..@c593
..@c593:
	DQ	..@c297,..@c298-..@c297
	DB	4
	DD	..@c299-..@c297
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c300-..@c299
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c301-..@c300
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c594:
	DD	..@c596-..@c595
..@c595:
	DQ	..@c302,..@c303-..@c302
	DB	4
	DD	..@c304-..@c302
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c305-..@c304
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c306-..@c305
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c596:
	DD	..@c598-..@c597
..@c597:
	DQ	..@c307,..@c308-..@c307
	DB	4
	DD	..@c309-..@c307
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c598:
	DD	..@c600-..@c599
..@c599:
	DQ	..@c310,..@c311-..@c310
	DB	4
	DD	..@c312-..@c310
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c313-..@c312
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c314-..@c313
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c600:
	DD	..@c602-..@c601
..@c601:
	DQ	..@c315,..@c316-..@c315
	DB	4
	DD	..@c317-..@c315
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c602:
	DD	..@c604-..@c603
..@c603:
	DQ	..@c318,..@c319-..@c318
	DB	4
	DD	..@c320-..@c318
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c604:
	DD	..@c606-..@c605
..@c605:
	DQ	..@c321,..@c322-..@c321
	DB	4
	DD	..@c323-..@c321
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c606:
	DD	..@c608-..@c607
..@c607:
	DQ	..@c324,..@c325-..@c324
	ALIGN 4,DB 0
..@c608:
	DD	..@c610-..@c609
..@c609:
	DQ	..@c326,..@c327-..@c326
	DB	4
	DD	..@c328-..@c326
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c610:
	DD	..@c612-..@c611
..@c611:
	DQ	..@c329,..@c330-..@c329
	DB	4
	DD	..@c331-..@c329
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c612:
	DD	..@c614-..@c613
..@c613:
	DQ	..@c332,..@c333-..@c332
	DB	4
	DD	..@c334-..@c332
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c335-..@c334
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c336-..@c335
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c614:
	DD	..@c616-..@c615
..@c615:
	DQ	..@c337,..@c338-..@c337
	DB	4
	DD	..@c339-..@c337
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c340-..@c339
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c341-..@c340
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c616:
	DD	..@c618-..@c617
..@c617:
	DQ	..@c342,..@c343-..@c342
	DB	4
	DD	..@c344-..@c342
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c345-..@c344
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c346-..@c345
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c618:
	DD	..@c620-..@c619
..@c619:
	DQ	..@c347,..@c348-..@c347
	DB	4
	DD	..@c349-..@c347
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c350-..@c349
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c351-..@c350
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c620:
	DD	..@c622-..@c621
..@c621:
	DQ	..@c352,..@c353-..@c352
	DB	4
	DD	..@c354-..@c352
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c622:
	DD	..@c624-..@c623
..@c623:
	DQ	..@c355,..@c356-..@c355
	DB	4
	DD	..@c357-..@c355
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c624:
	DD	..@c626-..@c625
..@c625:
	DQ	..@c358,..@c359-..@c358
	DB	4
	DD	..@c360-..@c358
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c626:
	DD	..@c628-..@c627
..@c627:
	DQ	..@c361,..@c362-..@c361
	DB	4
	DD	..@c363-..@c361
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c628:
	DD	..@c630-..@c629
..@c629:
	DQ	..@c364,..@c365-..@c364
	DB	4
	DD	..@c366-..@c364
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c630:
	DD	..@c632-..@c631
..@c631:
	DQ	..@c367,..@c368-..@c367
	DB	4
	DD	..@c369-..@c367
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c632:
	DD	..@c634-..@c633
..@c633:
	DQ	..@c370,..@c371-..@c370
	ALIGN 4,DB 0
..@c634:
	DD	..@c636-..@c635
..@c635:
	DQ	..@c372,..@c373-..@c372
	DB	4
	DD	..@c374-..@c372
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c375-..@c374
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c376-..@c375
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c636:
	DD	..@c638-..@c637
..@c637:
	DQ	..@c377,..@c378-..@c377
	DB	4
	DD	..@c379-..@c377
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c638:
	DD	..@c640-..@c639
..@c639:
	DQ	..@c380,..@c381-..@c380
	DB	4
	DD	..@c382-..@c380
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c640:
	DD	..@c642-..@c641
..@c641:
	DQ	..@c383,..@c384-..@c383
	DB	4
	DD	..@c385-..@c383
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c642:
; End asmlist al_dwarf_frame

