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
EXTERN	_$dll$ucrtbase$strcpy
EXTERN	_$dll$kernel32$lstrlenA
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
EXTERN	_$dll$msvcrt$printf
EXTERN	_$dll$msvcrt$scanf
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
SYSTEM$_$fpc_pchar_to_ansistr$PANSICHAR$$ANSISTRING_$$_fin$000001EC:
..@c40:
		push	rbp
..@c42:
..@c43:
		mov	rbp,rcx
..@c44:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c41:

SECTION .text
	GLOBAL fpc_pchar_to_ansistr
fpc_pchar_to_ansistr:
..@c45:
		push	rbp
..@c47:
..@c48:
		mov	rbp,rsp
..@c49:
		lea	rsp,[rsp-64]
		mov	qword [rbp-32],rbx
		mov	qword [rbp-24],rsi
		mov	rbx,rcx
		mov	rsi,rdx
		mov	qword [rbp-16],0
..@j60:
		nop
..@j56:
		lea	rax,[_$SYSTEM$_Ld6]
		mov	qword [rbp-8],rax
		xor	eax,eax
		mov	edx,2
		mov	r9d,4
		mov	r8d,12288
		xor	ecx,ecx
		call	_$dll$kernel32$VirtualAlloc
		mov	qword [rbp-8],rax
		mov	rdx,rsi
		mov	rcx,qword [rbp-8]
		call	_$dll$ucrtbase$strcpy
		lea	rdx,[rbp-8]
		lea	rcx,[rbp-16]
		call	fpc_ansistr_assign
		mov	rcx,rbx
		mov	rdx,qword [rbp-16]
		call	fpc_ansistr_assign
..@j58:
		nop
..@j57:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_pchar_to_ansistr$PANSICHAR$$ANSISTRING_$$_fin$000001EC
		mov	rbx,qword [rbp-32]
		mov	rsi,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c46:

SECTION .text
	GLOBAL fpc_ansistr_assign
fpc_ansistr_assign:
	GLOBAL FPC_ANSISTR_ASSIGN
FPC_ANSISTR_ASSIGN:
..@c50:
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c52:
		mov	rbx,rcx
		mov	rsi,rdx
		mov	rcx,rsi
		call	_$dll$kernel32$lstrlenA
		mov	edi,eax
		mov	rcx,rbx
		mov	edx,edi
		call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
		cmp	qword [rbx],0
		je	..@j64
		mov	rcx,qword [rbx]
		mov	edx,edi
		xor	r8d,r8d
		call	SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR
		mov	rdx,qword [rbx]
		mov	rcx,rsi
		mov	r8d,edi
		call	SYSTEM_$$_MOVE$formal$formal$LONGDWORD
		jmp	..@j65
..@j64:
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld7]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
..@j65:
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c51:

SECTION .text
	GLOBAL fpc_ansistr_concat
fpc_ansistr_concat:
..@c53:
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c55:
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
		je	..@j69
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
		jmp	..@j70
..@j69:
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld8]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
..@j70:
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c54:

SECTION .text
	GLOBAL fpc_ansistr_compare_equal
fpc_ansistr_compare_equal:
	GLOBAL FPC_ANSISTR_COMPARE_EQUAL
FPC_ANSISTR_COMPARE_EQUAL:
..@c56:
		lea	rsp,[rsp-40]
..@c58:
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
..@c57:

SECTION .text
	GLOBAL SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT
SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT:
..@c59:
		xor	eax,eax
		ret
..@c60:

SECTION .text
	GLOBAL fpc_get_input
fpc_get_input:
..@c61:
		xor	eax,eax
		ret
..@c62:

SECTION .text
	GLOBAL fpc_readln_end
fpc_readln_end:
	GLOBAL FPC_READLN_END
FPC_READLN_END:
..@c63:
		mov	rax,rcx
		ret
..@c64:

SECTION .text
	GLOBAL fpc_do_exit
fpc_do_exit:
	GLOBAL FPC_DO_EXIT
FPC_DO_EXIT:
..@c65:
		lea	rsp,[rsp-40]
..@c67:
		xor	ecx,ecx
		call	_$dll$kernel32$ExitProcess
		nop
		lea	rsp,[rsp+40]
		ret
..@c66:

SECTION .text
	GLOBAL fpc_iocheck
fpc_iocheck:
..@c68:
		ret
..@c69:

SECTION .text
	GLOBAL fpc_help_constructor
fpc_help_constructor:
..@c70:
		xor	eax,eax
		ret
..@c71:

SECTION .text
	GLOBAL fpc_help_destructor
fpc_help_destructor:
..@c72:
		mov	rax,rcx
		ret
..@c73:

SECTION .text
	GLOBAL fpc_help_fail
fpc_help_fail:
..@c74:
		lea	rsp,[rsp-40]
..@c76:
		mov	rax,rcx
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld9]
		lea	rdx,[_$SYSTEM$_Ld10]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c75:

SECTION .text
	GLOBAL fpc_reraise
fpc_reraise:
..@c77:
		ret
..@c78:

SECTION .text
	GLOBAL fpc_finalize
fpc_finalize:
..@c79:
		mov	rax,rcx
		ret
..@c80:

SECTION .text
	GLOBAL fpc_initializeunits
fpc_initializeunits:
	GLOBAL FPC_INITIALIZEUNITS
FPC_INITIALIZEUNITS:
..@c81:
		ret
..@c82:

SECTION .text
	GLOBAL fpc_libinitializeunits
fpc_libinitializeunits:
	GLOBAL FPC_LIBINITIALIZEUNITS
FPC_LIBINITIALIZEUNITS:
..@c83:
		ret
..@c84:

SECTION .text
	GLOBAL SYSTEM_$$_MOVE$formal$formal$LONGDWORD
SYSTEM_$$_MOVE$formal$formal$LONGDWORD:
	GLOBAL FPC_move
FPC_move:
..@c85:
		lea	rsp,[rsp-40]
..@c87:
		mov	rax,rcx
		mov	rcx,rdx
		mov	rdx,rax
		call	_$dll$msvcrt$memmove
		nop
		lea	rsp,[rsp+40]
		ret
..@c86:

SECTION .text
	GLOBAL SYSTEM_$$_SHOWMESSAGE$PCHAR
SYSTEM_$$_SHOWMESSAGE$PCHAR:
..@c88:
		lea	rsp,[rsp-40]
..@c90:
		mov	rdx,rcx
		mov	r9d,64
		lea	r8,[_$SYSTEM$_Ld11]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c89:

SECTION .text
	GLOBAL SYSTEM_$$_SHOWWARN$PCHAR
SYSTEM_$$_SHOWWARN$PCHAR:
..@c91:
		lea	rsp,[rsp-40]
..@c93:
		mov	rdx,rcx
		mov	r9d,48
		lea	r8,[_$SYSTEM$_Ld12]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c92:

SECTION .text
	GLOBAL SYSTEM_$$_SHOWERROR$PCHAR
SYSTEM_$$_SHOWERROR$PCHAR:
..@c94:
		lea	rsp,[rsp-40]
..@c96:
		mov	rdx,rcx
		mov	r9d,48
		lea	r8,[_$SYSTEM$_Ld3]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c95:

SECTION .text
	GLOBAL SYSTEM_$$_SHOWINFO$PCHAR
SYSTEM_$$_SHOWINFO$PCHAR:
..@c97:
		lea	rsp,[rsp-40]
..@c99:
		call	SYSTEM_$$_SHOWMESSAGE$PCHAR
		nop
		lea	rsp,[rsp+40]
		ret
..@c98:

SECTION .text
	GLOBAL SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR
SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR:
..@c100:
		lea	rax,[rdx-1]
		mov	rdx,-1
..@j112:
		inc	rdx
		mov	byte [rcx],r8b
		inc	rcx
		cmp	rax,rdx
		jnbe	..@j112
		ret
..@c101:

SECTION .text
	GLOBAL SYSTEM_$$_FREEMEM$POINTER
SYSTEM_$$_FREEMEM$POINTER:
..@c102:
		lea	rsp,[rsp-40]
..@c104:
		mov	rax,rcx
		mov	rcx,qword [rax]
		mov	r8d,32768
		xor	edx,edx
		call	_$dll$kernel32$VirtualAlloc
		nop
		lea	rsp,[rsp+40]
		ret
..@c103:

SECTION .text
	GLOBAL SYSTEM_$$_GETMEM$POINTER$LONGDWORD
SYSTEM_$$_GETMEM$POINTER$LONGDWORD:
..@c105:
		push	rbx
		lea	rsp,[rsp-32]
..@c107:
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
..@c106:

SECTION .text
	GLOBAL SYSTEM_$$_TSYSTEMCODEPAGE$$LONGDWORD
SYSTEM_$$_TSYSTEMCODEPAGE$$LONGDWORD:
..@c108:
		lea	rsp,[rsp-40]
..@c110:
		call	_$dll$kernel32$GetACP
		nop
		lea	rsp,[rsp+40]
		ret
..@c109:

SECTION .text
	GLOBAL SYSTEM_$$_LOCKFILE$POINTER$$BOOLEAN
SYSTEM_$$_LOCKFILE$POINTER$$BOOLEAN:
..@c111:
		push	rbx
		lea	rsp,[rsp-48]
..@c113:
		xor	bl,bl
		mov	dword [rsp+32],0
		xor	r8d,r8d
		xor	edx,edx
		call	_$dll$kernel32$LockFile
		test	al,al
		jne	..@j124
		lea	rcx,[_$SYSTEM$_Ld13]
		call	SYSTEM_$$_SHOWERROR$PCHAR
		jmp	..@j121
..@j124:
		mov	bl,1
..@j121:
		mov	al,bl
		nop
		lea	rsp,[rsp+48]
		pop	rbx
		ret
..@c112:

SECTION .text
	GLOBAL SYSTEM_$$_WRITEFILE$LONGWORD$PCHAR$$QWORD
SYSTEM_$$_WRITEFILE$LONGWORD$PCHAR$$QWORD:
..@c114:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c116:
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
..@c115:

SECTION .text
	GLOBAL SYSTEM_$$_WRITEFILE$LONGWORD$POINTER$$QWORD
SYSTEM_$$_WRITEFILE$LONGWORD$POINTER$$QWORD:
..@c117:
		lea	rsp,[rsp-56]
..@c119:
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
..@c118:

SECTION .text
	GLOBAL SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER
SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER:
..@c120:
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		lea	rsp,[rsp-64]
..@c122:
		mov	rbx,rcx
		mov	sil,dl
		lea	rcx,[_$SYSTEM$_Ld14]
		call	SYSTEM_$$_SHOWINFO$PCHAR
		mov	rcx,rbx
		call	_$dll$shlwapi$PathFileExistsA
		mov	rdi,rax
		cmp	edi,1
		jne	..@j132
		test	sil,sil
		jne	..@j134
		xor	r12d,r12d
		lea	rcx,[rsp+56]
		mov	edx,255
		call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
		mov	rcx,qword [rsp+56]
		lea	rdx,[_$SYSTEM$_Ld15]
		call	_$dll$ucrtbase$strcpy
		mov	rdx,rbx
		mov	rcx,qword [rsp+56]
		call	_$dll$ucrtbase$strcat
		mov	rcx,qword [rsp+56]
		lea	rdx,[_$SYSTEM$_Ld16]
		call	_$dll$ucrtbase$strcat
		mov	rcx,qword [rsp+56]
		lea	rdx,[_$SYSTEM$_Ld17]
		call	_$dll$ucrtbase$strcat
		mov	rdx,qword [rsp+56]
		mov	r9d,4
		lea	r8,[_$SYSTEM$_Ld11]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	edi,eax
		cmp	edi,6
		jne	..@j136
		mov	rcx,rbx
		call	SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN
		mov	rcx,rbx
		mov	dl,1
		call	SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER
		mov	r13,rax
		call	_$dll$kernel32$GetLastError
		mov	r12d,eax
