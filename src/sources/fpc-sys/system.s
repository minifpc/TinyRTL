BITS 64
default rel
CPU x64

EXTERN	_$dll$user32$MessageBoxA
EXTERN	_$dll$kernel32$VirtualAlloc
EXTERN	_$dll$kernel32$ExitProcess
EXTERN	_$dll$kernel32$HeapCreate
EXTERN	_$dll$kernel32$LocalAlloc
EXTERN	_$dll$kernel32$LocalFree
EXTERN	_$dll$ucrtbase$strcpy
EXTERN	_$dll$kernel32$lstrlenA
EXTERN	_$dll$ucrtbase$strcat
EXTERN	_$dll$kernel32$GetACP
EXTERN	_$dll$kernel32$LockFile
EXTERN	_$dll$kernel32$WriteFile
EXTERN	_$dll$shlwapi$PathFileExistsA
EXTERN	_$dll$kernel32$GetLastError
EXTERN	_$dll$kernel32$DeleteFileA
EXTERN	_$dll$kernel32$CreateFileA
EXTERN	_$dll$kernel32$SetFilePointer
; Begin asmlist al_pure_assembler

SECTION .text
	GLOBAL SYSTEM_$$_MOVE$formal$formal$LONGDWORD
SYSTEM_$$_MOVE$formal$formal$LONGDWORD:
	GLOBAL FPC_move
FPC_move:
..@c80:
CPU x64

		mov	rax,r8
		sub	rcx,rdx
		jz	..@j99
		jnb	..@j100
		add	rax,rcx
		jb	..@j101
..@j100:
		cmp	r8,8
		jl	..@j102
		test	dl,7
		je	..@j103
		test	dl,1
		je	..@j104
		mov	al,byte [rcx+rdx*1]
		dec	r8
		mov	byte [rdx],al
		add	rdx,1
..@j104:
		test	dl,2
		je	..@j105
		mov	ax,word [rcx+rdx*1]
		sub	r8,2
		mov	word [rdx],ax
		add	rdx,2
..@j105:
		test	dl,4
		je	..@j103
		mov	eax,dword [rcx+rdx*1]
		sub	r8,4
		mov	dword [rdx],eax
		add	rdx,4
..@j103:
		mov	r9,r8
		shr	r9,5
		jne	..@j106
..@j107:
		mov	r9,r8
		shr	r9,3
		je	..@j102
	ALIGN 16
..@j108:
		mov	rax,qword [rcx+rdx*1]
		mov	qword [rdx],rax
		add	rdx,8
		dec	r9
		jne	..@j108
		and	r8,7
..@j102:
		test	r8,r8
		jle	..@j99
	ALIGN 16
..@j109:
		mov	al,byte [rcx+rdx*1]
		mov	byte [rdx],al
		inc	rdx
		dec	r8
		jne	..@j109
..@j99:
		ret
..@j106:
		cmp	r9,8192
		jnae	..@j110
		cmp	rcx,4096
		jnb	..@j111
	ALIGN 16
..@j110:
		add	rdx,32
		mov	rax,qword [rcx+rdx*1-32]
		mov	r10,qword [rcx+rdx*1-24]
		mov	qword [rdx-32],rax
		mov	qword [rdx-24],r10
		dec	r9
		mov	rax,qword [rcx+rdx*1-16]
		mov	r10,qword [rcx+rdx*1-8]
		mov	qword [rdx-16],rax
		mov	qword [rdx-8],r10
		jne	..@j110
		and	r8,31
		jmp	..@j107
..@j111:
		mov	eax,32
	ALIGN 16
..@j112:
		prefetchnta	[rcx+rdx*1]
		prefetchnta	[rcx+rdx*1+64]
		add	rdx,128
		dec	eax
		jne	..@j112
		sub	rdx,4096
		mov	eax,64
	ALIGN 16
..@j113:
		add	rdx,64
		mov	r9,qword [rcx+rdx*1-64]
		mov	r10,qword [rcx+rdx*1-56]
		movnti	qword [rdx-64],r9
		movnti	qword [rdx-56],r10
		mov	r9,qword [rcx+rdx*1-48]
		mov	r10,qword [rcx+rdx*1-40]
		movnti	qword [rdx-48],r9
		movnti	qword [rdx-40],r10
		dec	eax
		mov	r9,qword [rcx+rdx*1-32]
		mov	r10,qword [rcx+rdx*1-24]
		movnti	qword [rdx-32],r9
		movnti	qword [rdx-24],r10
		mov	r9,qword [rcx+rdx*1-16]
		mov	r10,qword [rcx+rdx*1-8]
		movnti	qword [rdx-16],r9
		movnti	qword [rdx-8],r10
		jne	..@j113
		sub	r8,4096
		cmp	r8,4096
		jae	..@j111
		mfence
		jmp	..@j103
..@j101:
		add	rdx,r8
		cmp	r8,8
		jl	..@j114
		test	dl,7
		je	..@j115
		test	dl,1
		je	..@j116
		dec	rdx
		mov	al,byte [rcx+rdx*1]
		dec	r8
		mov	byte [rdx],al
..@j116:
		test	dl,2
		je	..@j117
		sub	rdx,2
		mov	ax,word [rcx+rdx*1]
		sub	r8,2
		mov	word [rdx],ax
..@j117:
		test	dl,4
		je	..@j115
		sub	rdx,4
		mov	eax,dword [rcx+rdx*1]
		sub	r8,4
		mov	dword [rdx],eax
..@j115:
		mov	r9,r8
		shr	r9,5
		jne	..@j118
..@j119:
		mov	r9,r8
		shr	r9,3
		je	..@j114
..@j120:
		sub	rdx,8
		mov	rax,qword [rcx+rdx*1]
		dec	r9
		mov	qword [rdx],rax
		jne	..@j120
		and	r8,7
..@j114:
		test	r8,r8
		jle	..@j121
	ALIGN 16
..@j122:
		dec	rdx
		mov	al,byte [rcx+rdx*1]
		dec	r8
		mov	byte [rdx],al
		jnz	..@j122
..@j121:
		ret
..@j118:
		cmp	r9,8192
		jnae	..@j123
		cmp	rcx,-4096
		jb	..@j124
	ALIGN 16
..@j123:
		sub	rdx,32
		mov	rax,qword [rcx+rdx*1+24]
		mov	r10,qword [rcx+rdx*1+16]
		mov	qword [rdx+24],rax
		mov	qword [rdx+16],r10
		dec	r9
		mov	rax,qword [rcx+rdx*1+8]
		mov	r10,qword [rcx+rdx*1]
		mov	qword [rdx+8],rax
		mov	qword [rdx],r10
		jne	..@j123
		and	r8,31
		jmp	..@j119
..@j124:
		mov	eax,32
	ALIGN 16
..@j125:
		sub	rdx,128
		prefetchnta	[rcx+rdx*1]
		prefetchnta	[rcx+rdx*1+64]
		dec	eax
		jnz	..@j125
		add	rdx,4096
		mov	eax,64
	ALIGN 16
..@j126:
		sub	rdx,64
		mov	r9,qword [rcx+rdx*1+56]
		mov	r10,qword [rcx+rdx*1+48]
		movnti	qword [rdx+56],r9
		movnti	qword [rdx+48],r10
		mov	r9,qword [rcx+rdx*1+40]
		mov	r10,qword [rcx+rdx*1+32]
		movnti	qword [rdx+40],r9
		movnti	qword [rdx+32],r10
		dec	eax
		mov	r9,qword [rcx+rdx*1+24]
		mov	r10,qword [rcx+rdx*1+16]
		movnti	qword [rdx+24],r9
		movnti	qword [rdx+16],r10
		mov	r9,qword [rcx+rdx*1+8]
		mov	r10,qword [rcx+rdx*1]
		movnti	qword [rdx+8],r9
		movnti	qword [rdx],r10
		jne	..@j126
		sub	r8,4096
		cmp	r8,4096
		jae	..@j124
		mfence
		jmp	..@j115
CPU x64

		ret
..@c81:
; End asmlist al_pure_assembler
; Begin asmlist al_procedures

SECTION .text
SYSTEM_$$_SIZEBYTE$$BYTE:
..@c1:
		mov	al,1
		movzx	eax,al
		ret
..@c2:

SECTION .text
SYSTEM_$$_SIZECHAR$$BYTE:
..@c3:
		mov	al,2
		movzx	eax,al
		ret
..@c4:

SECTION .text
SYSTEM_$$_SIZEWORD$$BYTE:
..@c5:
		mov	al,4
		movzx	eax,al
		ret
..@c6:

SECTION .text
SYSTEM_$$_SIZEDWORD$$BYTE:
..@c7:
		mov	al,8
		movzx	eax,al
		ret
..@c8:

SECTION .text
SYSTEM_$$_SIZEQWORD$$BYTE:
..@c9:
		mov	al,16
		movzx	eax,al
		ret
..@c10:

SECTION .text
	GLOBAL fpc_doneexception
fpc_doneexception:
	GLOBAL FPC_DONEEXCEPTION
FPC_DONEEXCEPTION:
..@c11:
		lea	rsp,[rsp-40]
..@c13:
		xor	eax,eax
		lea	r8,[_$SYSTEM$_Ld1]
		lea	rdx,[_$SYSTEM$_Ld2]
		xor	ecx,ecx
		mov	r9d,eax
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c12:

SECTION .text
	GLOBAL SYSTEM_$$_FPC_EMPTYMETHOD
SYSTEM_$$_FPC_EMPTYMETHOD:
	GLOBAL FPC_EMPTYMETHOD
FPC_EMPTYMETHOD:
..@c14:
		ret
..@c15:

SECTION .text
	GLOBAL fpc_copy_proc
fpc_copy_proc:
..@c16:
		mov	rax,rcx
		ret
..@c17:

SECTION .text
	GLOBAL fpc_emptychar
fpc_emptychar:
	GLOBAL FPC_EMPTYCHAR
FPC_EMPTYCHAR:
..@c18:
		push	rbx
		lea	rsp,[rsp-32]
..@c20:
		mov	rbx,rcx
		mov	r9d,4
		mov	r8d,12288
		mov	edx,1
		xor	ecx,ecx
		call	_$dll$kernel32$VirtualAlloc
		mov	qword [rbx],rax
		test	rax,rax
		je	..@j22
		mov	rcx,qword [rbx]
		xor	r8d,r8d
		mov	edx,1
		call	SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR
		mov	rdx,qword [rbx]
		mov	rcx,rax
		mov	r8d,1
		call	SYSTEM_$$_MOVE$formal$formal$LONGDWORD
		jmp	..@j23
..@j22:
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld4]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
..@j23:
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c19:

SECTION .text
	GLOBAL fpc_ansistr_decr_ref
fpc_ansistr_decr_ref:
	GLOBAL FPC_ANSISTR_DECR_REF
FPC_ANSISTR_DECR_REF:
..@c21:
		mov	rax,rcx
		ret
..@c22:

SECTION .text
	GLOBAL fpc_ansistr_incr_ref
fpc_ansistr_incr_ref:
	GLOBAL FPC_ANSISTR_INCR_REF
FPC_ANSISTR_INCR_REF:
..@c23:
		mov	rax,rcx
		ret
..@c24:

SECTION .text
	GLOBAL fpc_char_to_ansistr
fpc_char_to_ansistr:
..@c25:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c27:
		mov	bl,dl
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld5]
		lea	rdx,[_$SYSTEM$_Ld6]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		xor	r8d,r8d
		mov	edx,65535
		mov	ecx,1
		call	_$dll$kernel32$HeapCreate
		mov	rsi,rax
		test	esi,esi
		jne	..@j31
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld7]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		jmp	..@j28
..@j31:
		mov	edx,2
		mov	ecx,66
		call	_$dll$kernel32$LocalAlloc
		and	eax,eax
		mov	byte [rax],bl
		mov	byte [rax+1],0
		mov	ecx,esi
		call	_$dll$kernel32$LocalFree
..@j28:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c26:

SECTION .text
	GLOBAL fpc_ansistr_unique
fpc_ansistr_unique:
..@c28:
		mov	rax,qword [rcx]
		cmp	qword [rcx],0
		je	..@j32
		mov	rax,qword [rcx]
..@j32:
		ret
..@c29:

SECTION .text
SYSTEM_$$_PCHARTOANSISTRING$PCHAR$$ANSISTRING:
..@c30:
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c32:
		mov	rbx,rcx
		mov	rsi,rdx
		xor	edi,edi
		jmp	..@j39
..@j38:
		inc	rdi
..@j39:
		cmp	byte [rsi+rdi*1],0
		jne	..@j38
		mov	edx,edi
		mov	r9d,4
		mov	r8d,12288
		xor	ecx,ecx
		call	_$dll$kernel32$VirtualAlloc
		mov	qword [rbx],rax
		cmp	rdi,1
		jnae	..@j42
		xor	r12,r12
..@j43:
		inc	r12
		mov	rcx,rbx
		call	fpc_ansistr_unique
		mov	dl,byte [rsi+r12*1-1]
		mov	byte [rax+r12*1-1],dl
		cmp	rdi,r12
		jnbe	..@j43
..@j42:
		nop
		lea	rsp,[rsp+40]
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c31:

SECTION .text
SYSTEM$_$fpc_pchar_to_ansistr$PANSICHAR$$ANSISTRING_$$_fin$0000013A:
..@c33:
		push	rbp
..@c35:
..@c36:
		mov	rbp,rcx
..@c37:
		lea	rsp,[rsp-32]
		lea	rcx,[rbp-16]
		call	fpc_ansistr_decr_ref
		nop
		lea	rsp,[rsp+32]
		pop	rbp
		ret
..@c34:

SECTION .text
	GLOBAL fpc_pchar_to_ansistr
fpc_pchar_to_ansistr:
..@c38:
		push	rbp
..@c40:
..@c41:
		mov	rbp,rsp
..@c42:
		lea	rsp,[rsp-64]
		mov	qword [rbp-32],rbx
		mov	qword [rbp-24],rsi
		mov	rbx,rcx
		mov	rsi,rdx
		mov	qword [rbp-16],0
..@j54:
		nop
..@j50:
		lea	rax,[_$SYSTEM$_Ld8]
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
..@j52:
		nop
..@j51:
		mov	rcx,rbp
		call	SYSTEM$_$fpc_pchar_to_ansistr$PANSICHAR$$ANSISTRING_$$_fin$0000013A
		mov	rbx,qword [rbp-32]
		mov	rsi,qword [rbp-24]
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,0

SECTION .text
..@c39:

SECTION .text
	GLOBAL fpc_ansistr_assign
fpc_ansistr_assign:
	GLOBAL FPC_ANSISTR_ASSIGN
FPC_ANSISTR_ASSIGN:
..@c43:
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c45:
		mov	rbx,rcx
		mov	rsi,rdx
		mov	rcx,rsi
		call	_$dll$kernel32$lstrlenA
		mov	edi,eax
		mov	rcx,rbx
		mov	edx,edi
		call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
		cmp	qword [rbx],0
		je	..@j58
		mov	rcx,qword [rbx]
		mov	edx,edi
		xor	r8d,r8d
		call	SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR
		mov	rdx,qword [rbx]
		mov	rcx,rsi
		mov	r8d,edi
		call	SYSTEM_$$_MOVE$formal$formal$LONGDWORD
		jmp	..@j59