..@j136:
		lea	rcx,[rsp+56]
		call	SYSTEM_$$_FREEMEM$POINTER
		test	r12d,r12d
		je	..@j144
		lea	rcx,[_$SYSTEM$_Ld18]
		call	SYSTEM_$$_SHOWERROR$PCHAR
		jmp	..@j129
		jmp	..@j144
..@j134:
		test	sil,sil
		je	..@j144
		mov	rcx,rbx
		call	_$dll$kernel32$DeleteFileA
		mov	dl,al
		test	dil,dil
		jne	..@j143
		lea	rcx,[_$SYSTEM$_Ld19]
		call	SYSTEM_$$_SHOWMESSAGE$PCHAR
..@j143:
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
		jmp	..@j129
		jmp	..@j144
..@j132:
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
		je	..@j146
		lea	rcx,[_$SYSTEM$_Ld18]
		call	SYSTEM_$$_SHOWERROR$PCHAR
		jmp	..@j129
..@j146:
..@j144:
		mov	eax,r13d
		cmp	eax,-1
		jne	..@j148
		lea	rcx,[rsp+56]
		mov	edx,255
		call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
		mov	rcx,qword [rsp+56]
		lea	rdx,[_$SYSTEM$_Ld15]
		call	_$dll$ucrtbase$strcpy
		mov	rdx,rbx
		mov	rcx,qword [rsp+56]
		call	_$dll$ucrtbase$strcat
		mov	rcx,qword [rsp+56]
		lea	rdx,[_$SYSTEM$_Ld20]
		call	_$dll$ucrtbase$strcat
		mov	rcx,qword [rsp+56]
		call	SYSTEM_$$_SHOWERROR$PCHAR
		lea	rcx,[rsp+56]
		call	SYSTEM_$$_FREEMEM$POINTER
		xor	esi,esi
		jmp	..@j129
..@j148:
		mov	rsi,r13
..@j129:
		mov	rax,rsi
		nop
		lea	rsp,[rsp+64]
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c121:

SECTION .text
	GLOBAL SYSTEM_$$_FILECREATE$RAWBYTESTRING$BOOLEAN$$POINTER
SYSTEM_$$_FILECREATE$RAWBYTESTRING$BOOLEAN$$POINTER:
..@c123:
		lea	rsp,[rsp-40]
..@c125:
		test	rcx,rcx
		jne	..@j151
		lea	rcx,[FPC_EMPTYCHAR]
..@j151:
		call	SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER
		nop
		lea	rsp,[rsp+40]
		ret
..@c124:

SECTION .text
	GLOBAL SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN
SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN:
..@c126:
		lea	rsp,[rsp-40]
..@c128:
		call	_$dll$kernel32$DeleteFileA
		nop
		lea	rsp,[rsp+40]
		ret
..@c127:

SECTION .text
	GLOBAL SYSTEM_$$_FILEDELETE$RAWBYTESTRING$$BOOLEAN
SYSTEM_$$_FILEDELETE$RAWBYTESTRING$$BOOLEAN:
..@c129:
		lea	rsp,[rsp-40]
..@c131:
		test	rcx,rcx
		jne	..@j156
		lea	rcx,[FPC_EMPTYCHAR]
..@j156:
		call	SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN
		nop
		lea	rsp,[rsp+40]
		ret
..@c130:

SECTION .text
	GLOBAL SYSTEM_$$_FILESEEK$LONGWORD$LONGDWORD$LONGDWORD$$LONGDWORD
SYSTEM_$$_FILESEEK$LONGWORD$LONGDWORD$LONGDWORD$$LONGDWORD:
..@c132:
		push	rbx
		lea	rsp,[rsp-32]
..@c134:
		mov	r9d,r8d
		xor	r8,r8
		call	_$dll$kernel32$SetFilePointer
		mov	ebx,eax
		call	_$dll$kernel32$GetLastError
		cmp	ebx,-1
		jne	..@j160
		test	eax,eax
		je	..@j160
		lea	rcx,[_$SYSTEM$_Ld21]
		call	SYSTEM_$$_SHOWERROR$PCHAR
		mov	eax,-1
		jmp	..@j157
..@j160:
		mov	eax,ebx
..@j157:
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c133:

SECTION .text
	GLOBAL SYSTEM_$$_FILESEEK$POINTER$LONGDWORD$LONGDWORD$$LONGDWORD
SYSTEM_$$_FILESEEK$POINTER$LONGDWORD$LONGDWORD$$LONGDWORD:
..@c135:
		lea	rsp,[rsp-40]
..@c137:
		call	SYSTEM_$$_FILESEEK$LONGWORD$LONGDWORD$LONGDWORD$$LONGDWORD
		mov	eax,edx
		nop
		lea	rsp,[rsp+40]
		ret
..@c136:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT:
..@c138:
		push	rbp
..@c140:
..@c141:
		mov	rbp,rsp
..@c142:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j167
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j167:
		cmp	qword [rbp-16],0
		je	..@j164
..@j175:
		nop
..@j174:
		mov	qword [rbp-24],-1
		mov	rdx,qword [rbp-16]
		lea	rcx,[VMT_$SYSTEM_$$_TOBJECT]
		lea	rax,[VMT_$SYSTEM_$$_TOBJECT]
		call	[rax+120]
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j172
		cmp	qword [rbp-8],0
		je	..@j172
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j172
..@j171:
		cmp	qword [rbp-8],0
		je	..@j181
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+96]
..@j181:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j182:
		nop
..@j172:
..@j164:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c139:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_DESTROY
SYSTEM$_$TOBJECT_$__$$_DESTROY:
..@c143:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c145:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j186
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j186:
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
		test	rbx,rbx
		je	..@j188
		test	rsi,rsi
		je	..@j188
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j188:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c144:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION:
..@c146:
		mov	rax,rcx
		ret
..@c147:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION:
..@c148:
		mov	rax,rcx
		ret
..@c149:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING:
..@c150:
		lea	rsp,[rsp-40]
..@c152:
		mov	rax,rcx
		mov	rcx,rdx
		lea	rdx,[..@d22]
		call	fpc_ansistr_assign
		nop
		lea	rsp,[rsp+40]
		ret
..@c151:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_GETINSTANCE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_GETINSTANCE$$TOBJECT:
..@c153:
		push	rbx
		lea	rsp,[rsp-32]
..@c155:
		xor	ebx,ebx
		cmp	qword [U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE],0
		jne	..@j199
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld23]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		jmp	..@j196
..@j199:
		mov	rbx,qword [U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE]
..@j196:
		mov	rax,rbx
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c154:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT:
..@c156:
		xor	eax,eax
		ret
..@c157:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_FREE
SYSTEM$_$TOBJECT_$__$$_FREE:
..@c158:
		lea	rsp,[rsp-40]
..@c160:
		mov	rax,rcx
		test	rcx,rcx
		je	..@j205
		mov	rcx,qword [rax]
		mov	rax,qword [rax]
		call	[rax+136]
..@j205:
		nop
		lea	rsp,[rsp+40]
		ret
..@c159:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT:
..@c161:
		lea	rsp,[rsp-40]
..@c163:
		mov	r9d,4
		mov	r8d,12288
		mov	edx,8
		xor	ecx,ecx
		call	_$dll$kernel32$VirtualAlloc
		mov	qword [U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE],rax
		test	rax,rax
		jne	..@j209
		mov	r9d,16
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld24]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
..@j209:
		mov	rax,rdx
		nop
		lea	rsp,[rsp+40]
		ret
..@c162:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER:
..@c164:
		mov	qword [rdx],rcx
		ret
..@c165:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE:
..@c166:
		push	rbx
		lea	rsp,[rsp-32]
..@c168:
		mov	rbx,rcx
		cmp	qword [U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE],0
		je	..@j215
		mov	rcx,qword [U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE]
		mov	r8d,32768
		xor	edx,edx
		call	_$dll$kernel32$VirtualAlloc
..@j215:
		test	rbx,rbx
		je	..@j217
		mov	rcx,rbx
		mov	r8d,32768
		xor	edx,edx
		call	_$dll$kernel32$VirtualAlloc
..@j217:
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c167:

SECTION .text
SYSTEM_$$_SAFECALLEXCEPTION$POINTER$POINTER$$SHORTDWORD:
..@c169:
		mov	eax,edx
		ret
..@c170:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD:
..@c171:
		mov	eax,1
		ret
..@c172:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal
SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal:
..@c173:
		mov	rax,rcx
		ret
..@c174:

SECTION .text
	GLOBAL SYSTEM$_$TLIST_$__$$_CREATE$$TLIST
SYSTEM$_$TLIST_$__$$_CREATE$$TLIST:
..@c175:
		push	rbp
..@c177:
..@c178:
		mov	rbp,rsp
..@c179:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j227
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j227:
		cmp	qword [rbp-16],0
		je	..@j224
..@j235:
		nop
..@j234:
		mov	qword [rbp-24],-1
		mov	rcx,qword [rbp-16]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j232
		cmp	qword [rbp-8],0
		je	..@j232
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j232
..@j231:
		cmp	qword [rbp-8],0
		je	..@j241
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSTEM$_$TLIST_$__$$_DESTROY
..@j241:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j242:
		nop
..@j232:
..@j224:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c176:

SECTION .text
	GLOBAL SYSTEM$_$TLIST_$__$$_DESTROY
SYSTEM$_$TLIST_$__$$_DESTROY:
..@c180:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c182:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j246
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j246:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j248
		test	rsi,rsi
		je	..@j248
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j248:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c181:

SECTION .text
SYSTEM_$$_STRINGLENGTH$ANSISTRING$$LONGDWORD:
..@c183:
		xor	eax,eax
		jmp	..@j253
..@j252:
		inc	eax
..@j253:
		mov	edx,eax
		inc	rdx
		cmp	byte [rcx+rdx*1-1],0
		jne	..@j252
		ret
..@c184:

SECTION .text
	GLOBAL SYSTEM_$$_INITCONSOLE
SYSTEM_$$_INITCONSOLE:
..@c185:
		lea	rsp,[rsp-40]
..@c187:
		mov	eax,1
		lea	rcx,[VMT_$SYSTEM_$$_TDOSCMD]
		mov	rdx,rax
		call	SYSTEM$_$TDOSCMD_$__$$_CREATE$$TDOSCMD
		mov	qword [U_$SYSTEM_$$_DOS],rax
		nop
		lea	rsp,[rsp+40]
		ret
..@c186:

SECTION .text
	GLOBAL SYSTEM_$$_DONECONSOLE
SYSTEM_$$_DONECONSOLE:
..@c188:
		ret
..@c189:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_CREATE$$TDOSCMD
SYSTEM$_$TDOSCMD_$__$$_CREATE$$TDOSCMD:
..@c190:
		push	rbp
..@c192:
..@c193:
		mov	rbp,rsp
..@c194:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j262
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j262:
		cmp	qword [rbp-16],0
		je	..@j259
..@j270:
		nop
..@j269:
		mov	qword [rbp-24],-1
		mov	rcx,qword [rbp-16]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	rax,qword [rbp-16]
		lea	rcx,[rax+16]
		lea	rdx,[..@d25]
		call	fpc_ansistr_assign
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j267
		cmp	qword [rbp-8],0
		je	..@j267
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j267
..@j266:
		cmp	qword [rbp-8],0
		je	..@j276
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+96]
..@j276:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j277:
		nop
..@j267:
..@j259:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c191:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_DESTROY
SYSTEM$_$TDOSCMD_$__$$_DESTROY:
..@c195:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c197:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j281
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j281:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j283
		test	rsi,rsi
		je	..@j283
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j283:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c196:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_FREE
SYSTEM$_$TDOSCMD_$__$$_FREE:
..@c198:
		lea	rsp,[rsp-40]
..@c200:
		mov	rax,rcx
		test	rcx,rcx
		je	..@j288
		mov	rcx,rax
		mov	edx,1
		mov	rax,qword [rax]
		call	[rax+96]