..@j58:
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld3]
		lea	rdx,[_$SYSTEM$_Ld9]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	ecx,1
		call	_$dll$kernel32$ExitProcess
..@j59:
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c44:

SECTION .text
	GLOBAL fpc_ansistr_concat
fpc_ansistr_concat:
..@c46:
		push	rbx
		push	rdi
		push	rsi
		push	r12
		lea	rsp,[rsp-40]
..@c48:
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
		lea	rdx,[_$SYSTEM$_Ld10]
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
..@c47:

SECTION .text
	GLOBAL fpc_ansistr_compare_equal
fpc_ansistr_compare_equal:
	GLOBAL FPC_ANSISTR_COMPARE_EQUAL
FPC_ANSISTR_COMPARE_EQUAL:
..@c49:
		push	rbx
		push	rdi
		push	rsi
		lea	rsp,[rsp-32]
..@c51:
		mov	rbx,rdx
		cmp	rbx,rcx
		jne	..@j68
		mov	edi,1
		jmp	..@j65
..@j68:
		call	_$dll$kernel32$lstrlenA
		mov	esi,eax
		mov	rcx,rbx
		call	_$dll$kernel32$lstrlenA
		mov	edx,esi
		and	eax,eax
		sub	rdx,rax
		mov	rdi,rdx
		test	rdx,rdx
		jne	..@j70
		test	esi,esi
		jna	..@j72
		mov	edi,1
		jmp	..@j65
..@j72:
		xor	edi,edi
		jmp	..@j65
..@j70:
		mov	edi,1
..@j65:
		mov	rax,rdi
		nop
		lea	rsp,[rsp+32]
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c50:

SECTION .text
	GLOBAL SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT
SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT:
..@c52:
		lea	rsp,[rsp-40]
..@c54:
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld11]
		lea	rdx,[_$SYSTEM$_Ld12]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		xor	eax,eax
		nop
		lea	rsp,[rsp+40]
		ret
..@c53:

SECTION .text
	GLOBAL fpc_get_input
fpc_get_input:
..@c55:
		xor	eax,eax
		ret
..@c56:

SECTION .text
	GLOBAL fpc_readln_end
fpc_readln_end:
	GLOBAL FPC_READLN_END
FPC_READLN_END:
..@c57:
		mov	rax,rcx
		ret
..@c58:

SECTION .text
	GLOBAL fpc_do_exit
fpc_do_exit:
	GLOBAL FPC_DO_EXIT
FPC_DO_EXIT:
..@c59:
		lea	rsp,[rsp-40]
..@c61:
		xor	eax,eax
		lea	r8,[_$SYSTEM$_Ld1]
		lea	rdx,[_$SYSTEM$_Ld13]
		xor	ecx,ecx
		mov	r9d,eax
		call	_$dll$user32$MessageBoxA
		xor	ecx,ecx
		call	_$dll$kernel32$ExitProcess
		nop
		lea	rsp,[rsp+40]
		ret
..@c60:

SECTION .text
	GLOBAL fpc_iocheck
fpc_iocheck:
..@c62:
		ret
..@c63:

SECTION .text
	GLOBAL fpc_help_constructor
fpc_help_constructor:
..@c64:
		xor	eax,eax
		ret
..@c65:

SECTION .text
	GLOBAL fpc_help_destructor
fpc_help_destructor:
..@c66:
		mov	rax,rcx
		ret
..@c67:

SECTION .text
	GLOBAL fpc_help_fail
fpc_help_fail:
..@c68:
		mov	rax,rcx
		ret
..@c69:

SECTION .text
	GLOBAL fpc_reraise
fpc_reraise:
	GLOBAL fpc_reraise
fpc_reraise:
..@c70:
		lea	rsp,[rsp-40]
..@c72:
		xor	eax,eax
		lea	r8,[_$SYSTEM$_Ld14]
		lea	rdx,[_$SYSTEM$_Ld15]
		xor	ecx,ecx
		mov	r9d,eax
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c71:

SECTION .text
	GLOBAL fpc_finalize
fpc_finalize:
..@c73:
		mov	rax,rcx
		ret
..@c74:

SECTION .text
	GLOBAL fpc_initializeunits
fpc_initializeunits:
	GLOBAL FPC_INITIALIZEUNITS
FPC_INITIALIZEUNITS:
..@c75:
		lea	rsp,[rsp-40]
..@c77:
		xor	eax,eax
		lea	r8,[_$SYSTEM$_Ld16]
		lea	rdx,[_$SYSTEM$_Ld17]
		xor	ecx,ecx
		mov	r9d,eax
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c76:

SECTION .text
	GLOBAL fpc_libinitializeunits
fpc_libinitializeunits:
	GLOBAL FPC_LIBINITIALIZEUNITS
FPC_LIBINITIALIZEUNITS:
..@c78:
		ret
..@c79:

SECTION .text
	GLOBAL SYSTEM_$$_SHOWMESSAGE$PCHAR
SYSTEM_$$_SHOWMESSAGE$PCHAR:
..@c82:
		lea	rsp,[rsp-40]
..@c84:
		mov	rdx,rcx
		mov	r9d,64
		lea	r8,[_$SYSTEM$_Ld18]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c83:

SECTION .text
	GLOBAL SYSTEM_$$_SHOWWARN$PCHAR
SYSTEM_$$_SHOWWARN$PCHAR:
..@c85:
		lea	rsp,[rsp-40]
..@c87:
		mov	rdx,rcx
		mov	r9d,48
		lea	r8,[_$SYSTEM$_Ld19]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c86:

SECTION .text
	GLOBAL SYSTEM_$$_SHOWERROR$PCHAR
SYSTEM_$$_SHOWERROR$PCHAR:
..@c88:
		lea	rsp,[rsp-40]
..@c90:
		mov	rdx,rcx
		mov	r9d,48
		lea	r8,[_$SYSTEM$_Ld3]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c89:

SECTION .text
	GLOBAL SYSTEM_$$_SHOWINFO$PCHAR
SYSTEM_$$_SHOWINFO$PCHAR:
..@c91:
		lea	rsp,[rsp-40]
..@c93:
		call	SYSTEM_$$_SHOWMESSAGE$PCHAR
		nop
		lea	rsp,[rsp+40]
		ret
..@c92:

SECTION .text
	GLOBAL SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR
SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR:
..@c94:
		lea	rax,[rdx-1]
		mov	rdx,-1
..@j137:
		inc	rdx
		mov	byte [rcx],r8b
		inc	rcx
		cmp	rax,rdx
		jnbe	..@j137
		ret
..@c95:

SECTION .text
	GLOBAL SYSTEM_$$_FREEMEM$POINTER
SYSTEM_$$_FREEMEM$POINTER:
..@c96:
		lea	rsp,[rsp-40]
..@c98:
		mov	rax,rcx
		mov	rcx,qword [rax]
		mov	r8d,32768
		xor	edx,edx
		call	_$dll$kernel32$VirtualAlloc
		nop
		lea	rsp,[rsp+40]
		ret
..@c97:

SECTION .text
	GLOBAL SYSTEM_$$_GETMEM$POINTER$LONGDWORD
SYSTEM_$$_GETMEM$POINTER$LONGDWORD:
..@c99:
		push	rbx
		lea	rsp,[rsp-32]
..@c101:
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
..@c100:

SECTION .text
	GLOBAL SYSTEM_$$_TSYSTEMCODEPAGE$$LONGDWORD
SYSTEM_$$_TSYSTEMCODEPAGE$$LONGDWORD:
..@c102:
		lea	rsp,[rsp-40]