..@j288:
		nop
		lea	rsp,[rsp+40]
		ret
..@c199:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_CLS
SYSTEM$_$TDOSCMD_$__$$_CLS:
..@c201:
		mov	rax,rcx
		ret
..@c202:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_CLRSCR
SYSTEM$_$TDOSCMD_$__$$_CLRSCR:
..@c203:
		lea	rsp,[rsp-40]
..@c205:
		call	SYSTEM$_$TDOSCMD_$__$$_CLS
		nop
		lea	rsp,[rsp+40]
		ret
..@c204:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_CLEARSCREEN
SYSTEM$_$TDOSCMD_$__$$_CLEARSCREEN:
..@c206:
		lea	rsp,[rsp-40]
..@c208:
		call	SYSTEM$_$TDOSCMD_$__$$_CLS
		nop
		lea	rsp,[rsp+40]
		ret
..@c207:

SECTION .text
SYSTEM$_$TDOSCMD_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$000001EE:
..@c209:
		push	rbp
..@c211:
..@c212:
		mov	rbp,rcx
..@c213:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c210:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD:
..@c214:
		push	rbp
..@c216:
..@c217:
		mov	rbp,rsp
..@c218:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
		mov	rcx,qword [rbp-16]
		call	fpc_ansistr_incr_ref
..@j303:
		nop
..@j299:
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		jne	..@j304
		lea	rdx,[FPC_EMPTYCHAR]
..@j304:
		lea	rcx,[_$SYSTEM$_Ld26]
		call	_$dll$msvcrt$printf
		mov	rdx,qword [rbp-16]
		test	rdx,rdx
		jne	..@j305
		lea	rdx,[FPC_EMPTYCHAR]
..@j305:
		lea	rcx,[_$SYSTEM$_Ld27]
		call	_$dll$msvcrt$printf
		xor	ebx,ebx
..@j301:
		nop
..@j300:
		mov	rcx,rbp
		call	SYSTEM$_$TDOSCMD_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$000001EE
		mov	eax,ebx
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c215:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_WRITE$ANSISTRING
SYSTEM$_$TDOSCMD_$__$$_WRITE$ANSISTRING:
..@c219:
		lea	rsp,[rsp-40]
..@c221:
		mov	rax,rcx
		test	rdx,rdx
		jne	..@j308
		lea	rdx,[FPC_EMPTYCHAR]
..@j308:
		lea	rcx,[_$SYSTEM$_Ld28]
		call	_$dll$msvcrt$printf
		nop
		lea	rsp,[rsp+40]
		ret
..@c220:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING
SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING:
..@c222:
		lea	rsp,[rsp-40]
..@c224:
		mov	rax,rcx
		test	rdx,rdx
		jne	..@j311
		lea	rdx,[FPC_EMPTYCHAR]
..@j311:
		lea	rcx,[_$SYSTEM$_Ld29]
		call	_$dll$msvcrt$printf
		nop
		lea	rsp,[rsp+40]
		ret
..@c223:

SECTION .text
SYSTEM$_$TDOSCMD_$_READLN$ANSISTRING$$ANSISTRING_$$_fin$000001EF:
..@c225:
		push	rbp
..@c227:
..@c228:
		mov	rbp,rcx
..@c229:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c226:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_READLN$ANSISTRING$$ANSISTRING
SYSTEM$_$TDOSCMD_$__$$_READLN$ANSISTRING$$ANSISTRING:
..@c230:
		push	rbp
..@c232:
..@c233:
		mov	rbp,rsp
..@c234:
		lea	rsp,[rsp-64]
		mov	qword [rbp-32],rbx
		mov	qword [rbp-24],rdi
		mov	qword [rbp-16],rsi
		mov	rbx,rcx
		mov	rsi,rdx
		mov	rdi,r8
		mov	qword [rbp-8],0
..@j320:
		nop
..@j316:
		cmp	qword [U_$SYSTEM_$$_DOS],0
		jne	..@j322
		call	SYSTEM_$$_INITCONSOLE
..@j322:
		mov	rdx,rdi
		mov	rcx,rbx
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING
		lea	rdx,[rbp-8]
		lea	rcx,[_$SYSTEM$_Ld28]
		call	_$dll$msvcrt$scanf
		mov	rcx,rsi
		mov	rdx,qword [rbp-8]
		call	fpc_ansistr_assign
..@j318:
		nop
..@j317:
		mov	rcx,rbp
		call	SYSTEM$_$TDOSCMD_$_READLN$ANSISTRING$$ANSISTRING_$$_fin$000001EF
		mov	rbx,qword [rbp-32]
		mov	rdi,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c231:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_READLN$$ANSISTRING
SYSTEM$_$TDOSCMD_$__$$_READLN$$ANSISTRING:
..@c235:
		lea	rsp,[rsp-40]
..@c237:
		lea	r8,[..@d30]
		call	SYSTEM$_$TDOSCMD_$__$$_READLN$ANSISTRING$$ANSISTRING
		nop
		lea	rsp,[rsp+40]
		ret
..@c236:

SECTION .text
SYSTEM$_$TDOSCMD_$_READ$ANSISTRING$$ANSISTRING_$$_fin$000001F0:
..@c238:
		push	rbp
..@c240:
..@c241:
		mov	rbp,rcx
..@c242:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c239:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_READ$ANSISTRING$$ANSISTRING
SYSTEM$_$TDOSCMD_$__$$_READ$ANSISTRING$$ANSISTRING:
..@c243:
		push	rbp
..@c245:
..@c246:
		mov	rbp,rsp
..@c247:
		lea	rsp,[rsp-64]
		mov	qword [rbp-32],rbx
		mov	qword [rbp-24],rdi
		mov	qword [rbp-16],rsi
		mov	rbx,rcx
		mov	rsi,rdx
		mov	rdi,r8
		mov	qword [rbp-8],0
..@j333:
		nop
..@j329:
		cmp	qword [U_$SYSTEM_$$_DOS],0
		jne	..@j335
		call	SYSTEM_$$_INITCONSOLE
..@j335:
		mov	rdx,rdi
		mov	rcx,rbx
		call	SYSTEM$_$TDOSCMD_$__$$_WRITE$ANSISTRING
		lea	rdx,[rbp-8]
		lea	rcx,[_$SYSTEM$_Ld28]
		call	_$dll$msvcrt$scanf
		mov	rcx,rsi
		mov	rdx,qword [rbp-8]
		call	fpc_ansistr_assign
..@j331:
		nop
..@j330:
		mov	rcx,rbp
		call	SYSTEM$_$TDOSCMD_$_READ$ANSISTRING$$ANSISTRING_$$_fin$000001F0
		mov	rbx,qword [rbp-32]
		mov	rdi,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c244:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_READ$$ANSISTRING
SYSTEM$_$TDOSCMD_$__$$_READ$$ANSISTRING:
..@c248:
		lea	rsp,[rsp-40]
..@c250:
		lea	r8,[..@d30]
		call	SYSTEM$_$TDOSCMD_$__$$_READ$ANSISTRING$$ANSISTRING
		nop
		lea	rsp,[rsp+40]
		ret
..@c249:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_GET_STDIN$$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_GET_STDIN$$LONGDWORD:
..@c251:
		lea	rsp,[rsp-40]
..@c253:
		mov	ecx,-10
		call	_$dll$kernel32$GetStdHandle
		nop
		lea	rsp,[rsp+40]
		ret
..@c252:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_GET_STDOUT$$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_GET_STDOUT$$LONGDWORD:
..@c254:
		lea	rsp,[rsp-40]
..@c256:
		mov	ecx,-11
		call	_$dll$kernel32$GetStdHandle
		nop
		lea	rsp,[rsp+40]
		ret
..@c255:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_GET_STDERR$$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_GET_STDERR$$LONGDWORD:
..@c257:
		lea	rsp,[rsp-40]
..@c259:
		mov	ecx,-12
		call	_$dll$kernel32$GetStdHandle
		nop
		lea	rsp,[rsp+40]
		ret
..@c258:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_SET_STDIN$LONGDWORD$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_SET_STDIN$LONGDWORD$LONGDWORD:
..@c260:
		push	rbx
		lea	rsp,[rsp-32]
..@c262:
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
..@c261:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_SET_STDOUT$LONGDWORD$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_SET_STDOUT$LONGDWORD$LONGDWORD:
..@c263:
		push	rbx
		lea	rsp,[rsp-32]
..@c265:
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
..@c264:

SECTION .text
	GLOBAL SYSTEM$_$TDOSCMD_$__$$_SET_STDERR$LONGDWORD$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_SET_STDERR$LONGDWORD$LONGDWORD:
..@c266:
		push	rbx
		lea	rsp,[rsp-32]
..@c268:
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
..@c267:

SECTION .text
SYSTEM$_$TDOSIO_$_lower$TDOSIO$ANSISTRING$$BOOLEAN_$$_fin$000001F1:
..@c269:
		push	rbp
..@c271:
..@c272:
		mov	rbp,rcx
..@c273:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c270:

SECTION .text
	GLOBAL SYSTEM$_$TDOSIO_$__$$_$lower$TDOSIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TDOSIO_$__$$_$lower$TDOSIO$ANSISTRING$$BOOLEAN:
..@c274:
		push	rbp
..@c276:
..@c277:
		mov	rbp,rsp
..@c278:
		lea	rsp,[rsp-64]
		mov	qword [rbp-32],rdi
		mov	qword [rbp-24],rsi
		mov	rsi,rcx
		mov	qword [rbp-8],rdx
		lea	rdi,[rbp-12]
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
..@j358:
		nop
..@j354:
		cmp	qword [U_$SYSTEM_$$_DOS],0
		jne	..@j360
		call	SYSTEM_$$_INITCONSOLE
..@j360:
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [U_$SYSTEM_$$_DOS]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING
..@j356:
		nop
..@j355:
		mov	rcx,rbp
		call	SYSTEM$_$TDOSIO_$_lower$TDOSIO$ANSISTRING$$BOOLEAN_$$_fin$000001F1
		mov	al,dl
		mov	rdi,qword [rbp-32]
		mov	rsi,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c275:

SECTION .text
SYSTEM$_$TDOSIO_$_greater$TDOSIO$ANSISTRING$$BOOLEAN_$$_fin$000001F2:
..@c279:
		push	rbp
..@c281:
..@c282:
		mov	rbp,rcx
..@c283:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-32]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c280:

SECTION .text
	GLOBAL SYSTEM$_$TDOSIO_$__$$_$greater$TDOSIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TDOSIO_$__$$_$greater$TDOSIO$ANSISTRING$$BOOLEAN:
..@c284:
		push	rbp
..@c286:
..@c287:
		mov	rbp,rsp
..@c288:
		lea	rsp,[rsp-96]
		mov	qword [rbp-56],rbx
		mov	qword [rbp-48],rdi
		mov	qword [rbp-40],rsi
		mov	rsi,rcx
		mov	qword [rbp-8],rdx
		lea	rdi,[rbp-20]
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
		mov	qword [rbp-32],0
..@j369:
		nop
..@j365:
		cmp	qword [U_$SYSTEM_$$_DOS],0
		jne	..@j371
		call	SYSTEM_$$_INITCONSOLE
..@j371:
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [U_$SYSTEM_$$_DOS]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITE$ANSISTRING
		mov	rcx,qword [U_$SYSTEM_$$_DOS]
		lea	rdx,[rbp-32]
		call	SYSTEM$_$TDOSCMD_$__$$_READ$$ANSISTRING
		lea	rcx,[rbp-32]
		call	fpc_ansistr_decr_ref
		mov	bl,1
..@j367:
		nop
..@j366:
		mov	rcx,rbp
		call	SYSTEM$_$TDOSIO_$_greater$TDOSIO$ANSISTRING$$BOOLEAN_$$_fin$000001F2
		mov	al,bl
		mov	rbx,qword [rbp-56]
		mov	rdi,qword [rbp-48]
		mov	rsi,qword [rbp-40]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c285:

SECTION .text
	GLOBAL SYSTEM$_$TDOSIO_$__$$_$greater$TDOSIO$LONGDWORD$$QWORD
SYSTEM$_$TDOSIO_$__$$_$greater$TDOSIO$LONGDWORD$$QWORD:
..@c289:
		push	rdi
		push	rsi
		lea	rsp,[rsp-40]
..@c291:
		mov	rsi,rcx
		lea	rdi,[rsp+32]
		cmp	qword [U_$SYSTEM_$$_DOS],0
		jne	..@j375
		call	SYSTEM_$$_INITCONSOLE
..@j375:
		mov	rcx,qword [U_$SYSTEM_$$_DOS]
		lea	rdx,[..@d31]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITE$ANSISTRING
		mov	eax,1
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rdi
		ret
..@c290:

SECTION .text
	GLOBAL SYSTEM$_$TDOSIO_$__$$_WRITELN$ANSISTRING
SYSTEM$_$TDOSIO_$__$$_WRITELN$ANSISTRING:
..@c292:
		push	rbx
		lea	rsp,[rsp-32]
..@c294:
		mov	rax,rcx
		mov	rbx,rdx
		cmp	qword [U_$SYSTEM_$$_DOS],0
		jne	..@j379
		call	SYSTEM_$$_INITCONSOLE
..@j379:
		mov	rdx,rbx
		mov	rcx,qword [U_$SYSTEM_$$_DOS]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c293:

SECTION .text
	GLOBAL SYSTEM$_$TDOSIO_$__$$_WRITE$ANSISTRING
SYSTEM$_$TDOSIO_$__$$_WRITE$ANSISTRING:
..@c295:
		push	rbx
		lea	rsp,[rsp-32]
..@c297:
		mov	rax,rcx
		mov	rbx,rdx
		cmp	qword [U_$SYSTEM_$$_DOS],0
		jne	..@j383
		call	SYSTEM_$$_INITCONSOLE
..@j383:
		mov	rdx,rbx
		mov	rcx,qword [U_$SYSTEM_$$_DOS]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITE$ANSISTRING
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c296:

SECTION .text
SYSTEM$_$TDOSIO_$_READLN$ANSISTRING$$ANSISTRING_$$_fin$000001F3:
..@c298:
		push	rbp
..@c300:
..@c301:
		mov	rbp,rcx
..@c302:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c299:

SECTION .text
	GLOBAL SYSTEM$_$TDOSIO_$__$$_READLN$ANSISTRING$$ANSISTRING
SYSTEM$_$TDOSIO_$__$$_READLN$ANSISTRING$$ANSISTRING:
..@c303:
		push	rbp
..@c305:
..@c306:
		mov	rbp,rsp
..@c307:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-16],rsi
		mov	rax,rcx
		mov	rbx,rdx
		mov	rsi,r8
		mov	qword [rbp-8],0
..@j392:
		nop
..@j388:
		cmp	qword [U_$SYSTEM_$$_DOS],0
		jne	..@j394
		call	SYSTEM_$$_INITCONSOLE
..@j394:
		mov	rdx,rsi
		mov	rcx,qword [U_$SYSTEM_$$_DOS]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING
		lea	rdx,[rbp-8]
		lea	rcx,[_$SYSTEM$_Ld28]
		call	_$dll$msvcrt$scanf
		mov	rcx,rbx
		mov	rdx,qword [rbp-8]
		call	fpc_ansistr_assign
..@j390:
		nop
..@j389:
		mov	rcx,rbp
		call	SYSTEM$_$TDOSIO_$_READLN$ANSISTRING$$ANSISTRING_$$_fin$000001F3
		mov	rbx,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c304:

SECTION .text
	GLOBAL SYSTEM$_$TDOSIO_$__$$_READLN$$ANSISTRING
SYSTEM$_$TDOSIO_$__$$_READLN$$ANSISTRING:
..@c308:
		lea	rsp,[rsp-40]
..@c310:
		mov	rax,rcx
		mov	rcx,qword [U_$SYSTEM_$$_DOS]
		lea	r8,[..@d30]
		call	SYSTEM$_$TDOSCMD_$__$$_READLN$ANSISTRING$$ANSISTRING
		nop
		lea	rsp,[rsp+40]
		ret
..@c309:

SECTION .text
SYSTEM$_$TDOSIO_$_READ$ANSISTRING$$ANSISTRING_$$_fin$000001F4:
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
	GLOBAL SYSTEM$_$TDOSIO_$__$$_READ$ANSISTRING$$ANSISTRING
SYSTEM$_$TDOSIO_$__$$_READ$ANSISTRING$$ANSISTRING:
..@c316:
		push	rbp
..@c318:
..@c319:
		mov	rbp,rsp
..@c320:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-16],rsi
		mov	rax,rcx
		mov	rbx,rdx
		mov	rsi,r8
		mov	qword [rbp-8],0
..@j405:
		nop
..@j401:
		cmp	qword [U_$SYSTEM_$$_DOS],0
		jne	..@j407
		call	SYSTEM_$$_INITCONSOLE
..@j407:
		mov	rdx,rsi
		mov	rcx,qword [U_$SYSTEM_$$_DOS]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITE$ANSISTRING
		mov	r8,rsi
		lea	rdx,[rbp-8]
		mov	rcx,qword [U_$SYSTEM_$$_DOS]
		call	SYSTEM$_$TDOSCMD_$__$$_READLN$ANSISTRING$$ANSISTRING
		mov	rcx,rbx
		mov	rdx,qword [rbp-8]
		call	fpc_ansistr_assign
..@j403:
		nop
..@j402:
		mov	rcx,rbp
		call	SYSTEM$_$TDOSIO_$_READ$ANSISTRING$$ANSISTRING_$$_fin$000001F4
		mov	rbx,qword [rbp-24]
		mov	rsi,qword [rbp-16]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c317:

SECTION .text
	GLOBAL SYSTEM$_$TDOSIO_$__$$_READ$$ANSISTRING
SYSTEM$_$TDOSIO_$__$$_READ$$ANSISTRING:
..@c321:
		lea	rsp,[rsp-40]
..@c323:
		xor	r8,r8
		call	SYSTEM$_$TDOSIO_$__$$_READ$ANSISTRING$$ANSISTRING
		nop
		lea	rsp,[rsp+40]
		ret
..@c322:

SECTION .text
	GLOBAL SYSTEM_$$_INITWINDOWS
SYSTEM_$$_INITWINDOWS:
..@c324:
		lea	rsp,[rsp-40]
..@c326:
		mov	eax,1
		lea	rcx,[VMT_$SYSTEM_$$_WINDOWS_CLASS]
		mov	rdx,rax
		call	SYSTEM$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS
		mov	qword [U_$SYSTEM_$$_WINDOWS],rax
		nop
		lea	rsp,[rsp+40]
		ret
..@c325:

SECTION .text
	GLOBAL SYSTEM_$$_DONEWINDOWS
SYSTEM_$$_DONEWINDOWS:
..@c327:
		lea	rsp,[rsp-40]
..@c329:
		cmp	qword [U_$SYSTEM_$$_WINDOWS],0
		je	..@j415
		mov	rax,qword [U_$SYSTEM_$$_WINDOWS]
		mov	rdx,qword [U_$SYSTEM_$$_WINDOWS]
		mov	rdx,qword [rdx]
		mov	rcx,rax
		call	[rdx+184]
..@j415:
		nop
		lea	rsp,[rsp+40]
		ret
..@c328:

SECTION .text
	GLOBAL SYSTEM$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS
SYSTEM$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS:
..@c330:
		push	rbp
..@c332:
..@c333:
		mov	rbp,rsp
..@c334:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j419
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j419:
		cmp	qword [rbp-16],0
		je	..@j416
..@j427:
		nop
..@j426:
		mov	qword [rbp-24],-1
		mov	rcx,qword [rbp-16]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j424
		cmp	qword [rbp-8],0
		je	..@j424
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j424
..@j423:
		cmp	qword [rbp-8],0
		je	..@j433
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY
..@j433:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j434:
		nop
..@j424:
..@j416:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c331:

SECTION .text
	GLOBAL SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY
SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY:
..@c335:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c337:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j438
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j438:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j440
		test	rsi,rsi
		je	..@j440
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j440:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c336:

SECTION .text
	GLOBAL SYSTEM$_$WINDOWS_CLASS_$__$$_FREE
SYSTEM$_$WINDOWS_CLASS_$__$$_FREE:
..@c338:
		lea	rsp,[rsp-40]
..@c340:
		mov	rax,rcx
		test	rcx,rcx
		je	..@j445
		mov	rcx,rax
		mov	edx,1
		call	SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY
..@j445:
		nop
		lea	rsp,[rsp+40]
		ret
..@c339:

SECTION .text
SYSTEM$_$WINDOWS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$000001F5:
..@c341:
		push	rbp
..@c343:
..@c344:
		mov	rbp,rcx
..@c345:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c342:

SECTION .text
	GLOBAL SYSTEM$_$WINDOWS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD
SYSTEM$_$WINDOWS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD:
..@c346:
		push	rbp
..@c348:
..@c349:
		mov	rbp,rsp
..@c350:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rbx
		mov	qword [rbp-8],rdx
		mov	qword [rbp-16],r8
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
		mov	rcx,qword [rbp-16]
		call	fpc_ansistr_incr_ref
..@j454:
		nop
..@j450:
		mov	r8,qword [rbp-16]
		test	r8,r8
		jne	..@j455
		lea	r8,[FPC_EMPTYCHAR]
..@j455:
		mov	rdx,qword [rbp-8]
		test	rdx,rdx
		jne	..@j456
		lea	rdx,[FPC_EMPTYCHAR]
..@j456:
		xor	r9d,r9d
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		xor	ebx,ebx
..@j452:
		nop
..@j451:
		mov	rcx,rbp
		call	SYSTEM$_$WINDOWS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$000001F5
		mov	eax,ebx
		mov	rbx,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c347:

SECTION .text
	GLOBAL SYSTEM$_$TVGAIO_$__$$_$lower$TVGAIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TVGAIO_$__$$_$lower$TVGAIO$ANSISTRING$$BOOLEAN:
..@c351:
		push	rbp
..@c353:
..@c354:
		mov	rbp,rsp
..@c355:
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
..@c352:

SECTION .text
	GLOBAL SYSTEM$_$TVGAIO_$__$$_$greater$TVGAIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TVGAIO_$__$$_$greater$TVGAIO$ANSISTRING$$BOOLEAN:
..@c356:
		push	rbp
..@c358:
..@c359:
		mov	rbp,rsp
..@c360:
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
..@c357:

SECTION .text
SYSTEM$_$TSYSTEMIO_$_lower$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$000001F8:
..@c361:
		push	rbp
..@c363:
..@c364:
		mov	rbp,rcx
..@c365:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c362:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEMIO_$__$$_$lower$TSYSTEMIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TSYSTEMIO_$__$$_$lower$TSYSTEMIO$ANSISTRING$$BOOLEAN:
..@c366:
		push	rbp
..@c368:
..@c369:
		mov	rbp,rsp
..@c370:
		lea	rsp,[rsp-64]
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
		cmp	qword [U_$SYSTEM_$$_DOS],0
		jne	..@j475
		call	SYSTEM_$$_INITCONSOLE
..@j475:
		mov	rdx,qword [rbp-8]
		mov	rcx,qword [U_$SYSTEM_$$_DOS]
		call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$ANSISTRING
..@j471:
		nop
..@j470:
		mov	rcx,rbp
		call	SYSTEM$_$TSYSTEMIO_$_lower$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$000001F8
		mov	al,dl
		mov	rdi,qword [rbp-32]
		mov	rsi,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c367:

SECTION .text
SYSTEM$_$TSYSTEMIO_$_greater$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$000001F9:
..@c371:
		push	rbp
..@c373:
..@c374:
		mov	rbp,rcx
..@c375:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-8]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c372:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$ANSISTRING$$BOOLEAN:
..@c376:
		push	rbp