..@c104:
		call	_$dll$kernel32$GetACP
		nop
		lea	rsp,[rsp+40]
		ret
..@c103:

SECTION .text
	GLOBAL SYSTEM_$$_LOCKFILE$POINTER$$BOOLEAN
SYSTEM_$$_LOCKFILE$POINTER$$BOOLEAN:
..@c105:
		push	rbx
		lea	rsp,[rsp-48]
..@c107:
		xor	bl,bl
		mov	dword [rsp+32],0
		xor	r8d,r8d
		xor	edx,edx
		call	_$dll$kernel32$LockFile
		test	al,al
		jne	..@j149
		lea	rcx,[_$SYSTEM$_Ld20]
		call	SYSTEM_$$_SHOWERROR$PCHAR
		jmp	..@j146
..@j149:
		mov	bl,1
..@j146:
		mov	al,bl
		nop
		lea	rsp,[rsp+48]
		pop	rbx
		ret
..@c106:

SECTION .text
	GLOBAL SYSTEM_$$_WRITEFILE$LONGWORD$PCHAR$$QWORD
SYSTEM_$$_WRITEFILE$LONGWORD$PCHAR$$QWORD:
..@c108:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c110:
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
..@c109:

SECTION .text
	GLOBAL SYSTEM_$$_WRITEFILE$LONGWORD$POINTER$$QWORD
SYSTEM_$$_WRITEFILE$LONGWORD$POINTER$$QWORD:
..@c111:
		lea	rsp,[rsp-56]
..@c113:
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
..@c112:

SECTION .text
	GLOBAL SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER
SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER:
..@c114:
		push	rbx
		push	rdi
		push	rsi
		push	r12
		push	r13
		lea	rsp,[rsp-64]
..@c116:
		mov	rbx,rcx
		mov	sil,dl
		lea	rcx,[_$SYSTEM$_Ld21]
		call	SYSTEM_$$_SHOWINFO$PCHAR
		mov	rcx,rbx
		call	_$dll$shlwapi$PathFileExistsA
		mov	rdi,rax
		cmp	edi,1
		jne	..@j157
		test	sil,sil
		jne	..@j159
		xor	r12d,r12d
		lea	rcx,[rsp+56]
		mov	edx,255
		call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
		mov	rcx,qword [rsp+56]
		lea	rdx,[_$SYSTEM$_Ld22]
		call	_$dll$ucrtbase$strcpy
		mov	rdx,rbx
		mov	rcx,qword [rsp+56]
		call	_$dll$ucrtbase$strcat
		mov	rcx,qword [rsp+56]
		lea	rdx,[_$SYSTEM$_Ld23]
		call	_$dll$ucrtbase$strcat
		mov	rcx,qword [rsp+56]
		lea	rdx,[_$SYSTEM$_Ld24]
		call	_$dll$ucrtbase$strcat
		mov	rdx,qword [rsp+56]
		mov	r9d,4
		lea	r8,[_$SYSTEM$_Ld18]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	edi,eax
		cmp	edi,6
		jne	..@j161
		mov	rcx,rbx
		call	SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN
		mov	rcx,rbx
		mov	dl,1
		call	SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER
		mov	r13,rax
		call	_$dll$kernel32$GetLastError
		mov	r12d,eax
..@j161:
		lea	rcx,[rsp+56]
		call	SYSTEM_$$_FREEMEM$POINTER
		test	r12d,r12d
		je	..@j169
		lea	rcx,[_$SYSTEM$_Ld25]
		call	SYSTEM_$$_SHOWERROR$PCHAR
		jmp	..@j154
		jmp	..@j169
..@j159:
		test	sil,sil
		je	..@j169
		mov	rcx,rbx
		call	_$dll$kernel32$DeleteFileA
		mov	dl,al
		test	dil,dil
		jne	..@j168
		lea	rcx,[_$SYSTEM$_Ld26]
		call	SYSTEM_$$_SHOWMESSAGE$PCHAR
..@j168:
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
		jmp	..@j154
		jmp	..@j169
..@j157:
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
		je	..@j171
		lea	rcx,[_$SYSTEM$_Ld25]
		call	SYSTEM_$$_SHOWERROR$PCHAR
		jmp	..@j154
..@j171:
..@j169:
		mov	eax,r13d
		cmp	eax,-1
		jne	..@j173
		lea	rcx,[rsp+56]
		mov	edx,255
		call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
		mov	rcx,qword [rsp+56]
		lea	rdx,[_$SYSTEM$_Ld22]
		call	_$dll$ucrtbase$strcpy
		mov	rdx,rbx
		mov	rcx,qword [rsp+56]
		call	_$dll$ucrtbase$strcat
		mov	rcx,qword [rsp+56]
		lea	rdx,[_$SYSTEM$_Ld27]
		call	_$dll$ucrtbase$strcat
		mov	rcx,qword [rsp+56]
		call	SYSTEM_$$_SHOWERROR$PCHAR
		lea	rcx,[rsp+56]
		call	SYSTEM_$$_FREEMEM$POINTER
		xor	esi,esi
		jmp	..@j154
..@j173:
		mov	rsi,r13
..@j154:
		mov	rax,rsi
		nop
		lea	rsp,[rsp+64]
		pop	r13
		pop	r12
		pop	rsi
		pop	rdi
		pop	rbx
		ret
..@c115:

SECTION .text
	GLOBAL SYSTEM_$$_FILECREATE$RAWBYTESTRING$BOOLEAN$$POINTER
SYSTEM_$$_FILECREATE$RAWBYTESTRING$BOOLEAN$$POINTER:
..@c117:
		lea	rsp,[rsp-40]
..@c119:
		test	rcx,rcx
		jne	..@j176
		lea	rcx,[FPC_EMPTYCHAR]
..@j176:
		call	SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER
		nop
		lea	rsp,[rsp+40]
		ret
..@c118:

SECTION .text
	GLOBAL SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN
SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN:
..@c120:
		lea	rsp,[rsp-40]
..@c122:
		call	_$dll$kernel32$DeleteFileA
		nop
		lea	rsp,[rsp+40]
		ret
..@c121:

SECTION .text
	GLOBAL SYSTEM_$$_FILEDELETE$RAWBYTESTRING$$BOOLEAN
SYSTEM_$$_FILEDELETE$RAWBYTESTRING$$BOOLEAN:
..@c123:
		lea	rsp,[rsp-40]
..@c125:
		test	rcx,rcx
		jne	..@j181
		lea	rcx,[FPC_EMPTYCHAR]
..@j181:
		call	SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN
		nop
		lea	rsp,[rsp+40]
		ret
..@c124:

SECTION .text
	GLOBAL SYSTEM_$$_FILESEEK$LONGWORD$LONGDWORD$LONGDWORD$$LONGDWORD
SYSTEM_$$_FILESEEK$LONGWORD$LONGDWORD$LONGDWORD$$LONGDWORD:
..@c126:
		push	rbx
		lea	rsp,[rsp-32]
..@c128:
		mov	r9d,r8d
		xor	r8,r8
		call	_$dll$kernel32$SetFilePointer
		mov	ebx,eax
		call	_$dll$kernel32$GetLastError
		cmp	ebx,-1
		jne	..@j185
		test	eax,eax
		je	..@j185
		lea	rcx,[_$SYSTEM$_Ld28]
		call	SYSTEM_$$_SHOWERROR$PCHAR
		mov	eax,-1
		jmp	..@j182
..@j185:
		mov	eax,ebx
..@j182:
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c127:

SECTION .text
	GLOBAL SYSTEM_$$_FILESEEK$POINTER$LONGDWORD$LONGDWORD$$LONGDWORD