..@c378:
..@c379:
		mov	rbp,rsp
..@c380:
		lea	rsp,[rsp-80]
		mov	qword [rbp-40],rbx
		mov	qword [rbp-32],rdi
		mov	qword [rbp-24],rsi
		mov	rsi,rcx
		mov	qword [rbp-8],rdx
		lea	rdi,[rbp-12]
		mov	rcx,qword [rbp-8]
		call	fpc_ansistr_incr_ref
..@j484:
		nop
..@j480:
		cmp	qword [U_$SYSTEM_$$_DOS],0
		jne	..@j486
		call	SYSTEM_$$_INITCONSOLE
..@j486:
		mov	bl,1
..@j482:
		nop
..@j481:
		mov	rcx,rbp
		call	SYSTEM$_$TSYSTEMIO_$_greater$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$000001F9
		mov	al,bl
		mov	rbx,qword [rbp-40]
		mov	rdi,qword [rbp-32]
		mov	rsi,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c377:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$LONGDWORD$$QWORD
SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$LONGDWORD$$QWORD:
..@c381:
		push	rdi
		push	rsi
		lea	rsp,[rsp-40]
..@c383:
		mov	rsi,rcx
		lea	rdi,[rsp+32]
		cmp	qword [U_$SYSTEM_$$_DOS],0
		jne	..@j490
		call	SYSTEM_$$_INITCONSOLE
..@j490:
		mov	eax,1
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rdi
		ret
..@c382:

SECTION .text
	GLOBAL SYSTEM$_$TCPU_$__$$_CREATE$$TCPU
SYSTEM$_$TCPU_$__$$_CREATE$$TCPU:
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
		jne	..@j494
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j494:
		cmp	qword [rbp-16],0
		je	..@j491
..@j502:
		nop
..@j501:
		mov	qword [rbp-24],-1
		mov	rcx,qword [rbp-16]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j499
		cmp	qword [rbp-8],0
		je	..@j499
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j499
..@j498:
		cmp	qword [rbp-8],0
		je	..@j508
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSTEM$_$TCPU_$__$$_DESTROY
..@j508:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j509:
		nop
..@j499:
..@j491:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c385:

SECTION .text
	GLOBAL SYSTEM$_$TCPU_$__$$_DESTROY
SYSTEM$_$TCPU_$__$$_DESTROY:
..@c389:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c391:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j513
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j513:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j515
		test	rsi,rsi
		je	..@j515
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j515:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c390:

SECTION .text
	GLOBAL SYSTEM$_$TCPU_$__$$_CLASSNAME$$ANSISTRING
SYSTEM$_$TCPU_$__$$_CLASSNAME$$ANSISTRING:
..@c392:
		lea	rsp,[rsp-40]
..@c394:
		mov	rax,rcx
		mov	rcx,rdx
		lea	rdx,[..@d32]
		call	fpc_ansistr_assign
		nop
		lea	rsp,[rsp+40]
		ret
..@c393:

SECTION .text
	GLOBAL SYSTEM$_$TCPU_$__$$_CLASSPARENT$$TOBJECT
SYSTEM$_$TCPU_$__$$_CLASSPARENT$$TOBJECT:
..@c395:
		lea	rsp,[rsp-40]
..@c397:
		call	SYSTEM$_$TCPU_$__$$_GETPARENT$$TOBJECT
		nop
		lea	rsp,[rsp+40]
		ret
..@c396:

SECTION .text
	GLOBAL SYSTEM$_$TCPU_$__$$_GETPARENT$$TOBJECT
SYSTEM$_$TCPU_$__$$_GETPARENT$$TOBJECT:
..@c398:
		mov	rax,qword [U_$SYSTEM_$$__static_tcpu_FCLASSPARENT]
		ret
..@c399:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY
SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY:
..@c400:
		push	rbp
..@c402:
..@c403:
		mov	rbp,rsp
..@c404:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j526
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j526:
		cmp	qword [rbp-16],0
		je	..@j523
..@j534:
		nop
..@j533:
		mov	qword [rbp-24],-1
		mov	rcx,qword [rbp-16]
		mov	r8d,512
		xor	edx,edx
		call	SYSTEM$_$TMEMORY_$__$$_CREATE$LONGDWORD$$TMEMORY
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j531
		cmp	qword [rbp-8],0
		je	..@j531
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j531
..@j530:
		cmp	qword [rbp-8],0
		je	..@j540
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSTEM$_$TMEMORY_$__$$_DESTROY
..@j540:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j541:
		nop
..@j531:
..@j523:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c401:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_CREATE$LONGDWORD$$TMEMORY
SYSTEM$_$TMEMORY_$__$$_CREATE$LONGDWORD$$TMEMORY:
..@c405:
		push	rbp
..@c407:
..@c408:
		mov	rbp,rsp
..@c409:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rcx
		mov	qword [rbp-16],rdx
		mov	dword [rbp-8],r8d
		cmp	qword [rbp-16],1
		jne	..@j545
		mov	rax,qword [rbp-24]
		mov	rdx,qword [rbp-24]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-24],rax
..@j545:
		cmp	qword [rbp-24],0
		je	..@j542
..@j553:
		nop
..@j552:
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
		je	..@j550
		cmp	qword [rbp-16],0
		je	..@j550
		mov	rcx,qword [rbp-24]
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j550
..@j549:
		cmp	qword [rbp-16],0
		je	..@j559
		mov	rdx,qword [rbp-32]
		mov	rcx,qword [rbp-24]
		call	SYSTEM$_$TMEMORY_$__$$_DESTROY
..@j559:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j560:
		nop
..@j550:
..@j542:
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c406:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$LONGDWORD$$TMEMORY
SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$LONGDWORD$$TMEMORY:
..@c410:
		push	rbp
..@c412:
..@c413:
		mov	rbp,rsp
..@c414:
		lea	rsp,[rsp-80]
		mov	qword [rbp-32],rcx
		mov	qword [rbp-24],rdx
		mov	qword [rbp-8],r8
		mov	dword [rbp-16],r9d
		cmp	qword [rbp-24],1
		jne	..@j564
		mov	rax,qword [rbp-32]
		mov	rdx,qword [rbp-32]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-32],rax
..@j564:
		cmp	qword [rbp-32],0
		je	..@j561
..@j572:
		nop
..@j571:
		mov	qword [rbp-40],-1
		mov	r8d,dword [rbp-16]
		mov	rcx,qword [rbp-32]
		xor	edx,edx
		call	SYSTEM$_$TMEMORY_$__$$_CREATE$LONGDWORD$$TMEMORY
		mov	rax,qword [rbp-8]
		mov	qword [U_$SYSTEM_$$__static_tmemory_FCLASSPARENT],rax
		mov	qword [rbp-40],1
		cmp	qword [rbp-32],0
		je	..@j569
		cmp	qword [rbp-24],0
		je	..@j569
		mov	rcx,qword [rbp-32]
		mov	rax,qword [rbp-32]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j569
..@j568:
		cmp	qword [rbp-24],0
		je	..@j578
		mov	rdx,qword [rbp-40]
		mov	rcx,qword [rbp-32]
		call	SYSTEM$_$TMEMORY_$__$$_DESTROY
..@j578:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j579:
		nop
..@j569:
..@j561:
		mov	rax,qword [rbp-32]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c411:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$$TMEMORY
SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$$TMEMORY:
..@c415:
		push	rbp
..@c417:
..@c418:
		mov	rbp,rsp
..@c419:
		lea	rsp,[rsp-64]
		mov	qword [rbp-24],rcx
		mov	qword [rbp-16],rdx
		mov	qword [rbp-8],r8
		cmp	qword [rbp-16],1
		jne	..@j583
		mov	rax,qword [rbp-24]
		mov	rdx,qword [rbp-24]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-24],rax
..@j583:
		cmp	qword [rbp-24],0
		je	..@j580
..@j591:
		nop
..@j590:
		mov	qword [rbp-32],-1
		mov	rcx,qword [rbp-24]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		cmp	qword [rbp-8],0
		jne	..@j594
		mov	edx,8
		mov	dword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE],edx
		mov	r9d,4
		mov	r8d,12288
		xor	ecx,ecx
		call	_$dll$kernel32$VirtualAlloc
		mov	qword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY],rax
		test	rax,rax
		jne	..@j597
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld33]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		jmp	..@j592
		jmp	..@j597
..@j594:
		mov	rax,qword [rbp-8]
		mov	qword [U_$SYSTEM_$$__static_tmemory_FCLASSPARENT],rax
		mov	rcx,qword [rbp-24]
		mov	edx,8
		call	SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER
		mov	qword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY],rax
..@j597:
..@j592:
		mov	qword [rbp-32],1
		cmp	qword [rbp-24],0
		je	..@j588
		cmp	qword [rbp-16],0
		je	..@j588
		mov	rcx,qword [rbp-24]
		mov	rax,qword [rbp-24]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j588
..@j587:
		cmp	qword [rbp-16],0
		je	..@j602
		mov	rdx,qword [rbp-32]
		mov	rcx,qword [rbp-24]
		call	SYSTEM$_$TMEMORY_$__$$_DESTROY
..@j602:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j603:
		nop
..@j588:
..@j580:
		mov	rax,qword [rbp-24]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c416:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_DESTROY
SYSTEM$_$TMEMORY_$__$$_DESTROY:
..@c420:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c422:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j607
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j607:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j609
		test	rsi,rsi
		je	..@j609
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j609:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c421:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_CLASSPARENT$$TOBJECT
SYSTEM$_$TMEMORY_$__$$_CLASSPARENT$$TOBJECT:
..@c423:
		lea	rsp,[rsp-40]
..@c425:
		call	SYSTEM$_$TMEMORY_$__$$_GETPARENT$$TOBJECT
		nop
		lea	rsp,[rsp+40]
		ret
..@c424:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_CLASSNAME$$ANSISTRING
SYSTEM$_$TMEMORY_$__$$_CLASSNAME$$ANSISTRING:
..@c426:
		lea	rsp,[rsp-40]
..@c428:
		mov	rax,rcx
		mov	rcx,rdx
		lea	rdx,[..@d34]
		call	fpc_ansistr_assign
		nop
		lea	rsp,[rsp+40]
		ret
..@c427:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER
SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER:
..@c429:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c431:
		mov	ebx,edx
		xor	esi,esi
		cmp	ebx,dword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE]
		je	..@j615
		cmp	dword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE],0
		jne	..@j621
		mov	edx,ebx
		mov	r9d,4
		mov	r8d,12288
		xor	ecx,ecx
		call	_$dll$kernel32$VirtualAlloc
		mov	qword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY],rax
		test	rax,rax
		jne	..@j623
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld33]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		jmp	..@j615
..@j623:
		mov	dword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE],ebx
..@j621:
		mov	rsi,qword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY]
..@j615:
		mov	rax,rsi
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c430:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_ALLOC
SYSTEM$_$TMEMORY_$__$$_ALLOC:
..@c432:
		lea	rsp,[rsp-40]
..@c434:
		mov	edx,512
		call	SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER
		nop
		lea	rsp,[rsp+40]
		ret
..@c433:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_FREE
SYSTEM$_$TMEMORY_$__$$_FREE:
..@c435:
		push	rbx
		lea	rsp,[rsp-32]
..@c437:
		mov	rbx,rcx
		cmp	qword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY],0
		je	..@j629
		mov	rcx,qword [U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY]
		mov	r8d,32768
		xor	edx,edx
		call	_$dll$kernel32$VirtualAlloc
..@j629:
		cmp	qword [U_$SYSTEM_$$__static_tmemory_FCLASSPARENT],0
		je	..@j631
		mov	rcx,qword [U_$SYSTEM_$$__static_tmemory_FCLASSPARENT]
		mov	rax,qword [U_$SYSTEM_$$__static_tmemory_FCLASSPARENT]
		mov	rax,qword [rax]
		call	[rax+160]
..@j631:
		test	rbx,rbx
		je	..@j633
		mov	rcx,rbx
		mov	edx,1
		call	SYSTEM$_$TMEMORY_$__$$_DESTROY
..@j633:
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c436:

SECTION .text
	GLOBAL SYSTEM_$$_INITSYSTEM
SYSTEM_$$_INITSYSTEM:
..@c438:
		lea	rsp,[rsp-40]
..@c440:
		cmp	qword [U_$SYSTEM_$$_MEM],0
		jne	..@j637
		mov	eax,1
		lea	rcx,[VMT_$SYSTEM_$$_TMEMORY]
		mov	rdx,rax
		call	SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY
		mov	qword [U_$SYSTEM_$$_MEM],rax
..@j637:
		cmp	qword [U_$SYSTEM_$$_SYS],0
		jne	..@j639
		mov	edx,1
		lea	rcx,[VMT_$SYSTEM_$$_TSYSTEM]
		call	SYSTEM$_$TSYSTEM_$__$$_CREATE$$TSYSTEM
		mov	qword [U_$SYSTEM_$$_SYS],rax
..@j639:
		nop
		lea	rsp,[rsp+40]
		ret
..@c439:

SECTION .text
	GLOBAL SYSTEM_$$_DONESYSTEM
SYSTEM_$$_DONESYSTEM:
..@c441:
		lea	rsp,[rsp-40]
..@c443:
		cmp	qword [U_$SYSTEM_$$_SYS],0
		je	..@j643
		mov	rax,qword [U_$SYSTEM_$$_SYS]
		mov	rdx,qword [U_$SYSTEM_$$_SYS]
		mov	rdx,qword [rdx]
		mov	rcx,rax
		call	[rdx+160]
..@j643:
		cmp	qword [U_$SYSTEM_$$_MEM],0
		je	..@j645
		mov	rcx,qword [U_$SYSTEM_$$_MEM]
		call	SYSTEM$_$TMEMORY_$__$$_FREE
..@j645:
		nop
		lea	rsp,[rsp+40]
		ret
..@c442:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEM_$__$$_CREATE$$TSYSTEM
SYSTEM$_$TSYSTEM_$__$$_CREATE$$TSYSTEM:
..@c444:
		push	rbp
..@c446:
..@c447:
		mov	rbp,rsp
..@c448:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j649
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+128]
		mov	qword [rbp-16],rax
..@j649:
		cmp	qword [rbp-16],0
		je	..@j646
..@j657:
		nop
..@j656:
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
		je	..@j654
		cmp	qword [rbp-8],0
		je	..@j654
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+168]
		jmp	..@j654
..@j653:
		cmp	qword [rbp-8],0
		je	..@j663
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSTEM$_$TSYSTEM_$__$$_DESTROY
..@j663:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j664:
		nop
..@j654:
..@j646:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c445:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEM_$__$$_DESTROY
SYSTEM$_$TSYSTEM_$__$$_DESTROY:
..@c449:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c451:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j668
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+176]
..@j668:
		cmp	qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS],0
		je	..@j670
		mov	rcx,qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS]
		call	SYSTEM$_$TMEMORY_$__$$_FREE
		mov	qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS],0
..@j670:
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j672
		test	rsi,rsi
		je	..@j672
		mov	rcx,qword [rbx]
		mov	rax,qword [rbx]
		call	[rax+136]
..@j672:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c450:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEM_$__$$_GETMEMORY$$TMEMORY
SYSTEM$_$TSYSTEM_$__$$_GETMEMORY$$TMEMORY:
..@c452:
		lea	rsp,[rsp-40]
..@c454:
		cmp	qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS],0
		jne	..@j677
		mov	edx,1
		lea	rcx,[VMT_$SYSTEM_$$_TMEMORY]
		call	SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY
		mov	qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS],rax
..@j677:
		mov	rax,qword [U_$SYSTEM_$$__static_tsystem_FMEMCLASS]
		nop
		lea	rsp,[rsp+40]
		ret
..@c453:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEM_$__$$_CLASSNAME$$ANSISTRING
SYSTEM$_$TSYSTEM_$__$$_CLASSNAME$$ANSISTRING:
..@c455:
		lea	rsp,[rsp-40]
..@c457:
		mov	rax,rcx
		mov	rcx,rdx
		lea	rdx,[..@d35]
		call	fpc_ansistr_assign
		nop
		lea	rsp,[rsp+40]
		ret
..@c456:

SECTION .text
	GLOBAL SYSTEM$_$TSYSTEM_$__$$_CLASSPARENT$$TOBJECT
SYSTEM$_$TSYSTEM_$__$$_CLASSPARENT$$TOBJECT:
..@c458:
		mov	rax,qword [U_$SYSTEM_$$__static_tsystem_FCLASSPARENT]
		ret
..@c459:

SECTION .text
	GLOBAL SYSTEM$_$TMEMORY_$__$$_GETPARENT$$TOBJECT
SYSTEM$_$TMEMORY_$__$$_GETPARENT$$TOBJECT:
..@c460:
		mov	rax,qword [U_$SYSTEM_$$__static_tmemory_FCLASSPARENT]
		ret
..@c461:
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION .bss
	ALIGNB 8
	GLOBAL U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE
U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE:	RESB	8

SECTION .bss
	ALIGNB 8
	GLOBAL U_$SYSTEM_$$_DOS
U_$SYSTEM_$$_DOS:	RESB	8

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
	ALIGNB 8
	GLOBAL U_$SYSTEM_$$_MEM
U_$SYSTEM_$$_MEM:	RESB	8

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

SECTION .bss
	GLOBAL U_$SYSTEM_$$__static_tsystem_FDOSCLASS
U_$SYSTEM_$$__static_tsystem_FDOSCLASS:	RESB	8

SECTION .bss
	ALIGNB 8
	GLOBAL U_$SYSTEM_$$_SYS
U_$SYSTEM_$$_SYS:	RESB	8

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TOBJECT
VMT_$SYSTEM_$$_TOBJECT	DQ	8,-8,0,..@d36,0,0,0,RTTI_$SYSTEM_$$_TOBJECT,0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING,SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_FREE,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TLIST
VMT_$SYSTEM_$$_TLIST	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d37,0,0,0,RTTI_$SYSTEM_$$_TLIST,0
	DQ	0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_FREE,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TDOSCMD
VMT_$SYSTEM_$$_TDOSCMD	DQ	40,-40,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d38,0,0,0,RTTI_$SYSTEM_$$_TDOSCMD
	DQ	INIT_$SYSTEM_$$_TDOSCMD,0,0,0,SYSTEM$_$TDOSCMD_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_FREE,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD
	DQ	SYSTEM$_$TDOSCMD_$__$$_FREE,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_WINDOWS_CLASS
VMT_$SYSTEM_$$_WINDOWS_CLASS	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d39,0,0,0,RTTI_$SYSTEM_$$_WINDOWS_CLASS
	DQ	0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_FREE,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD
	DQ	SYSTEM$_$WINDOWS_CLASS_$__$$_FREE,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TCPU
VMT_$SYSTEM_$$_TCPU	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d40,0,0,0,RTTI_$SYSTEM_$$_TCPU,0,0
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
VMT_$SYSTEM_$$_TMEMORY	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d41,0,0,0,RTTI_$SYSTEM_$$_TMEMORY
	DQ	0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_FREE,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD
	DQ	SYSTEM$_$TMEMORY_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TMEMORY_$__$$_CLASSNAME$$ANSISTRING
	DQ	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TSYSTEM
VMT_$SYSTEM_$$_TSYSTEM	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d42,0,0,0,RTTI_$SYSTEM_$$_TSYSTEM
	DQ	0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_FREE,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD
	DQ	SYSTEM$_$TSYSTEM_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TSYSTEM_$__$$_CLASSNAME$$ANSISTRING
	DQ	0
; End asmlist al_globals
; Begin asmlist al_const

SECTION .data
	ALIGN 8,DB 0
..@d36:
	DB	7
		DB	"TObject"

SECTION .data
	ALIGN 8,DB 0
..@d37:
	DB	5
		DB	"TList"

SECTION .data
	ALIGN 8,DB 0
..@d38:
	DB	7
		DB	"TDosCmd"

SECTION .data
	ALIGN 8,DB 0
..@d39:
	DB	13
		DB	"Windows_Class"

SECTION .data
	ALIGN 8,DB 0
..@d40:
	DB	4
		DB	"TCPU"

SECTION .data
	ALIGN 8,DB 0
..@d41:
	DB	7
		DB	"TMemory"

SECTION .data
	ALIGN 8,DB 0
..@d42:
	DB	7
		DB	"TSystem"
; End asmlist al_const
; Begin asmlist al_typedconsts

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
		DB	0

SECTION .rodata
_$SYSTEM$_Ld7:
		DB	"Error: fpc_AnsiStr_Assign memory allocation fail.",0

SECTION .rodata
_$SYSTEM$_Ld8:
		DB	"Error: fpc_AnsiStr_Concat memory allocation fail.",0

SECTION .rodata
_$SYSTEM$_Ld9:
		DB	"dddddddd",0

SECTION .rodata
_$SYSTEM$_Ld10:
		DB	"ddddddd",0

SECTION .rodata
_$SYSTEM$_Ld11:
		DB	"Information",0

SECTION .rodata
_$SYSTEM$_Ld12:
		DB	"Warning",0

SECTION .rodata
_$SYSTEM$_Ld13:
		DB	"File can not be lock.",0

SECTION .rodata
_$SYSTEM$_Ld14:
		DB	"pacher",0

SECTION .rodata
_$SYSTEM$_Ld15:
		DB	"File: ",34,0

SECTION .rodata
_$SYSTEM$_Ld16:
		DB	34," already exists.\n",0

SECTION .rodata
_$SYSTEM$_Ld17:
		DB	"Would you like override it ?",0

SECTION .rodata
_$SYSTEM$_Ld18:
		DB	"file could not be created !",0

SECTION .rodata
_$SYSTEM$_Ld19:
		DB	"file not delete",0

SECTION .rodata
_$SYSTEM$_Ld20:
		DB	34," could not be open.",0

SECTION .rodata
_$SYSTEM$_Ld21:
		DB	"SetFilePointer() failed.",0

SECTION .rodata
..@d22$strlab:
	DW	0,1
	DD	0
	DQ	-1,7
..@d22:
		DB	"TObject",0

SECTION .rodata
_$SYSTEM$_Ld23:
		DB	"Error: instance is not allocated.",0

SECTION .rodata
_$SYSTEM$_Ld24:
		DB	"internal Error.",0

SECTION .rodata
..@d25$strlab:
	DW	0,1
	DD	0
	DQ	-1,2
..@d25:
		DB	13,10,0

SECTION .rodata
_$SYSTEM$_Ld26:
		DB	"Message: %s",0

SECTION .rodata
_$SYSTEM$_Ld27:
		DB	"Title  : %s",0

SECTION .rodata
_$SYSTEM$_Ld28:
		DB	"%s",0

SECTION .rodata
_$SYSTEM$_Ld29:
		DB	"%s",13,10,0

SECTION .rodata
..@d30$strlab:
	DW	0,1
	DD	0
	DQ	-1,1
..@d30:
		DB	" ",0

SECTION .rodata
..@d31$strlab:
	DW	0,1
	DD	0
	DQ	-1,4
..@d31:
		DB	"gugu",0

SECTION .rodata
..@d32$strlab:
	DW	0,1
	DD	0
	DQ	-1,4
..@d32:
		DB	"TCPU",0

SECTION .rodata
_$SYSTEM$_Ld33:
		DB	"Error: could not allocate memory.",0

SECTION .rodata
..@d34$strlab:
	DW	0,1
	DD	0
	DQ	-1,7
..@d34:
		DB	"TMemory",0

SECTION .rodata
..@d35$strlab:
	DW	0,1
	DD	0
	DQ	-1,7
..@d35:
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
	GLOBAL INIT_$SYSTEM_$$_TDOSIO