SYSTEM_$$_FILESEEK$POINTER$LONGDWORD$LONGDWORD$$LONGDWORD:
..@c129:
		lea	rsp,[rsp-40]
..@c131:
		call	SYSTEM_$$_FILESEEK$LONGWORD$LONGDWORD$LONGDWORD$$LONGDWORD
		mov	eax,edx
		nop
		lea	rsp,[rsp+40]
		ret
..@c130:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT:
..@c132:
		push	rbp
..@c134:
..@c135:
		mov	rbp,rsp
..@c136:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j192
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-16],rax
..@j192:
		cmp	qword [rbp-16],0
		je	..@j189
..@j200:
		nop
..@j199:
		mov	qword [rbp-24],-1
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld29]
		lea	rdx,[_$SYSTEM$_Ld30]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	rdx,qword [rbp-16]
		lea	rcx,[VMT_$SYSTEM_$$_TOBJECT]
		lea	rax,[VMT_$SYSTEM_$$_TOBJECT]
		call	[rax+96]
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld29]
		lea	rdx,[_$SYSTEM$_Ld31]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j197
		cmp	qword [rbp-8],0
		je	..@j197
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+160]
		jmp	..@j197
..@j196:
		cmp	qword [rbp-8],0
		je	..@j206
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+112]
..@j206:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j207:
		nop
..@j197:
..@j189:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c133:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_DESTROY
SYSTEM$_$TOBJECT_$__$$_DESTROY:
..@c137:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c139:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j211
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+168]
..@j211:
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld29]
		lea	rdx,[_$SYSTEM$_Ld32]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		test	rbx,rbx
		je	..@j213
		test	rsi,rsi
		je	..@j213
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+136]
..@j213:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c138:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION:
..@c140:
		lea	rsp,[rsp-40]
..@c142:
		mov	rax,rcx
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld29]
		lea	rdx,[_$SYSTEM$_Ld33]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c141:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION:
..@c143:
		lea	rsp,[rsp-40]
..@c145:
		mov	rax,rcx
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld29]
		lea	rdx,[_$SYSTEM$_Ld34]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c144:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING:
..@c146:
		lea	rsp,[rsp-40]
..@c148:
		mov	rax,rcx
		mov	rcx,rdx
		lea	rdx,[..@d35]
		call	fpc_ansistr_assign
		nop
		lea	rsp,[rsp+40]
		ret
..@c147:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT:
..@c149:
		xor	eax,eax
		ret
..@c150:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_FREE
SYSTEM$_$TOBJECT_$__$$_FREE:
..@c151:
		push	rbx
		lea	rsp,[rsp-32]
..@c153:
		mov	rbx,rcx
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld29]
		lea	rdx,[_$SYSTEM$_Ld36]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		test	rbx,rbx
		je	..@j226
		mov	rcx,rbx
		mov	edx,1
		mov	rax,qword [rbx]
		call	[rax+112]
..@j226:
		nop
		lea	rsp,[rsp+32]
		pop	rbx
		ret
..@c152:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT:
..@c154:
		lea	rsp,[rsp-40]
..@c156:
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld29]
		lea	rdx,[_$SYSTEM$_Ld37]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	rax,rdx
		nop
		lea	rsp,[rsp+40]
		ret
..@c155:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER:
..@c157:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c159:
		mov	rbx,rcx
		mov	rsi,rdx
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld29]
		lea	rdx,[_$SYSTEM$_Ld38]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	qword [rsi],rbx
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c158:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE:
..@c160:
		lea	rsp,[rsp-40]
..@c162:
		mov	rax,rcx
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld29]
		lea	rdx,[_$SYSTEM$_Ld39]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c161:

SECTION .text
SYSTEM_$$_SAFECALLEXCEPTION$POINTER$POINTER$$SHORTDWORD:
..@c163:
		lea	rsp,[rsp-40]
..@c165:
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld29]
		lea	rdx,[_$SYSTEM$_Ld40]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	eax,edx
		nop
		lea	rsp,[rsp+40]
		ret
..@c164:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD:
..@c166:
		lea	rsp,[rsp-40]
..@c168:
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld29]
		lea	rdx,[_$SYSTEM$_Ld41]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	eax,1
		nop
		lea	rsp,[rsp+40]
		ret
..@c167:

SECTION .text
	GLOBAL SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal
SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal:
..@c169:
		lea	rsp,[rsp-40]
..@c171:
		mov	rax,rcx
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld29]
		lea	rdx,[_$SYSTEM$_Ld42]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		nop
		lea	rsp,[rsp+40]
		ret
..@c170:

SECTION .text
	GLOBAL SYSTEM$_$TLIST_$__$$_CREATE$$TLIST
SYSTEM$_$TLIST_$__$$_CREATE$$TLIST:
..@c172:
		push	rbp
..@c174:
..@c175:
		mov	rbp,rsp
..@c176:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j242
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-16],rax
..@j242:
		cmp	qword [rbp-16],0
		je	..@j239
..@j250:
		nop
..@j249:
		mov	qword [rbp-24],-1
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld29]
		lea	rdx,[_$SYSTEM$_Ld43]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	rcx,qword [rbp-16]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld29]
		lea	rdx,[_$SYSTEM$_Ld44]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j247
		cmp	qword [rbp-8],0
		je	..@j247
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+160]
		jmp	..@j247
..@j246:
		cmp	qword [rbp-8],0
		je	..@j256
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSTEM$_$TLIST_$__$$_DESTROY
..@j256:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j257:
		nop
..@j247:
..@j239:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c173:

SECTION .text
	GLOBAL SYSTEM$_$TLIST_$__$$_DESTROY
SYSTEM$_$TLIST_$__$$_DESTROY:
..@c177:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c179:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j261
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+168]
..@j261:
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld29]
		lea	rdx,[_$SYSTEM$_Ld45]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		test	rbx,rbx
		je	..@j263
		test	rsi,rsi
		je	..@j263
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+136]
..@j263:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c178:

SECTION .text
	GLOBAL SYSTEM$_$TANSISTRINGMEMORYMANAGER_$__$$_CREATE$$TANSISTRINGMEMORYMANAGER
SYSTEM$_$TANSISTRINGMEMORYMANAGER_$__$$_CREATE$$TANSISTRINGMEMORYMANAGER:
..@c180:
		push	rbp
..@c182:
..@c183:
		mov	rbp,rsp
..@c184:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j268
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-16],rax
..@j268:
		cmp	qword [rbp-16],0
		je	..@j265
..@j276:
		nop
..@j275:
		mov	qword [rbp-24],-1
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld29]
		lea	rdx,[_$SYSTEM$_Ld46]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	rcx,qword [rbp-16]
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld29]
		lea	rdx,[_$SYSTEM$_Ld47]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	edx,1
		lea	rcx,[VMT_$SYSTEM_$$_TLIST]
		call	SYSTEM$_$TLIST_$__$$_CREATE$$TLIST
		mov	rdx,qword [rbp-16]
		mov	qword [rdx+8],rax
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld29]
		lea	rdx,[_$SYSTEM$_Ld48]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j273
		cmp	qword [rbp-8],0
		je	..@j273
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+160]
		jmp	..@j273
..@j272:
		cmp	qword [rbp-8],0
		je	..@j282
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		call	SYSTEM$_$TANSISTRINGMEMORYMANAGER_$__$$_DESTROY
..@j282:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j283:
		nop
..@j273:
..@j265:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c181:

SECTION .text
	GLOBAL SYSTEM$_$TANSISTRINGMEMORYMANAGER_$__$$_DESTROY