INIT_$SYSTEM_$$_TDOSIO	DB	13,6
		DB	"TDosIO"
	DQ	0
	DD	0
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TDOSIO
RTTI_$SYSTEM_$$_TDOSIO	DB	13,6
		DB	"TDosIO"
	DQ	INIT_$SYSTEM_$$_TDOSIO
	DD	0,0

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
	GLOBAL INIT_$SYSTEM_$$_TDOSIO$indirect
INIT_$SYSTEM_$$_TDOSIO$indirect	DQ	INIT_$SYSTEM_$$_TDOSIO

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TDOSIO$indirect
RTTI_$SYSTEM_$$_TDOSIO$indirect	DQ	RTTI_$SYSTEM_$$_TDOSIO

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
..@c462:
	DD	..@c464-..@c463
..@c463:
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
..@c464:
	DD	..@c466-..@c465
..@c465:
	DQ	..@c1,..@c2-..@c1
	DB	4
	DD	..@c3-..@c1
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c466:
	DD	..@c468-..@c467
..@c467:
	DQ	..@c4,..@c5-..@c4
	ALIGN 4,DB 0
..@c468:
	DD	..@c470-..@c469
..@c469:
	DQ	..@c6,..@c7-..@c6
	ALIGN 4,DB 0
..@c470:
	DD	..@c472-..@c471
..@c471:
	DQ	..@c8,..@c9-..@c8
	ALIGN 4,DB 0
..@c472:
	DD	..@c474-..@c473
..@c473:
	DQ	..@c10,..@c11-..@c10
	ALIGN 4,DB 0
..@c474:
	DD	..@c476-..@c475
..@c475:
	DQ	..@c12,..@c13-..@c12
	ALIGN 4,DB 0
..@c476:
	DD	..@c478-..@c477
..@c477:
	DQ	..@c14,..@c15-..@c14
	DB	4
	DD	..@c16-..@c14
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c478:
	DD	..@c480-..@c479
..@c479:
	DQ	..@c17,..@c18-..@c17
	ALIGN 4,DB 0
..@c480:
	DD	..@c482-..@c481
..@c481:
	DQ	..@c19,..@c20-..@c19
	ALIGN 4,DB 0
..@c482:
	DD	..@c484-..@c483
..@c483:
	DQ	..@c21,..@c22-..@c21
	DB	4
	DD	..@c23-..@c21
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c484:
	DD	..@c486-..@c485
..@c485:
	DQ	..@c24,..@c25-..@c24
	ALIGN 4,DB 0
..@c486:
	DD	..@c488-..@c487
..@c487:
	DQ	..@c26,..@c27-..@c26
	ALIGN 4,DB 0
..@c488:
	DD	..@c490-..@c489
..@c489:
	DQ	..@c28,..@c29-..@c28
	ALIGN 4,DB 0
..@c490:
	DD	..@c492-..@c491
..@c491:
	DQ	..@c30,..@c31-..@c30
	ALIGN 4,DB 0
..@c492:
	DD	..@c494-..@c493
..@c493:
	DQ	..@c32,..@c33-..@c32
	DB	4
	DD	..@c34-..@c32
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c494:
	DD	..@c496-..@c495
..@c495:
	DQ	..@c35,..@c36-..@c35
	ALIGN 4,DB 0
..@c496:
	DD	..@c498-..@c497
..@c497:
	DQ	..@c37,..@c38-..@c37
	DB	4
	DD	..@c39-..@c37
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c498:
	DD	..@c500-..@c499
..@c499:
	DQ	..@c40,..@c41-..@c40
	DB	4
	DD	..@c42-..@c40
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c43-..@c42
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c44-..@c43
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c500:
	DD	..@c502-..@c501
..@c501:
	DQ	..@c45,..@c46-..@c45
	DB	4
	DD	..@c47-..@c45
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c48-..@c47
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c49-..@c48
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c502:
	DD	..@c504-..@c503
..@c503:
	DQ	..@c50,..@c51-..@c50
	DB	4
	DD	..@c52-..@c50
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c504:
	DD	..@c506-..@c505
..@c505:
	DQ	..@c53,..@c54-..@c53
	DB	4
	DD	..@c55-..@c53
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c506:
	DD	..@c508-..@c507
..@c507:
	DQ	..@c56,..@c57-..@c56
	DB	4
	DD	..@c58-..@c56
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c508:
	DD	..@c510-..@c509
..@c509:
	DQ	..@c59,..@c60-..@c59
	ALIGN 4,DB 0
..@c510:
	DD	..@c512-..@c511
..@c511:
	DQ	..@c61,..@c62-..@c61
	ALIGN 4,DB 0
..@c512:
	DD	..@c514-..@c513
..@c513:
	DQ	..@c63,..@c64-..@c63
	ALIGN 4,DB 0
..@c514:
	DD	..@c516-..@c515
..@c515:
	DQ	..@c65,..@c66-..@c65
	DB	4
	DD	..@c67-..@c65
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c516:
	DD	..@c518-..@c517
..@c517:
	DQ	..@c68,..@c69-..@c68
	ALIGN 4,DB 0
..@c518:
	DD	..@c520-..@c519
..@c519:
	DQ	..@c70,..@c71-..@c70
	ALIGN 4,DB 0
..@c520:
	DD	..@c522-..@c521
..@c521:
	DQ	..@c72,..@c73-..@c72
	ALIGN 4,DB 0
..@c522:
	DD	..@c524-..@c523
..@c523:
	DQ	..@c74,..@c75-..@c74
	DB	4
	DD	..@c76-..@c74
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c524:
	DD	..@c526-..@c525
..@c525:
	DQ	..@c77,..@c78-..@c77
	ALIGN 4,DB 0
..@c526:
	DD	..@c528-..@c527
..@c527:
	DQ	..@c79,..@c80-..@c79
	ALIGN 4,DB 0
..@c528:
	DD	..@c530-..@c529
..@c529:
	DQ	..@c81,..@c82-..@c81
	ALIGN 4,DB 0
..@c530:
	DD	..@c532-..@c531
..@c531:
	DQ	..@c83,..@c84-..@c83
	ALIGN 4,DB 0
..@c532:
	DD	..@c534-..@c533
..@c533:
	DQ	..@c85,..@c86-..@c85
	DB	4
	DD	..@c87-..@c85
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c534:
	DD	..@c536-..@c535
..@c535:
	DQ	..@c88,..@c89-..@c88
	DB	4
	DD	..@c90-..@c88
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c536:
	DD	..@c538-..@c537
..@c537:
	DQ	..@c91,..@c92-..@c91
	DB	4
	DD	..@c93-..@c91
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c538:
	DD	..@c540-..@c539
..@c539:
	DQ	..@c94,..@c95-..@c94
	DB	4
	DD	..@c96-..@c94
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c540:
	DD	..@c542-..@c541
..@c541:
	DQ	..@c97,..@c98-..@c97
	DB	4
	DD	..@c99-..@c97
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c542:
	DD	..@c544-..@c543
..@c543:
	DQ	..@c100,..@c101-..@c100
	ALIGN 4,DB 0
..@c544:
	DD	..@c546-..@c545
..@c545:
	DQ	..@c102,..@c103-..@c102
	DB	4
	DD	..@c104-..@c102
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c546:
	DD	..@c548-..@c547
..@c547:
	DQ	..@c105,..@c106-..@c105
	DB	4
	DD	..@c107-..@c105
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c548:
	DD	..@c550-..@c549
..@c549:
	DQ	..@c108,..@c109-..@c108
	DB	4
	DD	..@c110-..@c108
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c550:
	DD	..@c552-..@c551
..@c551:
	DQ	..@c111,..@c112-..@c111
	DB	4
	DD	..@c113-..@c111
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c552:
	DD	..@c554-..@c553
..@c553:
	DQ	..@c114,..@c115-..@c114
	DB	4
	DD	..@c116-..@c114
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c554:
	DD	..@c556-..@c555
..@c555:
	DQ	..@c117,..@c118-..@c117
	DB	4
	DD	..@c119-..@c117
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c556:
	DD	..@c558-..@c557
..@c557:
	DQ	..@c120,..@c121-..@c120
	DB	4
	DD	..@c122-..@c120
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c558:
	DD	..@c560-..@c559
..@c559:
	DQ	..@c123,..@c124-..@c123
	DB	4
	DD	..@c125-..@c123
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c560:
	DD	..@c562-..@c561
..@c561:
	DQ	..@c126,..@c127-..@c126
	DB	4
	DD	..@c128-..@c126
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c562:
	DD	..@c564-..@c563
..@c563:
	DQ	..@c129,..@c130-..@c129
	DB	4
	DD	..@c131-..@c129
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c564:
	DD	..@c566-..@c565
..@c565:
	DQ	..@c132,..@c133-..@c132
	DB	4
	DD	..@c134-..@c132
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c566:
	DD	..@c568-..@c567
..@c567:
	DQ	..@c135,..@c136-..@c135
	DB	4
	DD	..@c137-..@c135
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c568:
	DD	..@c570-..@c569
..@c569:
	DQ	..@c138,..@c139-..@c138
	DB	4
	DD	..@c140-..@c138
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c141-..@c140
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c142-..@c141
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c570:
	DD	..@c572-..@c571
..@c571:
	DQ	..@c143,..@c144-..@c143
	DB	4
	DD	..@c145-..@c143
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c572:
	DD	..@c574-..@c573
..@c573:
	DQ	..@c146,..@c147-..@c146
	ALIGN 4,DB 0
..@c574:
	DD	..@c576-..@c575
..@c575:
	DQ	..@c148,..@c149-..@c148
	ALIGN 4,DB 0
..@c576:
	DD	..@c578-..@c577
..@c577:
	DQ	..@c150,..@c151-..@c150
	DB	4
	DD	..@c152-..@c150
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c578:
	DD	..@c580-..@c579
..@c579:
	DQ	..@c153,..@c154-..@c153
	DB	4
	DD	..@c155-..@c153
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c580:
	DD	..@c582-..@c581
..@c581:
	DQ	..@c156,..@c157-..@c156
	ALIGN 4,DB 0
..@c582:
	DD	..@c584-..@c583
..@c583:
	DQ	..@c158,..@c159-..@c158
	DB	4
	DD	..@c160-..@c158
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c584:
	DD	..@c586-..@c585
..@c585:
	DQ	..@c161,..@c162-..@c161
	DB	4
	DD	..@c163-..@c161
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c586:
	DD	..@c588-..@c587
..@c587:
	DQ	..@c164,..@c165-..@c164
	ALIGN 4,DB 0
..@c588:
	DD	..@c590-..@c589
..@c589:
	DQ	..@c166,..@c167-..@c166
	DB	4
	DD	..@c168-..@c166
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c590:
	DD	..@c592-..@c591
..@c591:
	DQ	..@c169,..@c170-..@c169
	ALIGN 4,DB 0
..@c592:
	DD	..@c594-..@c593
..@c593:
	DQ	..@c171,..@c172-..@c171
	ALIGN 4,DB 0
..@c594:
	DD	..@c596-..@c595
..@c595:
	DQ	..@c173,..@c174-..@c173
	ALIGN 4,DB 0
..@c596:
	DD	..@c598-..@c597
..@c597:
	DQ	..@c175,..@c176-..@c175
	DB	4
	DD	..@c177-..@c175
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c178-..@c177
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c179-..@c178
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c598:
	DD	..@c600-..@c599
..@c599:
	DQ	..@c180,..@c181-..@c180
	DB	4
	DD	..@c182-..@c180
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c600:
	DD	..@c602-..@c601
..@c601:
	DQ	..@c183,..@c184-..@c183
	ALIGN 4,DB 0
..@c602:
	DD	..@c604-..@c603
..@c603:
	DQ	..@c185,..@c186-..@c185
	DB	4
	DD	..@c187-..@c185
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c604:
	DD	..@c606-..@c605
..@c605:
	DQ	..@c188,..@c189-..@c188
	ALIGN 4,DB 0