SYSTEM$_$TANSISTRINGMEMORYMANAGER_$__$$_DESTROY:
..@c185:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c187:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j287
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+168]
..@j287:
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld29]
		lea	rdx,[_$SYSTEM$_Ld49]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	rcx,qword [rbx+8]
		call	SYSTEM$_$TOBJECT_$__$$_FREE
		xor	r9d,r9d
		lea	r8,[_$SYSTEM$_Ld29]
		lea	rdx,[_$SYSTEM$_Ld50]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		mov	rcx,rbx
		xor	edx,edx
		call	SYSTEM$_$TOBJECT_$__$$_DESTROY
		test	rbx,rbx
		je	..@j289
		test	rsi,rsi
		je	..@j289
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+136]
..@j289:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c186:

SECTION .text
	GLOBAL SYSTEM$_$QOBJECT_$__$$_CREATE$$QOBJECT
SYSTEM$_$QOBJECT_$__$$_CREATE$$QOBJECT:
..@c188:
		push	rbp
..@c190:
..@c191:
		mov	rbp,rsp
..@c192:
		lea	rsp,[rsp-64]
		mov	qword [rbp-16],rcx
		mov	qword [rbp-8],rdx
		cmp	rdx,1
		jne	..@j294
		mov	rax,qword [rbp-16]
		mov	rdx,qword [rbp-16]
		mov	rcx,rax
		call	[rdx+104]
		mov	qword [rbp-16],rax
..@j294:
		cmp	qword [rbp-16],0
		je	..@j291
..@j302:
		nop
..@j301:
		mov	qword [rbp-24],-1
		mov	qword [rbp-24],1
		cmp	qword [rbp-16],0
		je	..@j299
		cmp	qword [rbp-8],0
		je	..@j299
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+160]
		jmp	..@j299
..@j298:
		cmp	qword [rbp-8],0
		je	..@j308
		mov	rdx,qword [rbp-24]
		mov	rcx,qword [rbp-16]
		mov	rax,qword [rbp-16]
		mov	rax,qword [rax]
		call	[rax+176]
..@j308:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j309:
		nop
..@j299:
..@j291:
		mov	rax,qword [rbp-16]
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c189:

SECTION .text
	GLOBAL SYSTEM$_$QOBJECT_$__$$_DESTROY
SYSTEM$_$QOBJECT_$__$$_DESTROY:
..@c193:
		push	rbx
		push	rsi
		lea	rsp,[rsp-40]
..@c195:
		mov	rbx,rcx
		mov	rsi,rdx
		test	rsi,rsi
		jng	..@j313
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+168]
..@j313:
		test	rbx,rbx
		je	..@j315
		test	rsi,rsi
		je	..@j315
		mov	rcx,rbx
		mov	rax,qword [rbx]
		call	[rax+136]
..@j315:
		nop
		lea	rsp,[rsp+40]
		pop	rsi
		pop	rbx
		ret
..@c194:

SECTION .text
	GLOBAL SYSTEM_$$_Q_NULLPTR$$POINTER
SYSTEM_$$_Q_NULLPTR$$POINTER:
..@c196:
		xor	eax,eax
		ret
..@c197:
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TOBJECT
VMT_$SYSTEM_$$_TOBJECT	DQ	8,-8,0,..@d51,0,0,0,RTTI_$SYSTEM_$$_TOBJECT,0,0,0,0,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_DESTROY
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING,SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE,SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal,SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
	DQ	SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TLIST
VMT_$SYSTEM_$$_TLIST	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d52,0,0,0,RTTI_$SYSTEM_$$_TLIST,0
	DQ	0,0,0,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal,SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
	DQ	SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_TANSISTRINGMEMORYMANAGER
VMT_$SYSTEM_$$_TANSISTRINGMEMORYMANAGER	DQ	16,-16,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d53,0,0,0,RTTI_$SYSTEM_$$_TANSISTRINGMEMORYMANAGER
	DQ	0,0,0,0,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal,SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
	DQ	SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION,0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_QOBJECT
VMT_$SYSTEM_$$_QOBJECT	DQ	8,-8,VMT_$SYSTEM_$$_TOBJECT$indirect,..@d54,0,0,0,RTTI_$SYSTEM_$$_QOBJECT
	DQ	0,0,0,0,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER,SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	DQ	SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal,SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
	DQ	SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION,SYSTEM$_$QOBJECT_$__$$_DESTROY
	DQ	0
; End asmlist al_globals
; Begin asmlist al_const

SECTION .data
	ALIGN 8,DB 0
..@d51:
	DB	7
		DB	"TObject"

SECTION .data
	ALIGN 8,DB 0
..@d52:
	DB	5
		DB	"TList"

SECTION .data
	ALIGN 8,DB 0
..@d53:
	DB	24
		DB	"TAnsiStringMemoryManager"

SECTION .data
	ALIGN 8,DB 0
..@d54:
	DB	7
		DB	"QObject"
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
		DB	"s2",0

SECTION .rodata
_$SYSTEM$_Ld6:
		DB	"s11111 111",0

SECTION .rodata
_$SYSTEM$_Ld7:
		DB	"Error: creating private heap.",0

SECTION .rodata
_$SYSTEM$_Ld8:
		DB	0

SECTION .rodata
_$SYSTEM$_Ld9:
		DB	"Error: fpc_AnsiStr_Assign memory allocation fail.",0

SECTION .rodata
_$SYSTEM$_Ld10:
		DB	"Error: fpc_AnsiStr_Concat memory allocation fail.",0

SECTION .rodata
_$SYSTEM$_Ld11:
		DB	"system",0

SECTION .rodata
_$SYSTEM$_Ld12:
		DB	"getparent",0

SECTION .rodata
_$SYSTEM$_Ld13:
		DB	"fpc_do_exit",0

SECTION .rodata
_$SYSTEM$_Ld14:
		DB	"inform",0

SECTION .rodata
_$SYSTEM$_Ld15:
		DB	"fpc_ReRaise",0

SECTION .rodata
_$SYSTEM$_Ld16:
		DB	"2121212",0

SECTION .rodata
_$SYSTEM$_Ld17:
		DB	"uzy",0

SECTION .rodata
_$SYSTEM$_Ld18:
		DB	"Information",0

SECTION .rodata
_$SYSTEM$_Ld19:
		DB	"Warning",0

SECTION .rodata
_$SYSTEM$_Ld20:
		DB	"File can not be lock.",0

SECTION .rodata
_$SYSTEM$_Ld21:
		DB	"pacher",0

SECTION .rodata
_$SYSTEM$_Ld22:
		DB	"File: ",34,0

SECTION .rodata
_$SYSTEM$_Ld23:
		DB	34," already exists.\n",0

SECTION .rodata
_$SYSTEM$_Ld24:
		DB	"Would you like override it ?",0

SECTION .rodata
_$SYSTEM$_Ld25:
		DB	"file could not be created !",0

SECTION .rodata
_$SYSTEM$_Ld26:
		DB	"file not delete",0

SECTION .rodata
_$SYSTEM$_Ld27:
		DB	34," could not be open.",0

SECTION .rodata
_$SYSTEM$_Ld28:
		DB	"SetFilePointer() failed.",0

SECTION .rodata
_$SYSTEM$_Ld29:
		DB	"info",0

SECTION .rodata
_$SYSTEM$_Ld30:
		DB	"tobject create",0

SECTION .rodata
_$SYSTEM$_Ld31:
		DB	"tobject successfully created",0

SECTION .rodata
_$SYSTEM$_Ld32:
		DB	"tobject destroy",0

SECTION .rodata
_$SYSTEM$_Ld33:
		DB	"Tobject AfterConstruction",0

SECTION .rodata
_$SYSTEM$_Ld34:
		DB	"Tobject BeforeDestruction",0

SECTION .rodata
..@d35$strlab:
	DW	0,1
	DD	0
	DQ	-1,7
..@d35:
		DB	"TObject",0

SECTION .rodata
_$SYSTEM$_Ld36:
		DB	"tobject FREE",0

SECTION .rodata
_$SYSTEM$_Ld37:
		DB	"tobject NEWINSTANCE",0

SECTION .rodata
_$SYSTEM$_Ld38:
		DB	"INIT INSTANCE",0

SECTION .rodata
_$SYSTEM$_Ld39:
		DB	"tobject FREEINSTANCE",0

SECTION .rodata
_$SYSTEM$_Ld40:
		DB	"tobject SAFECALLEXCEPTION",0

SECTION .rodata
_$SYSTEM$_Ld41:
		DB	"SAFECALLEXCEPTION",0

SECTION .rodata
_$SYSTEM$_Ld42:
		DB	"tobject DEFAULT HANDLER",0

SECTION .rodata
_$SYSTEM$_Ld43:
		DB	"TList CTOR",0

SECTION .rodata
_$SYSTEM$_Ld44:
		DB	"After TList CTOR",0

SECTION .rodata
_$SYSTEM$_Ld45:
		DB	"TList Destroy",0

SECTION .rodata
_$SYSTEM$_Ld46:
		DB	"AnsiManager create",0

SECTION .rodata
_$SYSTEM$_Ld47:
		DB	"Ansi CTOR",0

SECTION .rodata
_$SYSTEM$_Ld48:
		DB	"ANSI CTOR...",0

SECTION .rodata
_$SYSTEM$_Ld49:
		DB	"AnsiManager destroy",0

SECTION .rodata
_$SYSTEM$_Ld50:
		DB	"Manager FREE",0
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
	GLOBAL INIT_$SYSTEM_$$_TANSISTRINGMEMORYMANAGER
INIT_$SYSTEM_$$_TANSISTRINGMEMORYMANAGER	DB	15,24
		DB	"TAnsiStringMemoryManager"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TANSISTRINGMEMORYMANAGER
RTTI_$SYSTEM_$$_TANSISTRINGMEMORYMANAGER	DB	15,24
		DB	"TAnsiStringMemoryManager"
	DQ	VMT_$SYSTEM_$$_TANSISTRINGMEMORYMANAGER,RTTI_$SYSTEM_$$_TOBJECT$indirect
	DW	0
	DB	6
		DB	"system"
	DW	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_QOBJECT
INIT_$SYSTEM_$$_QOBJECT	DB	15,7
		DB	"QObject"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_QOBJECT
RTTI_$SYSTEM_$$_QOBJECT	DB	15,7
		DB	"QObject"
	DQ	VMT_$SYSTEM_$$_QOBJECT,RTTI_$SYSTEM_$$_TOBJECT$indirect
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
	GLOBAL VMT_$SYSTEM_$$_TANSISTRINGMEMORYMANAGER$indirect
VMT_$SYSTEM_$$_TANSISTRINGMEMORYMANAGER$indirect	DQ	VMT_$SYSTEM_$$_TANSISTRINGMEMORYMANAGER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$SYSTEM_$$_QOBJECT$indirect
VMT_$SYSTEM_$$_QOBJECT$indirect	DQ	VMT_$SYSTEM_$$_QOBJECT

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
	GLOBAL INIT_$SYSTEM_$$_TANSISTRINGMEMORYMANAGER$indirect
INIT_$SYSTEM_$$_TANSISTRINGMEMORYMANAGER$indirect	DQ	INIT_$SYSTEM_$$_TANSISTRINGMEMORYMANAGER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_TANSISTRINGMEMORYMANAGER$indirect
RTTI_$SYSTEM_$$_TANSISTRINGMEMORYMANAGER$indirect	DQ	RTTI_$SYSTEM_$$_TANSISTRINGMEMORYMANAGER

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$SYSTEM_$$_QOBJECT$indirect
INIT_$SYSTEM_$$_QOBJECT$indirect	DQ	INIT_$SYSTEM_$$_QOBJECT

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$SYSTEM_$$_QOBJECT$indirect
RTTI_$SYSTEM_$$_QOBJECT$indirect	DQ	RTTI_$SYSTEM_$$_QOBJECT
; End asmlist al_indirectglobals
; Begin asmlist al_dwarf_frame

SECTION .debug_frame
..@c198:
	DD	..@c200-..@c199
..@c199:
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
..@c200:
	DD	..@c202-..@c201
..@c201:
	DQ	..@c1,..@c2-..@c1
	ALIGN 4,DB 0
..@c202:
	DD	..@c204-..@c203
..@c203:
	DQ	..@c3,..@c4-..@c3
	ALIGN 4,DB 0
..@c204:
	DD	..@c206-..@c205
..@c205:
	DQ	..@c5,..@c6-..@c5
	ALIGN 4,DB 0
..@c206:
	DD	..@c208-..@c207
..@c207:
	DQ	..@c7,..@c8-..@c7
	ALIGN 4,DB 0
..@c208:
	DD	..@c210-..@c209
..@c209:
	DQ	..@c9,..@c10-..@c9
	ALIGN 4,DB 0
..@c210:
	DD	..@c212-..@c211
..@c211:
	DQ	..@c11,..@c12-..@c11
	DB	4
	DD	..@c13-..@c11
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c212:
	DD	..@c214-..@c213
..@c213:
	DQ	..@c14,..@c15-..@c14
	ALIGN 4,DB 0
..@c214:
	DD	..@c216-..@c215
..@c215:
	DQ	..@c16,..@c17-..@c16
	ALIGN 4,DB 0
..@c216:
	DD	..@c218-..@c217
..@c217:
	DQ	..@c18,..@c19-..@c18
	DB	4
	DD	..@c20-..@c18
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c218:
	DD	..@c220-..@c219
..@c219:
	DQ	..@c21,..@c22-..@c21
	ALIGN 4,DB 0
..@c220:
	DD	..@c222-..@c221
..@c221:
	DQ	..@c23,..@c24-..@c23
	ALIGN 4,DB 0
..@c222:
	DD	..@c224-..@c223
..@c223:
	DQ	..@c25,..@c26-..@c25
	DB	4
	DD	..@c27-..@c25
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c224:
	DD	..@c226-..@c225
..@c225:
	DQ	..@c28,..@c29-..@c28
	ALIGN 4,DB 0
..@c226:
	DD	..@c228-..@c227
..@c227:
	DQ	..@c30,..@c31-..@c30
	DB	4
	DD	..@c32-..@c30
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c228:
	DD	..@c230-..@c229
..@c229:
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
..@c230:
	DD	..@c232-..@c231
..@c231:
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
..@c232:
	DD	..@c234-..@c233
..@c233:
	DQ	..@c43,..@c44-..@c43
	DB	4
	DD	..@c45-..@c43
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c234:
	DD	..@c236-..@c235
..@c235:
	DQ	..@c46,..@c47-..@c46
	DB	4
	DD	..@c48-..@c46
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c236:
	DD	..@c238-..@c237
..@c237:
	DQ	..@c49,..@c50-..@c49
	DB	4
	DD	..@c51-..@c49
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c238:
	DD	..@c240-..@c239
..@c239:
	DQ	..@c52,..@c53-..@c52
	DB	4
	DD	..@c54-..@c52
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c240:
	DD	..@c242-..@c241
..@c241:
	DQ	..@c55,..@c56-..@c55
	ALIGN 4,DB 0
..@c242:
	DD	..@c244-..@c243
..@c243:
	DQ	..@c57,..@c58-..@c57
	ALIGN 4,DB 0
..@c244:
	DD	..@c246-..@c245