..@c606:
	DD	..@c608-..@c607
..@c607:
	DQ	..@c190,..@c191-..@c190
	DB	4
	DD	..@c192-..@c190
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c193-..@c192
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c194-..@c193
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c608:
	DD	..@c610-..@c609
..@c609:
	DQ	..@c195,..@c196-..@c195
	DB	4
	DD	..@c197-..@c195
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c610:
	DD	..@c612-..@c611
..@c611:
	DQ	..@c198,..@c199-..@c198
	DB	4
	DD	..@c200-..@c198
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c612:
	DD	..@c614-..@c613
..@c613:
	DQ	..@c201,..@c202-..@c201
	ALIGN 4,DB 0
..@c614:
	DD	..@c616-..@c615
..@c615:
	DQ	..@c203,..@c204-..@c203
	DB	4
	DD	..@c205-..@c203
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c616:
	DD	..@c618-..@c617
..@c617:
	DQ	..@c206,..@c207-..@c206
	DB	4
	DD	..@c208-..@c206
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c618:
	DD	..@c620-..@c619
..@c619:
	DQ	..@c209,..@c210-..@c209
	DB	4
	DD	..@c211-..@c209
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c212-..@c211
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c213-..@c212
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c620:
	DD	..@c622-..@c621
..@c621:
	DQ	..@c214,..@c215-..@c214
	DB	4
	DD	..@c216-..@c214
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c217-..@c216
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c218-..@c217
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c622:
	DD	..@c624-..@c623
..@c623:
	DQ	..@c219,..@c220-..@c219
	DB	4
	DD	..@c221-..@c219
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c624:
	DD	..@c626-..@c625
..@c625:
	DQ	..@c222,..@c223-..@c222
	DB	4
	DD	..@c224-..@c222
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c626:
	DD	..@c628-..@c627
..@c627:
	DQ	..@c225,..@c226-..@c225
	DB	4
	DD	..@c227-..@c225
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c228-..@c227
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c229-..@c228
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c628:
	DD	..@c630-..@c629
..@c629:
	DQ	..@c230,..@c231-..@c230
	DB	4
	DD	..@c232-..@c230
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c233-..@c232
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c234-..@c233
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c630:
	DD	..@c632-..@c631
..@c631:
	DQ	..@c235,..@c236-..@c235
	DB	4
	DD	..@c237-..@c235
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c632:
	DD	..@c634-..@c633
..@c633:
	DQ	..@c238,..@c239-..@c238
	DB	4
	DD	..@c240-..@c238
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c241-..@c240
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c242-..@c241
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c634:
	DD	..@c636-..@c635
..@c635:
	DQ	..@c243,..@c244-..@c243
	DB	4
	DD	..@c245-..@c243
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c246-..@c245
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c247-..@c246
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c636:
	DD	..@c638-..@c637
..@c637:
	DQ	..@c248,..@c249-..@c248
	DB	4
	DD	..@c250-..@c248
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c638:
	DD	..@c640-..@c639
..@c639:
	DQ	..@c251,..@c252-..@c251
	DB	4
	DD	..@c253-..@c251
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c640:
	DD	..@c642-..@c641
..@c641:
	DQ	..@c254,..@c255-..@c254
	DB	4
	DD	..@c256-..@c254
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c642:
	DD	..@c644-..@c643
..@c643:
	DQ	..@c257,..@c258-..@c257
	DB	4
	DD	..@c259-..@c257
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c644:
	DD	..@c646-..@c645
..@c645:
	DQ	..@c260,..@c261-..@c260
	DB	4
	DD	..@c262-..@c260
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c646:
	DD	..@c648-..@c647
..@c647:
	DQ	..@c263,..@c264-..@c263
	DB	4
	DD	..@c265-..@c263
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c648:
	DD	..@c650-..@c649
..@c649:
	DQ	..@c266,..@c267-..@c266
	DB	4
	DD	..@c268-..@c266
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c650:
	DD	..@c652-..@c651
..@c651:
	DQ	..@c269,..@c270-..@c269
	DB	4
	DD	..@c271-..@c269
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c272-..@c271
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c273-..@c272
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c652:
	DD	..@c654-..@c653
..@c653:
	DQ	..@c274,..@c275-..@c274
	DB	4
	DD	..@c276-..@c274
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c277-..@c276
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c278-..@c277
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c654:
	DD	..@c656-..@c655
..@c655:
	DQ	..@c279,..@c280-..@c279
	DB	4
	DD	..@c281-..@c279
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c282-..@c281
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c283-..@c282
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c656:
	DD	..@c658-..@c657
..@c657:
	DQ	..@c284,..@c285-..@c284
	DB	4
	DD	..@c286-..@c284
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c287-..@c286
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c288-..@c287
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c658:
	DD	..@c660-..@c659
..@c659:
	DQ	..@c289,..@c290-..@c289
	DB	4
	DD	..@c291-..@c289
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c660:
	DD	..@c662-..@c661
..@c661:
	DQ	..@c292,..@c293-..@c292
	DB	4
	DD	..@c294-..@c292
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c662:
	DD	..@c664-..@c663
..@c663:
	DQ	..@c295,..@c296-..@c295
	DB	4
	DD	..@c297-..@c295
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c664:
	DD	..@c666-..@c665
..@c665:
	DQ	..@c298,..@c299-..@c298
	DB	4
	DD	..@c300-..@c298
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c301-..@c300
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c302-..@c301
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c666:
	DD	..@c668-..@c667
..@c667:
	DQ	..@c303,..@c304-..@c303
	DB	4
	DD	..@c305-..@c303
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c306-..@c305
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c307-..@c306
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c668:
	DD	..@c670-..@c669
..@c669:
	DQ	..@c308,..@c309-..@c308
	DB	4
	DD	..@c310-..@c308
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c670:
	DD	..@c672-..@c671
..@c671:
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
..@c672:
	DD	..@c674-..@c673
..@c673:
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
..@c674:
	DD	..@c676-..@c675
..@c675:
	DQ	..@c321,..@c322-..@c321
	DB	4
	DD	..@c323-..@c321
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c676:
	DD	..@c678-..@c677
..@c677:
	DQ	..@c324,..@c325-..@c324
	DB	4
	DD	..@c326-..@c324
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c678:
	DD	..@c680-..@c679
..@c679:
	DQ	..@c327,..@c328-..@c327
	DB	4
	DD	..@c329-..@c327
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c680:
	DD	..@c682-..@c681
..@c681:
	DQ	..@c330,..@c331-..@c330
	DB	4
	DD	..@c332-..@c330
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c333-..@c332
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c334-..@c333
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c682:
	DD	..@c684-..@c683
..@c683:
	DQ	..@c335,..@c336-..@c335
	DB	4
	DD	..@c337-..@c335
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c684:
	DD	..@c686-..@c685
..@c685:
	DQ	..@c338,..@c339-..@c338
	DB	4
	DD	..@c340-..@c338
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c686:
	DD	..@c688-..@c687
..@c687:
	DQ	..@c341,..@c342-..@c341
	DB	4
	DD	..@c343-..@c341
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c344-..@c343
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c345-..@c344
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c688:
	DD	..@c690-..@c689
..@c689:
	DQ	..@c346,..@c347-..@c346
	DB	4
	DD	..@c348-..@c346
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c349-..@c348
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c350-..@c349
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c690:
	DD	..@c692-..@c691
..@c691:
	DQ	..@c351,..@c352-..@c351
	DB	4
	DD	..@c353-..@c351
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c354-..@c353
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c355-..@c354
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c692:
	DD	..@c694-..@c693
..@c693:
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
..@c694:
	DD	..@c696-..@c695
..@c695:
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
..@c696:
	DD	..@c698-..@c697
..@c697:
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
..@c698:
	DD	..@c700-..@c699
..@c699:
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
..@c700:
	DD	..@c702-..@c701
..@c701:
	DQ	..@c376,..@c377-..@c376
	DB	4
	DD	..@c378-..@c376
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c379-..@c378
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c380-..@c379
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c702:
	DD	..@c704-..@c703
..@c703:
	DQ	..@c381,..@c382-..@c381
	DB	4
	DD	..@c383-..@c381
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c704:
	DD	..@c706-..@c705
..@c705:
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
..@c706:
	DD	..@c708-..@c707
..@c707:
	DQ	..@c389,..@c390-..@c389
	DB	4
	DD	..@c391-..@c389
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c708:
	DD	..@c710-..@c709
..@c709:
	DQ	..@c392,..@c393-..@c392
	DB	4
	DD	..@c394-..@c392
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c710:
	DD	..@c712-..@c711
..@c711:
	DQ	..@c395,..@c396-..@c395
	DB	4
	DD	..@c397-..@c395
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c712:
	DD	..@c714-..@c713
..@c713:
	DQ	..@c398,..@c399-..@c398
	ALIGN 4,DB 0
..@c714:
	DD	..@c716-..@c715
..@c715:
	DQ	..@c400,..@c401-..@c400
	DB	4
	DD	..@c402-..@c400
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c403-..@c402
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c404-..@c403
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c716:
	DD	..@c718-..@c717
..@c717:
	DQ	..@c405,..@c406-..@c405
	DB	4
	DD	..@c407-..@c405
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c408-..@c407
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c409-..@c408
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c718:
	DD	..@c720-..@c719
..@c719:
	DQ	..@c410,..@c411-..@c410
	DB	4
	DD	..@c412-..@c410
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c413-..@c412
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c414-..@c413
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c720:
	DD	..@c722-..@c721
..@c721:
	DQ	..@c415,..@c416-..@c415
	DB	4
	DD	..@c417-..@c415
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c418-..@c417
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c419-..@c418
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c722:
	DD	..@c724-..@c723
..@c723:
	DQ	..@c420,..@c421-..@c420
	DB	4
	DD	..@c422-..@c420
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c724:
	DD	..@c726-..@c725
..@c725:
	DQ	..@c423,..@c424-..@c423
	DB	4
	DD	..@c425-..@c423
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c726:
	DD	..@c728-..@c727
..@c727:
	DQ	..@c426,..@c427-..@c426
	DB	4
	DD	..@c428-..@c426
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c728:
	DD	..@c730-..@c729
..@c729:
	DQ	..@c429,..@c430-..@c429
	DB	4
	DD	..@c431-..@c429
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c730:
	DD	..@c732-..@c731
..@c731:
	DQ	..@c432,..@c433-..@c432
	DB	4
	DD	..@c434-..@c432
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c732:
	DD	..@c734-..@c733
..@c733:
	DQ	..@c435,..@c436-..@c435
	DB	4
	DD	..@c437-..@c435
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c734:
	DD	..@c736-..@c735
..@c735:
	DQ	..@c438,..@c439-..@c438
	DB	4
	DD	..@c440-..@c438
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c736:
	DD	..@c738-..@c737
..@c737:
	DQ	..@c441,..@c442-..@c441
	DB	4
	DD	..@c443-..@c441
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c738:
	DD	..@c740-..@c739
..@c739:
	DQ	..@c444,..@c445-..@c444
	DB	4
	DD	..@c446-..@c444
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c447-..@c446
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c448-..@c447
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c740:
	DD	..@c742-..@c741
..@c741:
	DQ	..@c449,..@c450-..@c449
	DB	4
	DD	..@c451-..@c449
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c742:
	DD	..@c744-..@c743
..@c743:
	DQ	..@c452,..@c453-..@c452
	DB	4
	DD	..@c454-..@c452
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c744:
	DD	..@c746-..@c745
..@c745:
	DQ	..@c455,..@c456-..@c455
	DB	4
	DD	..@c457-..@c455
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c746:
	DD	..@c748-..@c747
..@c747:
	DQ	..@c458,..@c459-..@c458
	ALIGN 4,DB 0
..@c748:
	DD	..@c750-..@c749
..@c749:
	DQ	..@c460,..@c461-..@c460
	ALIGN 4,DB 0
..@c750:
; End asmlist al_dwarf_frame