..@c245:
	DQ	..@c59,..@c60-..@c59
	DB	4
	DD	..@c61-..@c59
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c246:
	DD	..@c248-..@c247
..@c247:
	DQ	..@c62,..@c63-..@c62
	ALIGN 4,DB 0
..@c248:
	DD	..@c250-..@c249
..@c249:
	DQ	..@c64,..@c65-..@c64
	ALIGN 4,DB 0
..@c250:
	DD	..@c252-..@c251
..@c251:
	DQ	..@c66,..@c67-..@c66
	ALIGN 4,DB 0
..@c252:
	DD	..@c254-..@c253
..@c253:
	DQ	..@c68,..@c69-..@c68
	ALIGN 4,DB 0
..@c254:
	DD	..@c256-..@c255
..@c255:
	DQ	..@c70,..@c71-..@c70
	DB	4
	DD	..@c72-..@c70
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c256:
	DD	..@c258-..@c257
..@c257:
	DQ	..@c73,..@c74-..@c73
	ALIGN 4,DB 0
..@c258:
	DD	..@c260-..@c259
..@c259:
	DQ	..@c75,..@c76-..@c75
	DB	4
	DD	..@c77-..@c75
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c260:
	DD	..@c262-..@c261
..@c261:
	DQ	..@c78,..@c79-..@c78
	ALIGN 4,DB 0
..@c262:
	DD	..@c264-..@c263
..@c263:
	DQ	..@c80,..@c81-..@c80
	ALIGN 4,DB 0
..@c264:
	DD	..@c266-..@c265
..@c265:
	DQ	..@c82,..@c83-..@c82
	DB	4
	DD	..@c84-..@c82
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c266:
	DD	..@c268-..@c267
..@c267:
	DQ	..@c85,..@c86-..@c85
	DB	4
	DD	..@c87-..@c85
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c268:
	DD	..@c270-..@c269
..@c269:
	DQ	..@c88,..@c89-..@c88
	DB	4
	DD	..@c90-..@c88
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c270:
	DD	..@c272-..@c271
..@c271:
	DQ	..@c91,..@c92-..@c91
	DB	4
	DD	..@c93-..@c91
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c272:
	DD	..@c274-..@c273
..@c273:
	DQ	..@c94,..@c95-..@c94
	ALIGN 4,DB 0
..@c274:
	DD	..@c276-..@c275
..@c275:
	DQ	..@c96,..@c97-..@c96
	DB	4
	DD	..@c98-..@c96
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c276:
	DD	..@c278-..@c277
..@c277:
	DQ	..@c99,..@c100-..@c99
	DB	4
	DD	..@c101-..@c99
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c278:
	DD	..@c280-..@c279
..@c279:
	DQ	..@c102,..@c103-..@c102
	DB	4
	DD	..@c104-..@c102
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c280:
	DD	..@c282-..@c281
..@c281:
	DQ	..@c105,..@c106-..@c105
	DB	4
	DD	..@c107-..@c105
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c282:
	DD	..@c284-..@c283
..@c283:
	DQ	..@c108,..@c109-..@c108
	DB	4
	DD	..@c110-..@c108
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c284:
	DD	..@c286-..@c285
..@c285:
	DQ	..@c111,..@c112-..@c111
	DB	4
	DD	..@c113-..@c111
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c286:
	DD	..@c288-..@c287
..@c287:
	DQ	..@c114,..@c115-..@c114
	DB	4
	DD	..@c116-..@c114
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c288:
	DD	..@c290-..@c289
..@c289:
	DQ	..@c117,..@c118-..@c117
	DB	4
	DD	..@c119-..@c117
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c290:
	DD	..@c292-..@c291
..@c291:
	DQ	..@c120,..@c121-..@c120
	DB	4
	DD	..@c122-..@c120
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c292:
	DD	..@c294-..@c293
..@c293:
	DQ	..@c123,..@c124-..@c123
	DB	4
	DD	..@c125-..@c123
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c294:
	DD	..@c296-..@c295
..@c295:
	DQ	..@c126,..@c127-..@c126
	DB	4
	DD	..@c128-..@c126
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c296:
	DD	..@c298-..@c297
..@c297:
	DQ	..@c129,..@c130-..@c129
	DB	4
	DD	..@c131-..@c129
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c298:
	DD	..@c300-..@c299
..@c299:
	DQ	..@c132,..@c133-..@c132
	DB	4
	DD	..@c134-..@c132
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c135-..@c134
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c136-..@c135
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c300:
	DD	..@c302-..@c301
..@c301:
	DQ	..@c137,..@c138-..@c137
	DB	4
	DD	..@c139-..@c137
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c302:
	DD	..@c304-..@c303
..@c303:
	DQ	..@c140,..@c141-..@c140
	DB	4
	DD	..@c142-..@c140
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c304:
	DD	..@c306-..@c305
..@c305:
	DQ	..@c143,..@c144-..@c143
	DB	4
	DD	..@c145-..@c143
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c306:
	DD	..@c308-..@c307
..@c307:
	DQ	..@c146,..@c147-..@c146
	DB	4
	DD	..@c148-..@c146
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c308:
	DD	..@c310-..@c309
..@c309:
	DQ	..@c149,..@c150-..@c149
	ALIGN 4,DB 0
..@c310:
	DD	..@c312-..@c311
..@c311:
	DQ	..@c151,..@c152-..@c151
	DB	4
	DD	..@c153-..@c151
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c312:
	DD	..@c314-..@c313
..@c313:
	DQ	..@c154,..@c155-..@c154
	DB	4
	DD	..@c156-..@c154
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c314:
	DD	..@c316-..@c315
..@c315:
	DQ	..@c157,..@c158-..@c157
	DB	4
	DD	..@c159-..@c157
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c316:
	DD	..@c318-..@c317
..@c317:
	DQ	..@c160,..@c161-..@c160
	DB	4
	DD	..@c162-..@c160
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c318:
	DD	..@c320-..@c319
..@c319:
	DQ	..@c163,..@c164-..@c163
	DB	4
	DD	..@c165-..@c163
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c320:
	DD	..@c322-..@c321
..@c321:
	DQ	..@c166,..@c167-..@c166
	DB	4
	DD	..@c168-..@c166
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c322:
	DD	..@c324-..@c323
..@c323:
	DQ	..@c169,..@c170-..@c169
	DB	4
	DD	..@c171-..@c169
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c324:
	DD	..@c326-..@c325
..@c325:
	DQ	..@c172,..@c173-..@c172
	DB	4
	DD	..@c174-..@c172
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c175-..@c174
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c176-..@c175
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c326:
	DD	..@c328-..@c327
..@c327:
	DQ	..@c177,..@c178-..@c177
	DB	4
	DD	..@c179-..@c177
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c328:
	DD	..@c330-..@c329
..@c329:
	DQ	..@c180,..@c181-..@c180
	DB	4
	DD	..@c182-..@c180
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c183-..@c182
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c184-..@c183
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c330:
	DD	..@c332-..@c331
..@c331:
	DQ	..@c185,..@c186-..@c185
	DB	4
	DD	..@c187-..@c185
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c332:
	DD	..@c334-..@c333
..@c333:
	DQ	..@c188,..@c189-..@c188
	DB	4
	DD	..@c190-..@c188
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c191-..@c190
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c192-..@c191
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c334:
	DD	..@c336-..@c335
..@c335:
	DQ	..@c193,..@c194-..@c193
	DB	4
	DD	..@c195-..@c193
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c336:
	DD	..@c338-..@c337
..@c337:
	DQ	..@c196,..@c197-..@c196
	ALIGN 4,DB 0
..@c338:
; End asmlist al_dwarf_frame

