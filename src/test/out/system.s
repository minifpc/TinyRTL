	.file "system.pas"
# Begin asmlist al_procedures

.section .text.n_system_$$_dll_entry$tentryinformation$$boolean,"x"
.globl	SYSTEM_$$_DLL_ENTRY$TENTRYINFORMATION$$BOOLEAN
SYSTEM_$$_DLL_ENTRY$TENTRYINFORMATION$$BOOLEAN:
.globl	_FPC_DLL_Entry
_FPC_DLL_Entry:
.Lc1:
.seh_proc SYSTEM_$$_DLL_ENTRY$TENTRYINFORMATION$$BOOLEAN
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc3:
.seh_stackalloc 32
.seh_endprologue
	movb	$1,%bl
	movl	U_$SYSTEM_$$_DLLREASON(%rip),%eax
	testl	%eax,%eax
	je	.Lj5
	decl	%eax
	je	.Lj8
	jmp	.Lj6
	jmp	.Lj5
.Lj8:
	call	PASCALMAIN
.Lj6:
.Lj5:
	movb	%bl,%al
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc2:

.section .text.n_system_$$__maincrtstartup,"x"
.globl	SYSTEM_$$__MAINCRTSTARTUP
SYSTEM_$$__MAINCRTSTARTUP:
.globl	_mainCRTStartup
_mainCRTStartup:
.Lc4:
.seh_proc SYSTEM_$$__MAINCRTSTARTUP
	leaq	-40(%rsp),%rsp
.Lc6:
.seh_stackalloc 40
.seh_endprologue
	call	PASCALMAIN
	call	fpc_do_exit
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc5:

.section .text.n_system_$$__winmaincrtstartup,"x"
.globl	SYSTEM_$$__WINMAINCRTSTARTUP
SYSTEM_$$__WINMAINCRTSTARTUP:
.globl	_WinMainCRTStartup
_WinMainCRTStartup:
.Lc7:
.seh_proc SYSTEM_$$__WINMAINCRTSTARTUP
	leaq	-40(%rsp),%rsp
.Lc9:
.seh_stackalloc 40
.seh_endprologue
	call	PASCALMAIN
	call	fpc_do_exit
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc8:

.section .text.n_system_$$__fpc_dllmaincrtstartup$longint$longdword$pointer,"x"
.globl	SYSTEM_$$__FPC_DLLMAINCRTSTARTUP$LONGINT$LONGDWORD$POINTER
SYSTEM_$$__FPC_DLLMAINCRTSTARTUP$LONGINT$LONGDWORD$POINTER:
.globl	_DLLMainCRTStartup
_DLLMainCRTStartup:
.Lc10:
.seh_proc SYSTEM_$$__FPC_DLLMAINCRTSTARTUP$LONGINT$LONGDWORD$POINTER
	leaq	-40(%rsp),%rsp
.Lc12:
.seh_stackalloc 40
.seh_endprologue
	movl	%ecx,U_$SYSTEM_$$_SYSINSTANCE(%rip)
	movl	%edx,U_$SYSTEM_$$_DLLREASON(%rip)
	movq	%r8,U_$SYSTEM_$$_DLLPARAM(%rip)
	leaq	TC_$SYSTEM_$$_SYSINITENTRYINFORMATION(%rip),%rcx
	call	SYSTEM_$$_DLL_ENTRY$TENTRYINFORMATION$$BOOLEAN
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc11:

.section .text.n_system_$$__dllwinmaincrtstartup$longint$longdword$pointer,"x"
.globl	SYSTEM_$$__DLLWINMAINCRTSTARTUP$LONGINT$LONGDWORD$POINTER
SYSTEM_$$__DLLWINMAINCRTSTARTUP$LONGINT$LONGDWORD$POINTER:
.globl	_DLLWinMainCRTStartup
_DLLWinMainCRTStartup:
.Lc13:
.seh_proc SYSTEM_$$__DLLWINMAINCRTSTARTUP$LONGINT$LONGDWORD$POINTER
	leaq	-40(%rsp),%rsp
.Lc15:
.seh_stackalloc 40
.seh_endprologue
	movl	%ecx,%eax
	leaq	TC_$SYSTEM_$$_SYSINITENTRYINFORMATION(%rip),%rcx
	call	SYSTEM_$$_DLL_ENTRY$TENTRYINFORMATION$$BOOLEAN
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc14:

.section .text.n_system_$$_isconsoleapp$$boolean,"x"
.globl	SYSTEM_$$_ISCONSOLEAPP$$BOOLEAN
SYSTEM_$$_ISCONSOLEAPP$$BOOLEAN:
.Lc16:
.seh_proc SYSTEM_$$_ISCONSOLEAPP$$BOOLEAN
	leaq	-40(%rsp),%rsp
.Lc18:
.seh_stackalloc 40
.seh_endprologue
	call	_$dll$kernel32$GetConsoleWindow
	testl	%eax,%eax
	setneb	%al
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc17:

.section .text.n_fpc_do_exit,"x"
.globl	fpc_do_exit
fpc_do_exit:
.globl	FPC_DO_EXIT
FPC_DO_EXIT:
.Lc19:
.seh_proc fpc_do_exit
	leaq	-40(%rsp),%rsp
.Lc21:
.seh_stackalloc 40
.seh_endprologue
	call	fpc_finalizeunits
	xorl	%ecx,%ecx
	call	_$dll$kernel32$ExitProcess
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc20:

.section .text.n_fpc_initializeunits,"x"
.globl	fpc_initializeunits
fpc_initializeunits:
.globl	FPC_INITIALIZEUNITS
FPC_INITIALIZEUNITS:
.Lc22:
.seh_proc fpc_initializeunits
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc24:
.seh_stackalloc 40
.seh_endprologue
	cmpb	$0,TC_$SYSTEM_$$_IN_INITIALIZATION_CODE_EXE(%rip)
	jne	.Lj26
	movb	$1,TC_$SYSTEM_$$_IN_INITIALIZATION_CODE_EXE(%rip)
	call	SYSTEM_$$_ISCONSOLEAPP$$BOOLEAN
	testb	%al,%al
	je	.Lj28
	leaq	.Ld1(%rip),%rcx
	call	_$dll$msvcrt$printf
.Lj28:
	cmpq	$0,INITFINAL(%rip)
	jna	.Lj30
	movq	INITFINAL(%rip),%rdx
	leaq	_$SYSTEM$_Ld2(%rip),%rcx
	call	_$dll$msvcrt$printf
	movq	INITFINAL(%rip),%rax
	leaq	-1(%rax),%rbx
	cmpl	$1,%ebx
	jnae	.Lj32
	xorl	%esi,%esi
.Lj33:
	incl	%esi
	movl	%esi,%eax
	shlq	$4,%rax
	leaq	INITFINAL(%rip),%rdx
	cmpq	$0,(%rdx,%rax)
	je	.Lj37
	movl	%esi,%eax
	shlq	$4,%rax
	leaq	INITFINAL(%rip),%rdx
	movq	(%rdx,%rax),%rdx
	movq	%rsp,%rcx
	call	SYSTEM$_$fpc_initializeunits_$$_CALLPROCEDURE$TPROCEDURE
.Lj37:
	cmpl	%esi,%ebx
	jnbe	.Lj33
.Lj32:
.Lj30:
.Lj26:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc23:

.section .text.n_system$_$fpc_initializeunits_$$_callprocedure$tprocedure,"x"
SYSTEM$_$fpc_initializeunits_$$_CALLPROCEDURE$TPROCEDURE:
.Lc25:
.seh_proc SYSTEM$_$fpc_initializeunits_$$_CALLPROCEDURE$TPROCEDURE
	leaq	-40(%rsp),%rsp
.Lc27:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,32(%rsp)
	movq	%rdx,%rax
	testq	%rdx,%rdx
	je	.Lj39
	call	*%rax
.Lj39:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc26:

.section .text.n_fpc_libinitializeunits,"x"
.globl	fpc_libinitializeunits
fpc_libinitializeunits:
.globl	FPC_LIBINITIALIZEUNITS
FPC_LIBINITIALIZEUNITS:
.Lc28:
.seh_proc fpc_libinitializeunits
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc30:
.seh_stackalloc 40
.seh_endprologue
	cmpb	$0,TC_$SYSTEM_$$_IN_INITIALIZATION_CODE_DLL(%rip)
	jne	.Lj45
	movb	$1,TC_$SYSTEM_$$_IN_INITIALIZATION_CODE_DLL(%rip)
	call	SYSTEM_$$_ISCONSOLEAPP$$BOOLEAN
	testb	%al,%al
	je	.Lj47
	leaq	.Ld1(%rip),%rcx
	call	_$dll$msvcrt$printf
.Lj47:
	cmpq	$0,INITFINAL(%rip)
	jna	.Lj49
	movl	INITFINAL(%rip),%esi
	cmpl	$1,%esi
	jnae	.Lj51
	xorl	%ebx,%ebx
.Lj52:
	incl	%ebx
	movl	%ebx,%eax
	shlq	$4,%rax
	leaq	INITFINAL(%rip),%rdx
	cmpq	$0,(%rdx,%rax)
	je	.Lj56
	movl	%ebx,%eax
	shlq	$4,%rax
	leaq	INITFINAL(%rip),%rdx
	movq	(%rdx,%rax),%rdx
	movq	%rsp,%rcx
	call	SYSTEM$_$fpc_libinitializeunits_$$_CALLPROCEDURE$TPROCEDURE
.Lj56:
	cmpl	%ebx,%esi
	jnbe	.Lj52
.Lj51:
.Lj49:
.Lj45:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc29:

.section .text.n_system$_$fpc_libinitializeunits_$$_callprocedure$tprocedure,"x"
SYSTEM$_$fpc_libinitializeunits_$$_CALLPROCEDURE$TPROCEDURE:
.Lc31:
.seh_proc SYSTEM$_$fpc_libinitializeunits_$$_CALLPROCEDURE$TPROCEDURE
	leaq	-40(%rsp),%rsp
.Lc33:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,32(%rsp)
	movq	%rdx,%rax
	testq	%rdx,%rdx
	je	.Lj58
	call	*%rax
.Lj58:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc32:

.section .text.n_fpc_finalizeunits,"x"
.globl	fpc_finalizeunits
fpc_finalizeunits:
.globl	FPC_FINALIZEUNITS
FPC_FINALIZEUNITS:
.Lc34:
.seh_proc fpc_finalizeunits
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc36:
.seh_stackalloc 32
.seh_endprologue
	call	SYSTEM_$$_ISCONSOLEAPP$$BOOLEAN
	testb	%al,%al
	je	.Lj64
	leaq	_$SYSTEM$_Ld3(%rip),%rcx
	call	_$dll$msvcrt$printf
.Lj64:
	cmpq	$0,INITFINAL(%rip)
	jna	.Lj66
	movq	INITFINAL(%rip),%rdx
	leaq	_$SYSTEM$_Ld2(%rip),%rcx
	call	_$dll$msvcrt$printf
	movl	INITFINAL(%rip),%eax
	cmpl	$1,%eax
	jnae	.Lj68
	movl	%eax,%ebx
	incl	%ebx
.Lj69:
	decl	%ebx
	movl	%ebx,%eax
	shlq	$4,%rax
	leaq	INITFINAL(%rip),%rdx
	cmpq	$0,8(%rdx,%rax)
	je	.Lj73
	movl	%ebx,%eax
	shlq	$4,%rax
	leaq	INITFINAL(%rip),%rdx
	movq	8(%rdx,%rax),%rdx
	movq	%rsp,%rcx
	call	SYSTEM$_$fpc_finalizeunits_$$_CALLPROCEDURE$TPROCEDURE
.Lj73:
	cmpl	$1,%ebx
	jnbe	.Lj69
.Lj68:
.Lj66:
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc35:

.section .text.n_system$_$fpc_finalizeunits_$$_callprocedure$tprocedure,"x"
SYSTEM$_$fpc_finalizeunits_$$_CALLPROCEDURE$TPROCEDURE:
.Lc37:
.seh_proc SYSTEM$_$fpc_finalizeunits_$$_CALLPROCEDURE$TPROCEDURE
	leaq	-40(%rsp),%rsp
.Lc39:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,32(%rsp)
	movq	%rdx,%rax
	testq	%rdx,%rdx
	je	.Lj75
	call	*%rax
.Lj75:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc38:

.section .text.n_system_$$_sizebyte$$byte,"x"
SYSTEM_$$_SIZEBYTE$$BYTE:
.Lc40:
	movb	$1,%al
	movzbl	%al,%eax
	ret
.Lc41:

.section .text.n_system_$$_sizechar$$byte,"x"
SYSTEM_$$_SIZECHAR$$BYTE:
.Lc42:
	movb	$2,%al
	movzbl	%al,%eax
	ret
.Lc43:

.section .text.n_system_$$_sizeword$$byte,"x"
SYSTEM_$$_SIZEWORD$$BYTE:
.Lc44:
	movb	$4,%al
	movzbl	%al,%eax
	ret
.Lc45:

.section .text.n_system_$$_sizedword$$byte,"x"
SYSTEM_$$_SIZEDWORD$$BYTE:
.Lc46:
	movb	$8,%al
	movzbl	%al,%eax
	ret
.Lc47:

.section .text.n_system_$$_sizeqword$$byte,"x"
SYSTEM_$$_SIZEQWORD$$BYTE:
.Lc48:
	movb	$16,%al
	movzbl	%al,%eax
	ret
.Lc49:

.section .text.n_fpc_doneexception,"x"
.globl	fpc_doneexception
fpc_doneexception:
.globl	FPC_DONEEXCEPTION
FPC_DONEEXCEPTION:
.Lc50:
.seh_proc fpc_doneexception
	leaq	-40(%rsp),%rsp
.Lc52:
.seh_stackalloc 40
.seh_endprologue
	xorl	%eax,%eax
	leaq	_$SYSTEM$_Ld4(%rip),%r8
	leaq	_$SYSTEM$_Ld5(%rip),%rdx
	xorl	%ecx,%ecx
	movl	%eax,%r9d
	call	_$dll$user32$MessageBoxA
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc51:

.section .text.n_system_$$_fpc_emptymethod,"x"
.globl	SYSTEM_$$_FPC_EMPTYMETHOD
SYSTEM_$$_FPC_EMPTYMETHOD:
.globl	FPC_EMPTYMETHOD
FPC_EMPTYMETHOD:
.Lc53:
	ret
.Lc54:

.section .text.n_fpc_copy_proc,"x"
.globl	fpc_copy_proc
fpc_copy_proc:
.Lc55:
	movq	%rcx,%rax
	ret
.Lc56:

.section .text.n_fpc_emptychar,"x"
.globl	fpc_emptychar
fpc_emptychar:
.globl	FPC_EMPTYCHAR
FPC_EMPTYCHAR:
.Lc57:
.seh_proc fpc_emptychar
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc59:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rbx
	movl	$1,%edx
	call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
	cmpq	$0,(%rbx)
	je	.Lj95
	movq	(%rbx),%rcx
	xorl	%r8d,%r8d
	movl	$1,%edx
	call	SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR
	movq	(%rbx),%rdx
	movq	%rax,%rcx
	movl	$1,%r8d
	call	SYSTEM_$$_MOVE$formal$formal$LONGDWORD
	jmp	.Lj96
.Lj95:
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld6(%rip),%r8
	leaq	_$SYSTEM$_Ld7(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	movl	$1,%ecx
	call	_$dll$kernel32$ExitProcess
.Lj96:
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc58:

.section .text.n_fpc_addref,"x"
.globl	fpc_addref
fpc_addref:
.globl	FPC_ADDREF
FPC_ADDREF:
.Lc60:
	movq	%rcx,%rax
	ret
.Lc61:

.section .text.n_fpc_decref,"x"
.globl	fpc_decref
fpc_decref:
.globl	FPC_DECREF
FPC_DECREF:
.Lc62:
	movq	%rcx,%rax
	ret
.Lc63:

.section .text.n_fpc_ansistr_decr_ref,"x"
.globl	fpc_ansistr_decr_ref
fpc_ansistr_decr_ref:
.globl	FPC_ANSISTR_DECR_REF
FPC_ANSISTR_DECR_REF:
.Lc64:
	movq	%rcx,%rax
	ret
.Lc65:

.section .text.n_fpc_ansistr_incr_ref,"x"
.globl	fpc_ansistr_incr_ref
fpc_ansistr_incr_ref:
.globl	FPC_ANSISTR_INCR_REF
FPC_ANSISTR_INCR_REF:
.Lc66:
	movq	%rcx,%rax
	ret
.Lc67:

.section .text.n_system$_$fpc_char_to_ansistr$char$word$$ansistring_$$_fin$00000244,"x"
SYSTEM$_$fpc_char_to_ansistr$CHAR$WORD$$ANSISTRING_$$_fin$00000244:
.Lc68:
.seh_proc SYSTEM$_$fpc_char_to_ansistr$CHAR$WORD$$ANSISTRING_$$_fin$00000244
	pushq	%rbp
.seh_pushreg %rbp
.Lc70:
.Lc71:
	movq	%rcx,%rbp
.Lc72:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc69:

.section .text.n_fpc_char_to_ansistr,"x"
.globl	fpc_char_to_ansistr
fpc_char_to_ansistr:
.Lc73:
.seh_proc fpc_char_to_ansistr
	pushq	%rbp
.seh_pushreg %rbp
.Lc75:
.Lc76:
	movq	%rsp,%rbp
.Lc77:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
	movq	%rbx,-24(%rbp)
	movq	%rsi,-16(%rbp)
.seh_savereg %rbx, 40
.seh_savereg %rsi, 48
.seh_endprologue
	movq	%rcx,%rbx
	movb	%dl,%sil
	movq	$0,-8(%rbp)
.Lj113:
	nop
.Lj109:
	leaq	-8(%rbp),%rcx
	movl	$1,%edx
	call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
	movzbl	%sil,%edx
	movq	-8(%rbp),%rcx
	movl	$1,%r8d
	call	_$dll$msvcrt$memset
	movq	%rbx,%rcx
	movq	-8(%rbp),%rdx
	call	fpc_ansistr_assign
.Lj111:
	nop
.Lj110:
	movq	%rbp,%rcx
	call	SYSTEM$_$fpc_char_to_ansistr$CHAR$WORD$$ANSISTRING_$$_fin$00000244
	movq	-24(%rbp),%rbx
	movq	-16(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj109
	.rva	.Lj110
	.rva	SYSTEM$_$fpc_char_to_ansistr$CHAR$WORD$$ANSISTRING_$$_fin$00000244

.section .text.n_fpc_char_to_ansistr,"x"
.seh_endproc
.Lc74:

.section .text.n_fpc_ansistr_unique,"x"
.globl	fpc_ansistr_unique
fpc_ansistr_unique:
.Lc78:
	movq	(%rcx),%rax
	cmpq	$0,(%rcx)
	je	.Lj114
	movq	(%rcx),%rax
.Lj114:
	ret
.Lc79:

.section .text.n_system$_$fpc_pchar_to_ansistr$pchar$word$$ansistring_$$_fin$00000245,"x"
SYSTEM$_$fpc_pchar_to_ansistr$PCHAR$WORD$$ANSISTRING_$$_fin$00000245:
.Lc80:
.seh_proc SYSTEM$_$fpc_pchar_to_ansistr$PCHAR$WORD$$ANSISTRING_$$_fin$00000245
	pushq	%rbp
.seh_pushreg %rbp
.Lc82:
.Lc83:
	movq	%rcx,%rbp
.Lc84:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc81:

.section .text.n_fpc_pchar_to_ansistr,"x"
.globl	fpc_pchar_to_ansistr
fpc_pchar_to_ansistr:
.Lc85:
.seh_proc fpc_pchar_to_ansistr
	pushq	%rbp
.seh_pushreg %rbp
.Lc87:
.Lc88:
	movq	%rsp,%rbp
.Lc89:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
	movq	%rbx,-24(%rbp)
	movq	%rsi,-16(%rbp)
.seh_savereg %rbx, 40
.seh_savereg %rsi, 48
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rsi
	movq	$0,-8(%rbp)
.Lj126:
	nop
.Lj122:
	movq	%rsi,%rcx
	call	_$dll$kernel32$lstrlenA
	incl	%eax
	movl	%eax,%ecx
	call	_$dll$ucrtbase$malloc
	movq	%rax,%rdx
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_assign
	movq	-8(%rbp),%rcx
	testq	%rcx,%rcx
	jne	.Lj127
	leaq	FPC_EMPTYCHAR(%rip),%rcx
.Lj127:
	movq	%rsi,%rdx
	call	_$dll$ucrtbase$strcpy
	movq	%rbx,%rcx
	movq	-8(%rbp),%rdx
	call	fpc_ansistr_assign
.Lj124:
	nop
.Lj123:
	movq	%rbp,%rcx
	call	SYSTEM$_$fpc_pchar_to_ansistr$PCHAR$WORD$$ANSISTRING_$$_fin$00000245
	movq	-24(%rbp),%rbx
	movq	-16(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj122
	.rva	.Lj123
	.rva	SYSTEM$_$fpc_pchar_to_ansistr$PCHAR$WORD$$ANSISTRING_$$_fin$00000245

.section .text.n_fpc_pchar_to_ansistr,"x"
.seh_endproc
.Lc86:

.section .text.n_fpc_ansistr_assign,"x"
.globl	fpc_ansistr_assign
fpc_ansistr_assign:
.globl	FPC_ANSISTR_ASSIGN
FPC_ANSISTR_ASSIGN:
.Lc90:
.seh_proc fpc_ansistr_assign
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-48(%rsp),%rsp
.Lc92:
.seh_stackalloc 48
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,32(%rsp)
	leaq	32(%rsp),%rcx
	testq	%rcx,%rcx
	jne	.Lj130
	leaq	FPC_EMPTYCHAR(%rip),%rcx
.Lj130:
	call	_$dll$kernel32$lstrlenA
	leal	1(%eax),%ecx
	call	_$dll$ucrtbase$malloc
	movq	%rax,(%rbx)
	movq	%rbx,%rcx
	testq	%rbx,%rbx
	jne	.Lj131
	leaq	FPC_EMPTYCHAR(%rip),%rcx
.Lj131:
	leaq	32(%rsp),%rdx
	testq	%rdx,%rdx
	jne	.Lj132
	leaq	FPC_EMPTYCHAR(%rip),%rdx
.Lj132:
	call	_$dll$ucrtbase$strcpy
	nop
	leaq	48(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc91:

.section .text.n_fpc_ansistr_concat,"x"
.globl	fpc_ansistr_concat
fpc_ansistr_concat:
.Lc93:
.seh_proc fpc_ansistr_concat
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	leaq	-56(%rsp),%rsp
.Lc95:
.seh_stackalloc 56
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rsi
	movq	%r8,%rdi
	movq	%rsi,%rcx
	testq	%rsi,%rsi
	jne	.Lj135
	leaq	FPC_EMPTYCHAR(%rip),%rcx
.Lj135:
	call	_$dll$kernel32$lstrlenA
	movl	%eax,%r12d
	movq	%rdi,%rcx
	testq	%rdi,%rdi
	jne	.Lj136
	leaq	FPC_EMPTYCHAR(%rip),%rcx
.Lj136:
	call	_$dll$kernel32$lstrlenA
	addl	%r12d,%eax
	leal	1(%eax),%ecx
	call	_$dll$ucrtbase$malloc
	movq	%rax,%rdx
	movq	%rbx,%rcx
	call	fpc_ansistr_assign
	movq	%rsi,%rdx
	testq	%rsi,%rsi
	jne	.Lj137
	leaq	FPC_EMPTYCHAR(%rip),%rdx
.Lj137:
	movq	%rsi,%rcx
	call	_$dll$ucrtbase$strcpy
	movq	%rdi,%rdx
	testq	%rdi,%rdi
	jne	.Lj138
	leaq	FPC_EMPTYCHAR(%rip),%rdx
.Lj138:
	movq	%rsi,%rcx
	call	_$dll$ucrtbase$strcat
	movq	(%rbx),%rcx
	testq	%rcx,%rcx
	jne	.Lj139
	leaq	FPC_EMPTYCHAR(%rip),%rcx
.Lj139:
	movq	%rsi,%rdx
	call	_$dll$ucrtbase$strcpy
	nop
	leaq	56(%rsp),%rsp
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc94:

.section .text.n_fpc_ansistr_concat_multi,"x"
.globl	fpc_ansistr_concat_multi
fpc_ansistr_concat_multi:
.Lc96:
.seh_proc fpc_ansistr_concat_multi
	pushq	%rbp
.seh_pushreg %rbp
.Lc98:
.Lc99:
	movq	%rsp,%rbp
.Lc100:
.seh_endprologue
	movq	%rcx,%rax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc97:

.section .text.n_fpc_ansistr_compare_equal,"x"
.globl	fpc_ansistr_compare_equal
fpc_ansistr_compare_equal:
.globl	FPC_ANSISTR_COMPARE_EQUAL
FPC_ANSISTR_COMPARE_EQUAL:
.Lc101:
.seh_proc fpc_ansistr_compare_equal
	leaq	-40(%rsp),%rsp
.Lc103:
.seh_stackalloc 40
.seh_endprologue
	call	_$dll$msvcrt$strcmp
	testl	%eax,%eax
	jne	.Lj145
	movl	$1,%eax
	jmp	.Lj146
.Lj145:
	xorl	%eax,%eax
.Lj146:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc102:

.section .text.n_system$_$tvmt_$__$$_getvparent$$pvmt,"x"
.globl	SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT
SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT:
.Lc104:
	xorl	%eax,%eax
	ret
.Lc105:

.section .text.n_fpc_get_input,"x"
.globl	fpc_get_input
fpc_get_input:
.Lc106:
	xorl	%eax,%eax
	ret
.Lc107:

.section .text.n_fpc_readln_end,"x"
.globl	fpc_readln_end
fpc_readln_end:
.globl	FPC_READLN_END
FPC_READLN_END:
.Lc108:
	movq	%rcx,%rax
	ret
.Lc109:

.section .text.n_fpc_iocheck,"x"
.globl	fpc_iocheck
fpc_iocheck:
.Lc110:
	ret
.Lc111:

.section .text.n_fpc_help_constructor,"x"
.globl	fpc_help_constructor
fpc_help_constructor:
.Lc112:
	xorl	%eax,%eax
	ret
.Lc113:

.section .text.n_fpc_help_destructor,"x"
.globl	fpc_help_destructor
fpc_help_destructor:
.Lc114:
	movq	%rcx,%rax
	ret
.Lc115:

.section .text.n_fpc_help_fail,"x"
.globl	fpc_help_fail
fpc_help_fail:
.Lc116:
	movq	%rcx,%rax
	ret
.Lc117:

.section .text.n_fpc_reraise,"x"
.globl	fpc_reraise
fpc_reraise:
.Lc118:
.seh_proc fpc_reraise
	leaq	-40(%rsp),%rsp
.Lc120:
.seh_stackalloc 40
.seh_endprologue
	xorl	%eax,%eax
	leaq	_$SYSTEM$_Ld8(%rip),%r8
	leaq	_$SYSTEM$_Ld9(%rip),%rdx
	xorl	%ecx,%ecx
	movl	%eax,%r9d
	call	_$dll$user32$MessageBoxA
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc119:

.section .text.n_fpc_finalize,"x"
.globl	fpc_finalize
fpc_finalize:
.Lc121:
	movq	%rcx,%rax
	ret
.Lc122:

.section .text.n_fpc_write_end,"x"
.globl	fpc_write_end
fpc_write_end:
.Lc123:
	movq	%rcx,%rax
	ret
.Lc124:

.section .text.n_fpc_writeln_end,"x"
.globl	fpc_writeln_end
fpc_writeln_end:
.Lc125:
.seh_proc fpc_writeln_end
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-56(%rsp),%rsp
.Lc127:
.seh_stackalloc 56
.seh_endprologue
	leaq	_$SYSTEM$_Ld10(%rip),%rbx
	movq	$0,32(%rsp)
	movq	%rbx,%rcx
	call	_$dll$kernel32$lstrlenA
	leal	1(%eax),%esi
	movl	$4294967285,%ecx
	call	_$dll$kernel32$GetStdHandle
	movl	%eax,%ecx
	leaq	40(%rsp),%r9
	movq	%rbx,%rdx
	movl	%esi,%r8d
	call	_$dll$kernel32$WriteConsoleA
	nop
	leaq	56(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc126:

.section .text.n_fpc_get_output,"x"
.globl	fpc_get_output
fpc_get_output:
.Lc128:
	xorl	%eax,%eax
	ret
.Lc129:

.section .text.n_fpc_write_text_shortstr,"x"
.globl	fpc_write_text_shortstr
fpc_write_text_shortstr:
.globl	FPC_WRITE_TEXT_SHORTSTR
FPC_WRITE_TEXT_SHORTSTR:
.Lc130:
.seh_proc fpc_write_text_shortstr
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-48(%rsp),%rsp
.Lc132:
.seh_stackalloc 48
.seh_endprologue
	movl	%ecx,%eax
	movq	%r8,%rbx
	movq	$0,32(%rsp)
	movl	$4294967285,%ecx
	call	_$dll$kernel32$GetStdHandle
	movl	%eax,%ecx
	movzbl	(%rbx),%r8d
	leaq	1(%rbx),%rdx
	leaq	40(%rsp),%r9
	call	_$dll$kernel32$WriteConsoleA
	nop
	leaq	48(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc131:

.section .text.n_system_$$_move$formal$formal$longdword,"x"
.globl	SYSTEM_$$_MOVE$formal$formal$LONGDWORD
SYSTEM_$$_MOVE$formal$formal$LONGDWORD:
.globl	FPC_move
FPC_move:
.Lc133:
.seh_proc SYSTEM_$$_MOVE$formal$formal$LONGDWORD
	leaq	-40(%rsp),%rsp
.Lc135:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
	movq	%rdx,%rcx
	movq	%rax,%rdx
	call	_$dll$msvcrt$memmove
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc134:

.section .text.n_system_$$_showmessage$pchar,"x"
.globl	SYSTEM_$$_SHOWMESSAGE$PCHAR
SYSTEM_$$_SHOWMESSAGE$PCHAR:
.Lc136:
.seh_proc SYSTEM_$$_SHOWMESSAGE$PCHAR
	leaq	-40(%rsp),%rsp
.Lc138:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rdx
	movl	$64,%r9d
	leaq	_$SYSTEM$_Ld11(%rip),%r8
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc137:

.section .text.n_system_$$_showwarn$pchar,"x"
.globl	SYSTEM_$$_SHOWWARN$PCHAR
SYSTEM_$$_SHOWWARN$PCHAR:
.Lc139:
.seh_proc SYSTEM_$$_SHOWWARN$PCHAR
	leaq	-40(%rsp),%rsp
.Lc141:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rdx
	movl	$48,%r9d
	leaq	_$SYSTEM$_Ld12(%rip),%r8
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc140:

.section .text.n_system_$$_showerror$pchar,"x"
.globl	SYSTEM_$$_SHOWERROR$PCHAR
SYSTEM_$$_SHOWERROR$PCHAR:
.Lc142:
.seh_proc SYSTEM_$$_SHOWERROR$PCHAR
	leaq	-40(%rsp),%rsp
.Lc144:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rdx
	movl	$48,%r9d
	leaq	_$SYSTEM$_Ld6(%rip),%r8
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc143:

.section .text.n_system_$$_showinfo$pchar,"x"
.globl	SYSTEM_$$_SHOWINFO$PCHAR
SYSTEM_$$_SHOWINFO$PCHAR:
.Lc145:
.seh_proc SYSTEM_$$_SHOWINFO$PCHAR
	leaq	-40(%rsp),%rsp
.Lc147:
.seh_stackalloc 40
.seh_endprologue
	call	SYSTEM_$$_SHOWMESSAGE$PCHAR
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc146:

.section .text.n_system_$$_fillchar$formal$qword$char,"x"
.globl	SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR
SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR:
.Lc148:
	leaq	-1(%rdx),%rax
	movq	$-1,%rdx
.Lj185:
	incq	%rdx
	movb	%r8b,(%rcx)
	incq	%rcx
	cmpq	%rdx,%rax
	jnbe	.Lj185
	ret
.Lc149:

.section .text.n_system_$$_freemem$pointer,"x"
.globl	SYSTEM_$$_FREEMEM$POINTER
SYSTEM_$$_FREEMEM$POINTER:
.Lc150:
.seh_proc SYSTEM_$$_FREEMEM$POINTER
	leaq	-40(%rsp),%rsp
.Lc152:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
	cmpq	$0,(%rax)
	je	.Lj191
	movq	(%rax),%rcx
	movl	$32768,%r8d
	xorl	%edx,%edx
	call	_$dll$kernel32$VirtualAlloc
.Lj191:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc151:

.section .text.n_system_$$_getmem$pointer$longdword,"x"
.globl	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
SYSTEM_$$_GETMEM$POINTER$LONGDWORD:
.Lc153:
.seh_proc SYSTEM_$$_GETMEM$POINTER$LONGDWORD
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc155:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rbx
	movl	$4,%r9d
	movl	$12288,%r8d
	xorl	%ecx,%ecx
	call	_$dll$kernel32$VirtualAlloc
	movq	%rax,(%rbx)
	testq	%rax,%rax
	jne	.Lj195
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld6(%rip),%r8
	leaq	_$SYSTEM$_Ld13(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	movl	$1,%ecx
	call	_$dll$kernel32$ExitProcess
.Lj195:
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc154:

.section .text.n_system_$$_lockfile$pointer$$boolean,"x"
.globl	SYSTEM_$$_LOCKFILE$POINTER$$BOOLEAN
SYSTEM_$$_LOCKFILE$POINTER$$BOOLEAN:
.Lc156:
.seh_proc SYSTEM_$$_LOCKFILE$POINTER$$BOOLEAN
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-48(%rsp),%rsp
.Lc158:
.seh_stackalloc 48
.seh_endprologue
	xorb	%bl,%bl
	movl	$0,32(%rsp)
	xorl	%r8d,%r8d
	xorl	%edx,%edx
	call	_$dll$kernel32$LockFile
	testb	%al,%al
	jne	.Lj199
	leaq	_$SYSTEM$_Ld14(%rip),%rcx
	call	SYSTEM_$$_SHOWERROR$PCHAR
	jmp	.Lj196
.Lj199:
	movb	$1,%bl
.Lj196:
	movb	%bl,%al
	nop
	leaq	48(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc157:

.section .text.n_system_$$_writefile$longword$pchar$$qword,"x"
.globl	SYSTEM_$$_WRITEFILE$LONGWORD$PCHAR$$QWORD
SYSTEM_$$_WRITEFILE$LONGWORD$PCHAR$$QWORD:
.Lc159:
.seh_proc SYSTEM_$$_WRITEFILE$LONGWORD$PCHAR$$QWORD
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc161:
.seh_stackalloc 40
.seh_endprologue
	movl	%ecx,%ebx
	movq	%rdx,%rsi
	movq	$0,32(%rsp)
	movq	%rsi,%rcx
	call	_$dll$kernel32$lstrlenA
	movl	%eax,%r8d
	movq	%rsi,%rdx
	xorq	%r9,%r9
	movl	%ebx,%ecx
	call	_$dll$kernel32$WriteFile
	movl	$1,%eax
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc160:

.section .text.n_system_$$_writefile$longword$pointer$$qword,"x"
.globl	SYSTEM_$$_WRITEFILE$LONGWORD$POINTER$$QWORD
SYSTEM_$$_WRITEFILE$LONGWORD$POINTER$$QWORD:
.Lc162:
.seh_proc SYSTEM_$$_WRITEFILE$LONGWORD$POINTER$$QWORD
	leaq	-56(%rsp),%rsp
.Lc164:
.seh_stackalloc 56
.seh_endprologue
	movq	%rdx,40(%rsp)
	movq	$0,32(%rsp)
	xorq	%r9,%r9
	leaq	40(%rsp),%rdx
	movl	$8,%r8d
	call	_$dll$kernel32$WriteFile
	movl	$1,%eax
	nop
	leaq	56(%rsp),%rsp
	ret
.seh_endproc
.Lc163:

.section .text.n_system_$$_filecreate$pchar$boolean$$pointer,"x"
.globl	SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER
SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER:
.Lc165:
.seh_proc SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	pushq	%r12
.seh_pushreg %r12
	pushq	%r13
.seh_pushreg %r13
	leaq	-64(%rsp),%rsp
.Lc167:
.seh_stackalloc 64
.seh_endprologue
	movq	%rcx,%rbx
	movb	%dl,%sil
	leaq	_$SYSTEM$_Ld15(%rip),%rcx
	call	SYSTEM_$$_SHOWINFO$PCHAR
	movq	%rbx,%rcx
	call	_$dll$shlwapi$PathFileExistsA
	movq	%rax,%rdi
	cmpl	$1,%edi
	jne	.Lj207
	testb	%sil,%sil
	jne	.Lj209
	xorl	%r12d,%r12d
	leaq	56(%rsp),%rcx
	movl	$255,%edx
	call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
	movq	56(%rsp),%rcx
	leaq	_$SYSTEM$_Ld16(%rip),%rdx
	call	_$dll$ucrtbase$strcpy
	movq	%rbx,%rdx
	movq	56(%rsp),%rcx
	call	_$dll$ucrtbase$strcat
	movq	56(%rsp),%rcx
	leaq	_$SYSTEM$_Ld17(%rip),%rdx
	call	_$dll$ucrtbase$strcat
	movq	56(%rsp),%rcx
	leaq	_$SYSTEM$_Ld18(%rip),%rdx
	call	_$dll$ucrtbase$strcat
	movq	56(%rsp),%rdx
	movl	$4,%r9d
	leaq	_$SYSTEM$_Ld11(%rip),%r8
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	movl	%eax,%edi
	cmpl	$6,%edi
	jne	.Lj211
	movq	%rbx,%rcx
	call	SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN
	movq	%rbx,%rcx
	movb	$1,%dl
	call	SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER
	movq	%rax,%r13
	call	_$dll$kernel32$GetLastError
	movl	%eax,%r12d
.Lj211:
	leaq	56(%rsp),%rcx
	call	SYSTEM_$$_FREEMEM$POINTER
	testl	%r12d,%r12d
	je	.Lj219
	leaq	_$SYSTEM$_Ld19(%rip),%rcx
	call	SYSTEM_$$_SHOWERROR$PCHAR
	jmp	.Lj204
	jmp	.Lj219
.Lj209:
	testb	%sil,%sil
	je	.Lj219
	movq	%rbx,%rcx
	call	_$dll$kernel32$DeleteFileA
	movb	%al,%dl
	testb	%dil,%dil
	jne	.Lj218
	leaq	_$SYSTEM$_Ld20(%rip),%rcx
	call	SYSTEM_$$_SHOWMESSAGE$PCHAR
.Lj218:
	movq	$0,48(%rsp)
	movl	$128,40(%rsp)
	movl	$1,32(%rsp)
	movq	%rbx,%rcx
	xorq	%r9,%r9
	movl	$3,%r8d
	movl	$1073741824,%edx
	call	_$dll$kernel32$CreateFileA
	movq	%rax,%r13
	movq	%r13,%rsi
	jmp	.Lj204
	jmp	.Lj219
.Lj207:
	movq	$0,48(%rsp)
	movl	$128,40(%rsp)
	movl	$1,32(%rsp)
	movq	%rbx,%rcx
	xorq	%r9,%r9
	movl	$3,%r8d
	movl	$1073741824,%edx
	call	_$dll$kernel32$CreateFileA
	movq	%rax,%r13
	call	_$dll$kernel32$GetLastError
	testl	%eax,%eax
	je	.Lj221
	leaq	_$SYSTEM$_Ld19(%rip),%rcx
	call	SYSTEM_$$_SHOWERROR$PCHAR
	jmp	.Lj204
.Lj221:
.Lj219:
	movl	%r13d,%eax
	cmpl	$4294967295,%eax
	jne	.Lj223
	leaq	56(%rsp),%rcx
	movl	$255,%edx
	call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
	movq	56(%rsp),%rcx
	leaq	_$SYSTEM$_Ld16(%rip),%rdx
	call	_$dll$ucrtbase$strcpy
	movq	%rbx,%rdx
	movq	56(%rsp),%rcx
	call	_$dll$ucrtbase$strcat
	movq	56(%rsp),%rcx
	leaq	_$SYSTEM$_Ld21(%rip),%rdx
	call	_$dll$ucrtbase$strcat
	movq	56(%rsp),%rcx
	call	SYSTEM_$$_SHOWERROR$PCHAR
	leaq	56(%rsp),%rcx
	call	SYSTEM_$$_FREEMEM$POINTER
	xorl	%esi,%esi
	jmp	.Lj204
.Lj223:
	movq	%r13,%rsi
.Lj204:
	movq	%rsi,%rax
	nop
	leaq	64(%rsp),%rsp
	popq	%r13
	popq	%r12
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc166:

.section .text.n_system_$$_filecreate$rawbytestring$boolean$$pointer,"x"
.globl	SYSTEM_$$_FILECREATE$RAWBYTESTRING$BOOLEAN$$POINTER
SYSTEM_$$_FILECREATE$RAWBYTESTRING$BOOLEAN$$POINTER:
.Lc168:
.seh_proc SYSTEM_$$_FILECREATE$RAWBYTESTRING$BOOLEAN$$POINTER
	leaq	-40(%rsp),%rsp
.Lc170:
.seh_stackalloc 40
.seh_endprologue
	testq	%rcx,%rcx
	jne	.Lj226
	leaq	FPC_EMPTYCHAR(%rip),%rcx
.Lj226:
	call	SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc169:

.section .text.n_system_$$_filedelete$pchar$$boolean,"x"
.globl	SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN
SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN:
.Lc171:
.seh_proc SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN
	leaq	-40(%rsp),%rsp
.Lc173:
.seh_stackalloc 40
.seh_endprologue
	call	_$dll$kernel32$DeleteFileA
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc172:

.section .text.n_system_$$_filedelete$rawbytestring$$boolean,"x"
.globl	SYSTEM_$$_FILEDELETE$RAWBYTESTRING$$BOOLEAN
SYSTEM_$$_FILEDELETE$RAWBYTESTRING$$BOOLEAN:
.Lc174:
.seh_proc SYSTEM_$$_FILEDELETE$RAWBYTESTRING$$BOOLEAN
	leaq	-40(%rsp),%rsp
.Lc176:
.seh_stackalloc 40
.seh_endprologue
	testq	%rcx,%rcx
	jne	.Lj231
	leaq	FPC_EMPTYCHAR(%rip),%rcx
.Lj231:
	call	SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc175:

.section .text.n_system_$$_fileseek$longword$longdword$longdword$$longdword,"x"
.globl	SYSTEM_$$_FILESEEK$LONGWORD$LONGDWORD$LONGDWORD$$LONGDWORD
SYSTEM_$$_FILESEEK$LONGWORD$LONGDWORD$LONGDWORD$$LONGDWORD:
.Lc177:
.seh_proc SYSTEM_$$_FILESEEK$LONGWORD$LONGDWORD$LONGDWORD$$LONGDWORD
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc179:
.seh_stackalloc 32
.seh_endprologue
	movl	%r8d,%r9d
	xorq	%r8,%r8
	call	_$dll$kernel32$SetFilePointer
	movl	%eax,%ebx
	call	_$dll$kernel32$GetLastError
	cmpl	$4294967295,%ebx
	jne	.Lj235
	testl	%eax,%eax
	je	.Lj235
	leaq	_$SYSTEM$_Ld22(%rip),%rcx
	call	SYSTEM_$$_SHOWERROR$PCHAR
	movl	$4294967295,%eax
	jmp	.Lj232
.Lj235:
	movl	%ebx,%eax
.Lj232:
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc178:

.section .text.n_system_$$_fileseek$pointer$longdword$longdword$$longdword,"x"
.globl	SYSTEM_$$_FILESEEK$POINTER$LONGDWORD$LONGDWORD$$LONGDWORD
SYSTEM_$$_FILESEEK$POINTER$LONGDWORD$LONGDWORD$$LONGDWORD:
.Lc180:
.seh_proc SYSTEM_$$_FILESEEK$POINTER$LONGDWORD$LONGDWORD$$LONGDWORD
	leaq	-40(%rsp),%rsp
.Lc182:
.seh_stackalloc 40
.seh_endprologue
	call	SYSTEM_$$_FILESEEK$LONGWORD$LONGDWORD$LONGDWORD$$LONGDWORD
	movl	%edx,%eax
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc181:

.section .text.n_system$_$tobject_$__$$_create$$tobject,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT:
.Lc183:
.seh_proc SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
	pushq	%rbp
.seh_pushreg %rbp
.Lc185:
.Lc186:
	movq	%rsp,%rbp
.Lc187:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
	movq	%rcx,-16(%rbp)
	movq	%rdx,-8(%rbp)
	cmpq	$1,%rdx
	jne	.Lj242
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rax,%rcx
	call	*128(%rdx)
	movq	%rax,-16(%rbp)
.Lj242:
	cmpq	$0,-16(%rbp)
	je	.Lj239
.Lj250:
	nop
.Lj249:
	movq	$-1,-24(%rbp)
	movq	-16(%rbp),%rdx
	leaq	VMT_$SYSTEM_$$_TOBJECT(%rip),%rcx
	leaq	VMT_$SYSTEM_$$_TOBJECT(%rip),%rax
	call	*120(%rax)
	movq	$1,-24(%rbp)
	cmpq	$0,-16(%rbp)
	je	.Lj247
	cmpq	$0,-8(%rbp)
	je	.Lj247
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*168(%rax)
	jmp	.Lj247
.Lj246:
	cmpq	$0,-8(%rbp)
	je	.Lj256
	movq	-24(%rbp),%rdx
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*96(%rax)
.Lj256:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj257:
	nop
.Lj247:
.Lj239:
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj249
	.rva	.Lj246
	.rva	.Lj247

.section .text.n_system$_$tobject_$__$$_create$$tobject,"x"
.seh_endproc
.Lc184:

.section .text.n_system$_$tobject_$__$$_destroy,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_DESTROY
SYSTEM$_$TOBJECT_$__$$_DESTROY:
.Lc188:
.seh_proc SYSTEM$_$TOBJECT_$__$$_DESTROY
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc190:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rsi
	testq	%rsi,%rsi
	jng	.Lj261
	movq	%rbx,%rcx
	movq	(%rbx),%rax
	call	*176(%rax)
.Lj261:
	movq	(%rbx),%rcx
	movq	(%rbx),%rax
	call	*136(%rax)
	testq	%rbx,%rbx
	je	.Lj263
	testq	%rsi,%rsi
	je	.Lj263
	movq	(%rbx),%rcx
	movq	(%rbx),%rax
	call	*136(%rax)
.Lj263:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc189:

.section .text.n_system$_$tobject_$__$$_afterconstruction,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION:
.Lc191:
	movq	%rcx,%rax
	ret
.Lc192:

.section .text.n_system$_$tobject_$__$$_beforedestruction,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION:
.Lc193:
	movq	%rcx,%rax
	ret
.Lc194:

.section .text.n_system$_$tobject_$__$$_classname$$pchar,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$PCHAR
SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$PCHAR:
.Lc195:
	leaq	_$SYSTEM$_Ld23(%rip),%rax
	ret
.Lc196:

.section .text.n_system$_$tobject_$__$$_getinstance$$tobject,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_GETINSTANCE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_GETINSTANCE$$TOBJECT:
.Lc197:
.seh_proc SYSTEM$_$TOBJECT_$__$$_GETINSTANCE$$TOBJECT
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc199:
.seh_stackalloc 32
.seh_endprologue
	xorl	%ebx,%ebx
	cmpq	$0,U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE(%rip)
	jne	.Lj274
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld6(%rip),%r8
	leaq	_$SYSTEM$_Ld24(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	jmp	.Lj271
.Lj274:
	movq	U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE(%rip),%rbx
.Lj271:
	movq	%rbx,%rax
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc198:

.section .text.n_system$_$tobject_$__$$_classparent$$tobject,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT:
.Lc200:
	xorl	%eax,%eax
	ret
.Lc201:

.section .text.n_system$_$tobject_$__$$_free,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_FREE
SYSTEM$_$TOBJECT_$__$$_FREE:
.Lc202:
.seh_proc SYSTEM$_$TOBJECT_$__$$_FREE
	leaq	-40(%rsp),%rsp
.Lc204:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
	testq	%rcx,%rcx
	je	.Lj280
	movq	(%rax),%rcx
	movq	(%rax),%rax
	call	*136(%rax)
.Lj280:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc203:

.section .text.n_system$_$tobject_$__$$_newinstance$$tobject,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT:
.Lc205:
.seh_proc SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	leaq	-40(%rsp),%rsp
.Lc207:
.seh_stackalloc 40
.seh_endprologue
	leaq	U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE(%rip),%rcx
	movl	$8,%edx
	call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
	movq	%rdx,%rax
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc206:

.section .text.n_system$_$tobject_$__$$_initinstance$pointer,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER:
.Lc208:
	movq	%rcx,(%rdx)
	ret
.Lc209:

.section .text.n_system$_$tobject_$__$$_freeinstance,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE:
.Lc210:
.seh_proc SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	leaq	-40(%rsp),%rsp
.Lc212:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,32(%rsp)
	xorl	%eax,%eax
	leaq	_$SYSTEM$_Ld25(%rip),%r8
	leaq	_$SYSTEM$_Ld26(%rip),%rdx
	xorl	%ecx,%ecx
	movl	%eax,%r9d
	call	_$dll$user32$MessageBoxA
	leaq	U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE(%rip),%rcx
	call	SYSTEM_$$_FREEMEM$POINTER
	cmpq	$0,32(%rsp)
	je	.Lj288
	leaq	32(%rsp),%rcx
	call	SYSTEM_$$_FREEMEM$POINTER
.Lj288:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc211:

.section .text.n_system_$$_safecallexception$pointer$pointer$$shortdword,"x"
SYSTEM_$$_SAFECALLEXCEPTION$POINTER$POINTER$$SHORTDWORD:
.Lc213:
.seh_proc SYSTEM_$$_SAFECALLEXCEPTION$POINTER$POINTER$$SHORTDWORD
	leaq	-40(%rsp),%rsp
.Lc215:
.seh_stackalloc 40
.seh_endprologue
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld25(%rip),%r8
	leaq	_$SYSTEM$_Ld27(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	movl	%edx,%eax
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc214:

.section .text.n_system$_$tobject_$__$$_safecallexception$tobject$pointer$$shortdword,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD:
.Lc216:
.seh_proc SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	leaq	-40(%rsp),%rsp
.Lc218:
.seh_stackalloc 40
.seh_endprologue
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld28(%rip),%r8
	leaq	_$SYSTEM$_Ld29(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	xorl	%eax,%eax
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc217:

.section .text.n_system$_$tobject_$__$$_defaulthandler$formal,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal
SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal:
.Lc219:
.seh_proc SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal
	leaq	-40(%rsp),%rsp
.Lc221:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld30(%rip),%r8
	leaq	_$SYSTEM$_Ld31(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc220:

.section .text.n_system$_$tlist_$__$$_create$$tlist,"x"
.globl	SYSTEM$_$TLIST_$__$$_CREATE$$TLIST
SYSTEM$_$TLIST_$__$$_CREATE$$TLIST:
.Lc222:
.seh_proc SYSTEM$_$TLIST_$__$$_CREATE$$TLIST
	pushq	%rbp
.seh_pushreg %rbp
.Lc224:
.Lc225:
	movq	%rsp,%rbp
.Lc226:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
	movq	%rcx,-16(%rbp)
	movq	%rdx,-8(%rbp)
	cmpq	$1,%rdx
	jne	.Lj298
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rax,%rcx
	call	*128(%rdx)
	movq	%rax,-16(%rbp)
.Lj298:
	cmpq	$0,-16(%rbp)
	je	.Lj295
.Lj306:
	nop
.Lj305:
	movq	$-1,-24(%rbp)
	movq	-16(%rbp),%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
	movq	$1,-24(%rbp)
	cmpq	$0,-16(%rbp)
	je	.Lj303
	cmpq	$0,-8(%rbp)
	je	.Lj303
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*168(%rax)
	jmp	.Lj303
.Lj302:
	cmpq	$0,-8(%rbp)
	je	.Lj312
	movq	-24(%rbp),%rdx
	movq	-16(%rbp),%rcx
	call	SYSTEM$_$TLIST_$__$$_DESTROY
.Lj312:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj313:
	nop
.Lj303:
.Lj295:
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj305
	.rva	.Lj302
	.rva	.Lj303

.section .text.n_system$_$tlist_$__$$_create$$tlist,"x"
.seh_endproc
.Lc223:

.section .text.n_system$_$tlist_$__$$_destroy,"x"
.globl	SYSTEM$_$TLIST_$__$$_DESTROY
SYSTEM$_$TLIST_$__$$_DESTROY:
.Lc227:
.seh_proc SYSTEM$_$TLIST_$__$$_DESTROY
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc229:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rsi
	testq	%rsi,%rsi
	jng	.Lj317
	movq	%rbx,%rcx
	movq	(%rbx),%rax
	call	*176(%rax)
.Lj317:
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_DESTROY
	testq	%rbx,%rbx
	je	.Lj319
	testq	%rsi,%rsi
	je	.Lj319
	movq	(%rbx),%rcx
	movq	(%rbx),%rax
	call	*136(%rax)
.Lj319:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc228:

.section .text.n_fpc_popobjectstack,"x"
.globl	fpc_popobjectstack
fpc_popobjectstack:
.globl	FPC_POPOBJECTSTACK
FPC_POPOBJECTSTACK:
.Lc230:
.seh_proc fpc_popobjectstack
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc232:
.seh_stackalloc 32
.seh_endprologue
	movq	U_$SYSTEM_$$_EXCEPTOBJECTSTACK(%rip),%rbx
	testq	%rbx,%rbx
	jne	.Lj324
	movl	$1,%ecx
	call	_$dll$kernel32$ExitProcess
	jmp	.Lj325
.Lj324:
	cmpl	$0,24(%rbx)
	jne	.Lj327
	movq	(%rbx),%rax
	jmp	.Lj328
.Lj327:
	xorl	%eax,%eax
.Lj328:
	movq	16(%rbx),%rdx
	movq	%rdx,U_$SYSTEM_$$_EXCEPTOBJECTSTACK(%rip)
	movq	$0,TC_$SYSTEM_$$_ERRORADDR(%rip)
.Lj325:
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc231:

.section .text.n_system_$$___fpc_specific_handler$crc71b92073,"x"
.globl	SYSTEM_$$___FPC_SPECIFIC_HANDLER$crc71B92073
SYSTEM_$$___FPC_SPECIFIC_HANDLER$crc71B92073:
.globl	__FPC_specific_handler
__FPC_specific_handler:
.Lc233:
	xorl	%eax,%eax
	ret
.Lc234:

.section .text.n_system_$$_filterexception$exception_record$qword$longdword$longint$$pointer,"x"
SYSTEM_$$_FILTEREXCEPTION$EXCEPTION_RECORD$QWORD$LONGDWORD$LONGINT$$POINTER:
.Lc235:
	xorl	%eax,%eax
	ret
.Lc236:

.section .text.n_fpc_raiseexception,"x"
.globl	fpc_raiseexception
fpc_raiseexception:
.Lc237:
.seh_proc fpc_raiseexception
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-48(%rsp),%rsp
.Lc239:
.seh_stackalloc 48
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rsi
	movq	%r8,%rdi
	testq	%r8,%r8
	jne	.Lj336
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld32(%rip),%r8
	leaq	_$SYSTEM$_Ld33(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
.Lj336:
	testq	%rsi,%rsi
	jne	.Lj338
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld34(%rip),%r8
	leaq	_$SYSTEM$_Ld35(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
.Lj338:
	testq	%rbx,%rbx
	jne	.Lj340
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld36(%rip),%r8
	leaq	_$SYSTEM$_Ld37(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	movq	%rdi,32(%rsp)
	movq	%rsi,%r9
	leaq	_$SYSTEM$_Ld38(%rip),%r8
	movl	$1,%edx
	leaq	VMT_$SYSTEM_$$_EXCEPTION(%rip),%rcx
	call	SYSTEM$_$EXCEPTION_$__$$_CREATE$PCHAR$POINTER$POINTER$$EXCEPTION
	movq	%rax,%rbx
	movq	%rsi,%rdx
	movq	%rbx,%rcx
	call	SYSTEM$_$EXCEPTION_$__$$_HANDLEEXCEPTION$POINTER
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld36(%rip),%r8
	leaq	_$SYSTEM$_Ld39(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
.Lj340:
	nop
	leaq	48(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc238:

.section .text.n_system$_$exception_$__$$_classname$$pchar,"x"
.globl	SYSTEM$_$EXCEPTION_$__$$_CLASSNAME$$PCHAR
SYSTEM$_$EXCEPTION_$__$$_CLASSNAME$$PCHAR:
.Lc240:
	leaq	_$SYSTEM$_Ld40(%rip),%rax
	ret
.Lc241:

.section .text.n_system$_$exception_$__$$_create$pchar$pointer$pointer$$exception,"x"
.globl	SYSTEM$_$EXCEPTION_$__$$_CREATE$PCHAR$POINTER$POINTER$$EXCEPTION
SYSTEM$_$EXCEPTION_$__$$_CREATE$PCHAR$POINTER$POINTER$$EXCEPTION:
.Lc242:
.seh_proc SYSTEM$_$EXCEPTION_$__$$_CREATE$PCHAR$POINTER$POINTER$$EXCEPTION
	pushq	%rbp
.seh_pushreg %rbp
.Lc244:
.Lc245:
	movq	%rsp,%rbp
.Lc246:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
.seh_endprologue
	movq	%rcx,-32(%rbp)
	movq	%rdx,-24(%rbp)
	movq	%r8,-8(%rbp)
	movq	%r9,-16(%rbp)
	cmpq	$1,-24(%rbp)
	jne	.Lj346
	movq	-32(%rbp),%rax
	movq	-32(%rbp),%rdx
	movq	%rax,%rcx
	call	*128(%rdx)
	movq	%rax,-32(%rbp)
.Lj346:
	cmpq	$0,-32(%rbp)
	je	.Lj343
.Lj354:
	nop
.Lj353:
	movq	$-1,-48(%rbp)
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld41(%rip),%r8
	leaq	_$SYSTEM$_Ld41(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	cmpq	$0,-16(%rbp)
	jne	.Lj357
	leaq	_$SYSTEM$_Ld42(%rip),%rcx
	call	_$dll$msvcrt$printf
.Lj357:
	leaq	_$SYSTEM$_Ld43(%rip),%rcx
	call	_$dll$msvcrt$printf
	movq	-16(%rbp),%rax
	movq	%rax,-40(%rbp)
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld36(%rip),%r8
	leaq	_$SYSTEM$_Ld44(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	call	*-40(%rbp)
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld36(%rip),%r8
	leaq	_$SYSTEM$_Ld45(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	movq	-32(%rbp),%rdx
	movq	-8(%rbp),%rax
	movq	%rax,8(%rdx)
	movq	$1,-48(%rbp)
	cmpq	$0,-32(%rbp)
	je	.Lj351
	cmpq	$0,-24(%rbp)
	je	.Lj351
	movq	-32(%rbp),%rcx
	movq	-32(%rbp),%rax
	movq	(%rax),%rax
	call	*168(%rax)
	jmp	.Lj351
.Lj350:
	cmpq	$0,-24(%rbp)
	je	.Lj362
	movq	-48(%rbp),%rdx
	movq	-32(%rbp),%rcx
	movq	-32(%rbp),%rax
	movq	(%rax),%rax
	call	*96(%rax)
.Lj362:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj363:
	nop
.Lj351:
.Lj343:
	movq	-32(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj353
	.rva	.Lj350
	.rva	.Lj351

.section .text.n_system$_$exception_$__$$_create$pchar$pointer$pointer$$exception,"x"
.seh_endproc
.Lc243:

.section .text.n_system$_$exception_$__$$_create$pchar$qword$$exception,"x"
.globl	SYSTEM$_$EXCEPTION_$__$$_CREATE$PCHAR$QWORD$$EXCEPTION
SYSTEM$_$EXCEPTION_$__$$_CREATE$PCHAR$QWORD$$EXCEPTION:
.Lc247:
.seh_proc SYSTEM$_$EXCEPTION_$__$$_CREATE$PCHAR$QWORD$$EXCEPTION
	pushq	%rbp
.seh_pushreg %rbp
.Lc249:
.Lc250:
	movq	%rsp,%rbp
.Lc251:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
.seh_endprologue
	movq	%rcx,-32(%rbp)
	movq	%rdx,-24(%rbp)
	movq	%r8,-8(%rbp)
	movq	%r9,-16(%rbp)
	cmpq	$1,-24(%rbp)
	jne	.Lj367
	movq	-32(%rbp),%rax
	movq	-32(%rbp),%rdx
	movq	%rax,%rcx
	call	*128(%rdx)
	movq	%rax,-32(%rbp)
.Lj367:
	cmpq	$0,-32(%rbp)
	je	.Lj364
.Lj375:
	nop
.Lj374:
	movq	$-1,-40(%rbp)
	movq	-32(%rbp),%rax
	movq	-8(%rbp),%rdx
	movq	%rdx,8(%rax)
	movq	-32(%rbp),%rax
	movl	-16(%rbp),%edx
	movl	%edx,16(%rax)
	movq	$1,-40(%rbp)
	cmpq	$0,-32(%rbp)
	je	.Lj372
	cmpq	$0,-24(%rbp)
	je	.Lj372
	movq	-32(%rbp),%rcx
	movq	-32(%rbp),%rax
	movq	(%rax),%rax
	call	*168(%rax)
	jmp	.Lj372
.Lj371:
	cmpq	$0,-24(%rbp)
	je	.Lj381
	movq	-40(%rbp),%rdx
	movq	-32(%rbp),%rcx
	movq	-32(%rbp),%rax
	movq	(%rax),%rax
	call	*96(%rax)
.Lj381:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj382:
	nop
.Lj372:
.Lj364:
	movq	-32(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj374
	.rva	.Lj371
	.rva	.Lj372

.section .text.n_system$_$exception_$__$$_create$pchar$qword$$exception,"x"
.seh_endproc
.Lc248:

.section .text.n_system$_$exception_$__$$_handleexception$pointer,"x"
.globl	SYSTEM$_$EXCEPTION_$__$$_HANDLEEXCEPTION$POINTER
SYSTEM$_$EXCEPTION_$__$$_HANDLEEXCEPTION$POINTER:
.Lc252:
.seh_proc SYSTEM$_$EXCEPTION_$__$$_HANDLEEXCEPTION$POINTER
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc254:
.seh_stackalloc 32
.seh_endprologue
	movq	%rdx,%rbx
	leaq	_$SYSTEM$_Ld43(%rip),%rcx
	call	_$dll$msvcrt$printf
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld36(%rip),%r8
	leaq	_$SYSTEM$_Ld46(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	call	*%rbx
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc253:

.section .text.n_system_$$_stringlength$ansistring$$longdword,"x"
SYSTEM_$$_STRINGLENGTH$ANSISTRING$$LONGDWORD:
.Lc255:
	xorl	%eax,%eax
	jmp	.Lj388
.Lj387:
	incl	%eax
.Lj388:
	movl	%eax,%edx
	incq	%rdx
	cmpb	$0,-1(%rcx,%rdx,1)
	jne	.Lj387
	ret
.Lc256:

.section .text.n_system_$$_initconsole,"x"
.globl	SYSTEM_$$_INITCONSOLE
SYSTEM_$$_INITCONSOLE:
.Lc257:
.seh_proc SYSTEM_$$_INITCONSOLE
	leaq	-40(%rsp),%rsp
.Lc259:
.seh_stackalloc 40
.seh_endprologue
	movl	$1,%eax
	leaq	VMT_$SYSTEM_$$_TDOSCMD(%rip),%rcx
	movq	%rax,%rdx
	call	SYSTEM$_$TDOSCMD_$__$$_CREATE$$TDOSCMD
	movq	%rax,TC_$SYSTEM_$$_DOS(%rip)
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc258:

.section .text.n_system_$$_doneconsole,"x"
.globl	SYSTEM_$$_DONECONSOLE
SYSTEM_$$_DONECONSOLE:
.Lc260:
.seh_proc SYSTEM_$$_DONECONSOLE
	leaq	-40(%rsp),%rsp
.Lc262:
.seh_stackalloc 40
.seh_endprologue
	cmpq	$0,TC_$SYSTEM_$$_DOS(%rip)
	je	.Lj395
	movq	TC_$SYSTEM_$$_DOS(%rip),%rax
	movq	TC_$SYSTEM_$$_DOS(%rip),%rdx
	movq	(%rdx),%rdx
	movq	%rax,%rcx
	call	*184(%rdx)
.Lj395:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc261:

.section .text.n_system$_$tdoscmd_$__$$_create$$tdoscmd,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_CREATE$$TDOSCMD
SYSTEM$_$TDOSCMD_$__$$_CREATE$$TDOSCMD:
.Lc263:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_CREATE$$TDOSCMD
	pushq	%rbp
.seh_pushreg %rbp
.Lc265:
.Lc266:
	movq	%rsp,%rbp
.Lc267:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
	movq	%rcx,-16(%rbp)
	movq	%rdx,-8(%rbp)
	cmpq	$1,%rdx
	jne	.Lj399
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rax,%rcx
	call	*128(%rdx)
	movq	%rax,-16(%rbp)
.Lj399:
	cmpq	$0,-16(%rbp)
	je	.Lj396
.Lj407:
	nop
.Lj406:
	movq	$-1,-24(%rbp)
	movq	-16(%rbp),%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
	movq	-16(%rbp),%rcx
	call	SYSTEM$_$TDOSCMD_$__$$_GET_STDIN$$LONGDWORD
	movq	-16(%rbp),%rdx
	movl	%eax,24(%rdx)
	movq	-16(%rbp),%rcx
	call	SYSTEM$_$TDOSCMD_$__$$_GET_STDOUT$$LONGDWORD
	movq	-16(%rbp),%rdx
	movl	%eax,28(%rdx)
	movq	-16(%rbp),%rcx
	call	SYSTEM$_$TDOSCMD_$__$$_GET_STDERR$$LONGDWORD
	movq	-16(%rbp),%rdx
	movl	%eax,32(%rdx)
	movq	-16(%rbp),%rax
	leaq	16(%rax),%rcx
	leaq	.Ld47(%rip),%rdx
	call	fpc_ansistr_assign
	movl	$65001,%ecx
	call	_$dll$kernel32$SetConsoleOutputCP
	movl	$65001,%ecx
	call	_$dll$kernel32$SetConsoleCP
	movq	-16(%rbp),%rcx
	leaq	_$SYSTEM$_Ld48(%rip),%rdx
	call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
	movq	$1,-24(%rbp)
	cmpq	$0,-16(%rbp)
	je	.Lj404
	cmpq	$0,-8(%rbp)
	je	.Lj404
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*168(%rax)
	jmp	.Lj404
.Lj403:
	cmpq	$0,-8(%rbp)
	je	.Lj413
	movq	-24(%rbp),%rdx
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*96(%rax)
.Lj413:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj414:
	nop
.Lj404:
.Lj396:
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj406
	.rva	.Lj403
	.rva	.Lj404

.section .text.n_system$_$tdoscmd_$__$$_create$$tdoscmd,"x"
.seh_endproc
.Lc264:

.section .text.n_system$_$tdoscmd_$__$$_destroy,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_DESTROY
SYSTEM$_$TDOSCMD_$__$$_DESTROY:
.Lc268:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_DESTROY
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc270:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rsi
	testq	%rsi,%rsi
	jng	.Lj418
	movq	%rbx,%rcx
	movq	(%rbx),%rax
	call	*176(%rax)
.Lj418:
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_DESTROY
	testq	%rbx,%rbx
	je	.Lj420
	testq	%rsi,%rsi
	je	.Lj420
	movq	(%rbx),%rcx
	movq	(%rbx),%rax
	call	*136(%rax)
.Lj420:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc269:

.section .text.n_system$_$tdoscmd_$__$$_free,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_FREE
SYSTEM$_$TDOSCMD_$__$$_FREE:
.Lc271:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_FREE
	leaq	-40(%rsp),%rsp
.Lc273:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
	testq	%rcx,%rcx
	je	.Lj425
	movq	%rax,%rcx
	movl	$1,%edx
	movq	(%rax),%rax
	call	*96(%rax)
.Lj425:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc272:

.section .text.n_system$_$tdoscmd_$__$$_cls,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_CLS
SYSTEM$_$TDOSCMD_$__$$_CLS:
.Lc274:
	movq	%rcx,%rax
	ret
.Lc275:

.section .text.n_system$_$tdoscmd_$__$$_clrscr,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_CLRSCR
SYSTEM$_$TDOSCMD_$__$$_CLRSCR:
.Lc276:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_CLRSCR
	leaq	-40(%rsp),%rsp
.Lc278:
.seh_stackalloc 40
.seh_endprologue
	call	SYSTEM$_$TDOSCMD_$__$$_CLS
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc277:

.section .text.n_system$_$tdoscmd_$__$$_clearscreen,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_CLEARSCREEN
SYSTEM$_$TDOSCMD_$__$$_CLEARSCREEN:
.Lc279:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_CLEARSCREEN
	leaq	-40(%rsp),%rsp
.Lc281:
.seh_stackalloc 40
.seh_endprologue
	call	SYSTEM$_$TDOSCMD_$__$$_CLS
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc280:

.section .text.n_system$_$tdoscmd_$__$$_messagebox$pchar$pchar$$longdword,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_MESSAGEBOX$PCHAR$PCHAR$$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_MESSAGEBOX$PCHAR$PCHAR$$LONGDWORD:
.Lc282:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_MESSAGEBOX$PCHAR$PCHAR$$LONGDWORD
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc284:
.seh_stackalloc 32
.seh_endprologue
	movq	%r8,%rbx
	leaq	_$SYSTEM$_Ld49(%rip),%rcx
	call	_$dll$msvcrt$printf
	movq	%rbx,%rdx
	leaq	_$SYSTEM$_Ld50(%rip),%rcx
	call	_$dll$msvcrt$printf
	xorl	%eax,%eax
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc283:

.section .text.n_system$_$tdoscmd_$__$$_write$pchar,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_WRITE$PCHAR
SYSTEM$_$TDOSCMD_$__$$_WRITE$PCHAR:
.Lc285:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_WRITE$PCHAR
	leaq	-40(%rsp),%rsp
.Lc287:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
	leaq	_$SYSTEM$_Ld51(%rip),%rcx
	call	_$dll$msvcrt$printf
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc286:

.section .text.n_system$_$tdoscmd_$__$$_writeln$pchar,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR:
.Lc288:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
	leaq	-40(%rsp),%rsp
.Lc290:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
	leaq	_$SYSTEM$_Ld52(%rip),%rcx
	call	_$dll$msvcrt$printf
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc289:

.section .text.n_system$_$tdoscmd_$__$$_readln$pchar$pchar,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_READLN$PCHAR$PCHAR
SYSTEM$_$TDOSCMD_$__$$_READLN$PCHAR$PCHAR:
.Lc291:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_READLN$PCHAR$PCHAR
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc293:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rax
	movq	%rdx,%rbx
	movq	TC_$SYSTEM_$$_DOS(%rip),%rcx
	leaq	_$SYSTEM$_Ld53(%rip),%rdx
	call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
	movq	%rbx,%rdx
	leaq	_$SYSTEM$_Ld51(%rip),%rcx
	call	_$dll$msvcrt$scanf
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc292:

.section .text.n_system$_$tdoscmd_$__$$_readln$pchar,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_READLN$PCHAR
SYSTEM$_$TDOSCMD_$__$$_READLN$PCHAR:
.Lc294:
	movq	%rcx,%rax
	ret
.Lc295:

.section .text.n_system$_$tdoscmd_$_read$pchar$pchar_$$_fin$00000248,"x"
SYSTEM$_$TDOSCMD_$_READ$PCHAR$PCHAR_$$_fin$00000248:
.Lc296:
.seh_proc SYSTEM$_$TDOSCMD_$_READ$PCHAR$PCHAR_$$_fin$00000248
	pushq	%rbp
.seh_pushreg %rbp
.Lc298:
.Lc299:
	movq	%rcx,%rbp
.Lc300:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	leaq	-16(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc297:

.section .text.n_system$_$tdoscmd_$__$$_read$pchar$pchar,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_READ$PCHAR$PCHAR
SYSTEM$_$TDOSCMD_$__$$_READ$PCHAR$PCHAR:
.Lc301:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_READ$PCHAR$PCHAR
	pushq	%rbp
.seh_pushreg %rbp
.Lc303:
.Lc304:
	movq	%rsp,%rbp
.Lc305:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
	movq	%rbx,-24(%rbp)
.seh_savereg %rbx, 40
.seh_endprologue
	movq	%rcx,%rax
	movq	%rdx,%rbx
	movq	%r8,%rdx
	movq	$0,-16(%rbp)
	movq	$0,-8(%rbp)
.Lj450:
	nop
.Lj446:
	movq	TC_$SYSTEM_$$_DOS(%rip),%rcx
	call	SYSTEM$_$TDOSCMD_$__$$_WRITE$PCHAR
	movq	%rbx,%rcx
	movl	$200,%edx
	call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
	call	_$dll$utils$get_string
	movq	%rax,%rdx
	movq	(%rbx),%rcx
	call	_$dll$ucrtbase$strcpy
	movq	(%rbx),%rdx
	leaq	_$SYSTEM$_Ld54(%rip),%rcx
	call	_$dll$msvcrt$printf
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	movq	(%rbx),%rdx
	xorl	%r8d,%r8d
	leaq	-16(%rbp),%rcx
	call	fpc_pchar_to_ansistr
	movq	-16(%rbp),%r8
	xorl	%r9d,%r9d
	leaq	.Ld55(%rip),%rdx
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_concat
	movq	-8(%rbp),%rdx
	testq	%rdx,%rdx
	jne	.Lj451
	leaq	FPC_EMPTYCHAR(%rip),%rdx
.Lj451:
	movq	TC_$SYSTEM_$$_DOS(%rip),%rcx
	call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
.Lj448:
	nop
.Lj447:
	movq	%rbp,%rcx
	call	SYSTEM$_$TDOSCMD_$_READ$PCHAR$PCHAR_$$_fin$00000248
	movq	-24(%rbp),%rbx
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj446
	.rva	.Lj447
	.rva	SYSTEM$_$TDOSCMD_$_READ$PCHAR$PCHAR_$$_fin$00000248

.section .text.n_system$_$tdoscmd_$__$$_read$pchar$pchar,"x"
.seh_endproc
.Lc302:

.section .text.n_system$_$tdoscmd_$__$$_read$pchar,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_READ$PCHAR
SYSTEM$_$TDOSCMD_$__$$_READ$PCHAR:
.Lc306:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_READ$PCHAR
	leaq	-40(%rsp),%rsp
.Lc308:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
	movq	TC_$SYSTEM_$$_DOS(%rip),%rcx
	leaq	_$SYSTEM$_Ld56(%rip),%rdx
	call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc307:

.section .text.n_system$_$tdoscmd_$__$$_get_stdin$$longdword,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_GET_STDIN$$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_GET_STDIN$$LONGDWORD:
.Lc309:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_GET_STDIN$$LONGDWORD
	leaq	-40(%rsp),%rsp
.Lc311:
.seh_stackalloc 40
.seh_endprologue
	movl	$4294967286,%ecx
	call	_$dll$kernel32$GetStdHandle
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc310:

.section .text.n_system$_$tdoscmd_$__$$_get_stderr$$longdword,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_GET_STDERR$$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_GET_STDERR$$LONGDWORD:
.Lc312:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_GET_STDERR$$LONGDWORD
	leaq	-40(%rsp),%rsp
.Lc314:
.seh_stackalloc 40
.seh_endprologue
	movl	$4294967284,%ecx
	call	_$dll$kernel32$GetStdHandle
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc313:

.section .text.n_system$_$tdoscmd_$__$$_get_stdout$$longdword,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_GET_STDOUT$$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_GET_STDOUT$$LONGDWORD:
.Lc315:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_GET_STDOUT$$LONGDWORD
	leaq	-40(%rsp),%rsp
.Lc317:
.seh_stackalloc 40
.seh_endprologue
	movl	$4294967285,%ecx
	call	_$dll$kernel32$GetStdHandle
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc316:

.section .text.n_system$_$tdoscmd_$__$$_set_stdin$longdword$longdword,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_SET_STDIN$LONGDWORD$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_SET_STDIN$LONGDWORD$LONGDWORD:
.Lc318:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_SET_STDIN$LONGDWORD$LONGDWORD
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc320:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rax
	movl	%edx,%ecx
	movl	%r8d,%ebx
	call	_$dll$kernel32$GetStdHandle
	movl	%eax,%edx
	movl	%ebx,%ecx
	call	_$dll$kernel32$SetStdHandle
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc319:

.section .text.n_system$_$tdoscmd_$__$$_set_stdout$longdword$longdword,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_SET_STDOUT$LONGDWORD$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_SET_STDOUT$LONGDWORD$LONGDWORD:
.Lc321:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_SET_STDOUT$LONGDWORD$LONGDWORD
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc323:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rax
	movl	%edx,%ecx
	movl	%r8d,%ebx
	call	_$dll$kernel32$GetStdHandle
	movl	%eax,%edx
	movl	%ebx,%ecx
	call	_$dll$kernel32$SetStdHandle
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc322:

.section .text.n_system$_$tdoscmd_$__$$_set_stderr$longdword$longdword,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_SET_STDERR$LONGDWORD$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_SET_STDERR$LONGDWORD$LONGDWORD:
.Lc324:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_SET_STDERR$LONGDWORD$LONGDWORD
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc326:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rax
	movl	%edx,%ecx
	movl	%r8d,%ebx
	call	_$dll$kernel32$GetStdHandle
	movl	%eax,%edx
	movl	%ebx,%ecx
	call	_$dll$kernel32$SetStdHandle
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc325:

.section .text.n_system_$$_initwindows,"x"
.globl	SYSTEM_$$_INITWINDOWS
SYSTEM_$$_INITWINDOWS:
.Lc327:
.seh_proc SYSTEM_$$_INITWINDOWS
	leaq	-40(%rsp),%rsp
.Lc329:
.seh_stackalloc 40
.seh_endprologue
	movl	$1,%eax
	leaq	VMT_$SYSTEM_$$_WINDOWS_CLASS(%rip),%rcx
	movq	%rax,%rdx
	call	SYSTEM$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS
	movq	%rax,U_$SYSTEM_$$_WINDOWS(%rip)
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc328:

.section .text.n_system_$$_donewindows,"x"
.globl	SYSTEM_$$_DONEWINDOWS
SYSTEM_$$_DONEWINDOWS:
.Lc330:
.seh_proc SYSTEM_$$_DONEWINDOWS
	leaq	-40(%rsp),%rsp
.Lc332:
.seh_stackalloc 40
.seh_endprologue
	cmpq	$0,U_$SYSTEM_$$_WINDOWS(%rip)
	je	.Lj471
	movq	U_$SYSTEM_$$_WINDOWS(%rip),%rax
	movq	U_$SYSTEM_$$_WINDOWS(%rip),%rdx
	movq	(%rdx),%rdx
	movq	%rax,%rcx
	call	*184(%rdx)
.Lj471:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc331:

.section .text.n_system$_$windows_class_$__$$_create$$windows_class,"x"
.globl	SYSTEM$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS
SYSTEM$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS:
.Lc333:
.seh_proc SYSTEM$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS
	pushq	%rbp
.seh_pushreg %rbp
.Lc335:
.Lc336:
	movq	%rsp,%rbp
.Lc337:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
	movq	%rcx,-16(%rbp)
	movq	%rdx,-8(%rbp)
	cmpq	$1,%rdx
	jne	.Lj475
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rax,%rcx
	call	*128(%rdx)
	movq	%rax,-16(%rbp)
.Lj475:
	cmpq	$0,-16(%rbp)
	je	.Lj472
.Lj483:
	nop
.Lj482:
	movq	$-1,-24(%rbp)
	movq	-16(%rbp),%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
	movq	$1,-24(%rbp)
	cmpq	$0,-16(%rbp)
	je	.Lj480
	cmpq	$0,-8(%rbp)
	je	.Lj480
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*168(%rax)
	jmp	.Lj480
.Lj479:
	cmpq	$0,-8(%rbp)
	je	.Lj489
	movq	-24(%rbp),%rdx
	movq	-16(%rbp),%rcx
	call	SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY
.Lj489:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj490:
	nop
.Lj480:
.Lj472:
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj482
	.rva	.Lj479
	.rva	.Lj480

.section .text.n_system$_$windows_class_$__$$_create$$windows_class,"x"
.seh_endproc
.Lc334:

.section .text.n_system$_$windows_class_$__$$_destroy,"x"
.globl	SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY
SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY:
.Lc338:
.seh_proc SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc340:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rsi
	testq	%rsi,%rsi
	jng	.Lj494
	movq	%rbx,%rcx
	movq	(%rbx),%rax
	call	*176(%rax)
.Lj494:
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_DESTROY
	testq	%rbx,%rbx
	je	.Lj496
	testq	%rsi,%rsi
	je	.Lj496
	movq	(%rbx),%rcx
	movq	(%rbx),%rax
	call	*136(%rax)
.Lj496:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc339:

.section .text.n_system$_$windows_class_$__$$_free,"x"
.globl	SYSTEM$_$WINDOWS_CLASS_$__$$_FREE
SYSTEM$_$WINDOWS_CLASS_$__$$_FREE:
.Lc341:
.seh_proc SYSTEM$_$WINDOWS_CLASS_$__$$_FREE
	leaq	-40(%rsp),%rsp
.Lc343:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
	testq	%rcx,%rcx
	je	.Lj501
	movq	%rax,%rcx
	movl	$1,%edx
	call	SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY
.Lj501:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc342:

.section .text.n_system$_$windows_class_$_messagebox$ansistring$ansistring$$longdword_$$_fin$00000249,"x"
SYSTEM$_$WINDOWS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$00000249:
.Lc344:
.seh_proc SYSTEM$_$WINDOWS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$00000249
	pushq	%rbp
.seh_pushreg %rbp
.Lc346:
.Lc347:
	movq	%rcx,%rbp
.Lc348:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	leaq	-16(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc345:

.section .text.n_system$_$windows_class_$__$$_messagebox$ansistring$ansistring$$longdword,"x"
.globl	SYSTEM$_$WINDOWS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD
SYSTEM$_$WINDOWS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD:
.Lc349:
.seh_proc SYSTEM$_$WINDOWS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD
	pushq	%rbp
.seh_pushreg %rbp
.Lc351:
.Lc352:
	movq	%rsp,%rbp
.Lc353:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
	movq	%rbx,-24(%rbp)
.seh_savereg %rbx, 40
.seh_endprologue
	movq	%rdx,-8(%rbp)
	movq	%r8,-16(%rbp)
	movq	-8(%rbp),%rcx
	call	fpc_ansistr_incr_ref
	movq	-16(%rbp),%rcx
	call	fpc_ansistr_incr_ref
.Lj510:
	nop
.Lj506:
	movq	-16(%rbp),%r8
	testq	%r8,%r8
	jne	.Lj511
	leaq	FPC_EMPTYCHAR(%rip),%r8
.Lj511:
	movq	-8(%rbp),%rdx
	testq	%rdx,%rdx
	jne	.Lj512
	leaq	FPC_EMPTYCHAR(%rip),%rdx
.Lj512:
	xorl	%r9d,%r9d
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	xorl	%ebx,%ebx
.Lj508:
	nop
.Lj507:
	movq	%rbp,%rcx
	call	SYSTEM$_$WINDOWS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$00000249
	movl	%ebx,%eax
	movq	-24(%rbp),%rbx
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj506
	.rva	.Lj507
	.rva	SYSTEM$_$WINDOWS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$00000249

.section .text.n_system$_$windows_class_$__$$_messagebox$ansistring$ansistring$$longdword,"x"
.seh_endproc
.Lc350:

.section .text.n_system$_$tvgaio_$__$$_$lower$tvgaio$ansistring$$boolean,"x"
.globl	SYSTEM$_$TVGAIO_$__$$_$lower$TVGAIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TVGAIO_$__$$_$lower$TVGAIO$ANSISTRING$$BOOLEAN:
.Lc354:
.seh_proc SYSTEM$_$TVGAIO_$__$$_$lower$TVGAIO$ANSISTRING$$BOOLEAN
	pushq	%rbp
.seh_pushreg %rbp
.Lc356:
.Lc357:
	movq	%rsp,%rbp
.Lc358:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
	movq	%rdi,-32(%rbp)
	movq	%rsi,-24(%rbp)
.seh_savereg %rdi, 32
.seh_savereg %rsi, 40
.seh_endprologue
	movq	%rcx,%rsi
	movq	%rdx,-8(%rbp)
	leaq	-12(%rbp),%rdi
	movq	-8(%rbp),%rcx
	call	fpc_ansistr_incr_ref
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	movb	%dl,%al
	movq	-32(%rbp),%rdi
	movq	-24(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc355:

.section .text.n_system$_$tvgaio_$__$$_$greater$tvgaio$ansistring$$boolean,"x"
.globl	SYSTEM$_$TVGAIO_$__$$_$greater$TVGAIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TVGAIO_$__$$_$greater$TVGAIO$ANSISTRING$$BOOLEAN:
.Lc359:
.seh_proc SYSTEM$_$TVGAIO_$__$$_$greater$TVGAIO$ANSISTRING$$BOOLEAN
	pushq	%rbp
.seh_pushreg %rbp
.Lc361:
.Lc362:
	movq	%rsp,%rbp
.Lc363:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
	movq	%rdi,-32(%rbp)
	movq	%rsi,-24(%rbp)
.seh_savereg %rdi, 32
.seh_savereg %rsi, 40
.seh_endprologue
	movq	%rcx,%rsi
	movq	%rdx,-8(%rbp)
	leaq	-12(%rbp),%rdi
	movq	-8(%rbp),%rcx
	call	fpc_ansistr_incr_ref
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	movb	%dl,%al
	movq	-32(%rbp),%rdi
	movq	-24(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc360:

.section .text.n_system$_$tsystemio_$_lower$tsystemio$ansistring$$boolean_$$_fin$0000024c,"x"
SYSTEM$_$TSYSTEMIO_$_lower$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$0000024C:
.Lc364:
.seh_proc SYSTEM$_$TSYSTEMIO_$_lower$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$0000024C
	pushq	%rbp
.seh_pushreg %rbp
.Lc366:
.Lc367:
	movq	%rcx,%rbp
.Lc368:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc365:

.section .text.n_system$_$tsystemio_$__$$_$lower$tsystemio$ansistring$$boolean,"x"
.globl	SYSTEM$_$TSYSTEMIO_$__$$_$lower$TSYSTEMIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TSYSTEMIO_$__$$_$lower$TSYSTEMIO$ANSISTRING$$BOOLEAN:
.Lc369:
.seh_proc SYSTEM$_$TSYSTEMIO_$__$$_$lower$TSYSTEMIO$ANSISTRING$$BOOLEAN
	pushq	%rbp
.seh_pushreg %rbp
.Lc371:
.Lc372:
	movq	%rsp,%rbp
.Lc373:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
	movq	%rdi,-32(%rbp)
	movq	%rsi,-24(%rbp)
.seh_savereg %rdi, 32
.seh_savereg %rsi, 40
.seh_endprologue
	movq	%rcx,%rsi
	movq	%rdx,-8(%rbp)
	leaq	-12(%rbp),%rdi
	movq	-8(%rbp),%rcx
	call	fpc_ansistr_incr_ref
.Lj529:
	nop
.Lj525:
	movq	-8(%rbp),%rdx
	testq	%rdx,%rdx
	jne	.Lj530
	leaq	FPC_EMPTYCHAR(%rip),%rdx
.Lj530:
	movq	TC_$SYSTEM_$$_DOS(%rip),%rcx
	call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
.Lj527:
	nop
.Lj526:
	movq	%rbp,%rcx
	call	SYSTEM$_$TSYSTEMIO_$_lower$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$0000024C
	movb	%dl,%al
	movq	-32(%rbp),%rdi
	movq	-24(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj525
	.rva	.Lj526
	.rva	SYSTEM$_$TSYSTEMIO_$_lower$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$0000024C

.section .text.n_system$_$tsystemio_$__$$_$lower$tsystemio$ansistring$$boolean,"x"
.seh_endproc
.Lc370:

.section .text.n_system$_$tsystemio_$_greater$tsystemio$ansistring$$boolean_$$_fin$0000024d,"x"
SYSTEM$_$TSYSTEMIO_$_greater$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$0000024D:
.Lc374:
.seh_proc SYSTEM$_$TSYSTEMIO_$_greater$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$0000024D
	pushq	%rbp
.seh_pushreg %rbp
.Lc376:
.Lc377:
	movq	%rcx,%rbp
.Lc378:
	leaq	-32(%rsp),%rsp
.seh_stackalloc 32
.seh_endprologue
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	nop
	leaq	32(%rsp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc375:

.section .text.n_system$_$tsystemio_$__$$_$greater$tsystemio$ansistring$$boolean,"x"
.globl	SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$ANSISTRING$$BOOLEAN:
.Lc379:
.seh_proc SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$ANSISTRING$$BOOLEAN
	pushq	%rbp
.seh_pushreg %rbp
.Lc381:
.Lc382:
	movq	%rsp,%rbp
.Lc383:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
	movq	%rbx,-40(%rbp)
	movq	%rdi,-32(%rbp)
	movq	%rsi,-24(%rbp)
.seh_savereg %rbx, 40
.seh_savereg %rdi, 48
.seh_savereg %rsi, 56
.seh_endprologue
	movq	%rcx,%rsi
	movq	%rdx,-8(%rbp)
	leaq	-12(%rbp),%rdi
	movq	-8(%rbp),%rcx
	call	fpc_ansistr_incr_ref
.Lj539:
	nop
.Lj535:
	movb	$1,%bl
.Lj537:
	nop
.Lj536:
	movq	%rbp,%rcx
	call	SYSTEM$_$TSYSTEMIO_$_greater$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$0000024D
	movb	%bl,%al
	movq	-40(%rbp),%rbx
	movq	-32(%rbp),%rdi
	movq	-24(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj535
	.rva	.Lj536
	.rva	SYSTEM$_$TSYSTEMIO_$_greater$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$0000024D

.section .text.n_system$_$tsystemio_$__$$_$greater$tsystemio$ansistring$$boolean,"x"
.seh_endproc
.Lc380:

.section .text.n_system$_$tsystemio_$__$$_$greater$tsystemio$longdword$$qword,"x"
.globl	SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$LONGDWORD$$QWORD
SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$LONGDWORD$$QWORD:
.Lc384:
.seh_proc SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$LONGDWORD$$QWORD
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-8(%rsp),%rsp
.Lc386:
.seh_stackalloc 8
.seh_endprologue
	movq	%rcx,%rsi
	movq	%rsp,%rdi
	movl	$1,%eax
	leaq	8(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	ret
.seh_endproc
.Lc385:

.section .text.n_system$_$tcpu_$__$$_create$$tcpu,"x"
.globl	SYSTEM$_$TCPU_$__$$_CREATE$$TCPU
SYSTEM$_$TCPU_$__$$_CREATE$$TCPU:
.Lc387:
.seh_proc SYSTEM$_$TCPU_$__$$_CREATE$$TCPU
	pushq	%rbp
.seh_pushreg %rbp
.Lc389:
.Lc390:
	movq	%rsp,%rbp
.Lc391:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
	movq	%rcx,-16(%rbp)
	movq	%rdx,-8(%rbp)
	cmpq	$1,%rdx
	jne	.Lj545
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rax,%rcx
	call	*128(%rdx)
	movq	%rax,-16(%rbp)
.Lj545:
	cmpq	$0,-16(%rbp)
	je	.Lj542
.Lj553:
	nop
.Lj552:
	movq	$-1,-24(%rbp)
	movq	-16(%rbp),%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
	movq	$1,-24(%rbp)
	cmpq	$0,-16(%rbp)
	je	.Lj550
	cmpq	$0,-8(%rbp)
	je	.Lj550
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*168(%rax)
	jmp	.Lj550
.Lj549:
	cmpq	$0,-8(%rbp)
	je	.Lj559
	movq	-24(%rbp),%rdx
	movq	-16(%rbp),%rcx
	call	SYSTEM$_$TCPU_$__$$_DESTROY
.Lj559:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj560:
	nop
.Lj550:
.Lj542:
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj552
	.rva	.Lj549
	.rva	.Lj550

.section .text.n_system$_$tcpu_$__$$_create$$tcpu,"x"
.seh_endproc
.Lc388:

.section .text.n_system$_$tcpu_$__$$_destroy,"x"
.globl	SYSTEM$_$TCPU_$__$$_DESTROY
SYSTEM$_$TCPU_$__$$_DESTROY:
.Lc392:
.seh_proc SYSTEM$_$TCPU_$__$$_DESTROY
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc394:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rsi
	testq	%rsi,%rsi
	jng	.Lj564
	movq	%rbx,%rcx
	movq	(%rbx),%rax
	call	*176(%rax)
.Lj564:
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_DESTROY
	testq	%rbx,%rbx
	je	.Lj566
	testq	%rsi,%rsi
	je	.Lj566
	movq	(%rbx),%rcx
	movq	(%rbx),%rax
	call	*136(%rax)
.Lj566:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc393:

.section .text.n_system$_$tcpu_$__$$_classname$$ansistring,"x"
.globl	SYSTEM$_$TCPU_$__$$_CLASSNAME$$ANSISTRING
SYSTEM$_$TCPU_$__$$_CLASSNAME$$ANSISTRING:
.Lc395:
.seh_proc SYSTEM$_$TCPU_$__$$_CLASSNAME$$ANSISTRING
	leaq	-40(%rsp),%rsp
.Lc397:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
	movq	%rdx,%rcx
	leaq	.Ld57(%rip),%rdx
	call	fpc_ansistr_assign
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc396:

.section .text.n_system$_$tcpu_$__$$_classparent$$tobject,"x"
.globl	SYSTEM$_$TCPU_$__$$_CLASSPARENT$$TOBJECT
SYSTEM$_$TCPU_$__$$_CLASSPARENT$$TOBJECT:
.Lc398:
.seh_proc SYSTEM$_$TCPU_$__$$_CLASSPARENT$$TOBJECT
	leaq	-40(%rsp),%rsp
.Lc400:
.seh_stackalloc 40
.seh_endprologue
	call	SYSTEM$_$TCPU_$__$$_GETPARENT$$TOBJECT
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc399:

.section .text.n_system$_$tcpu_$__$$_getparent$$tobject,"x"
.globl	SYSTEM$_$TCPU_$__$$_GETPARENT$$TOBJECT
SYSTEM$_$TCPU_$__$$_GETPARENT$$TOBJECT:
.Lc401:
	movq	U_$SYSTEM_$$__static_tcpu_FCLASSPARENT(%rip),%rax
	ret
.Lc402:

.section .text.n_system_$$_initmemory,"x"
.globl	SYSTEM_$$_INITMEMORY
SYSTEM_$$_INITMEMORY:
.Lc403:
.seh_proc SYSTEM_$$_INITMEMORY
	leaq	-40(%rsp),%rsp
.Lc405:
.seh_stackalloc 40
.seh_endprologue
	movl	$1,%eax
	leaq	VMT_$SYSTEM_$$_TMEMORY(%rip),%rcx
	movq	%rax,%rdx
	call	SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY
	movq	%rax,TC_$SYSTEM_$$_MEM(%rip)
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc404:

.section .text.n_system_$$_donememory,"x"
.globl	SYSTEM_$$_DONEMEMORY
SYSTEM_$$_DONEMEMORY:
.Lc406:
.seh_proc SYSTEM_$$_DONEMEMORY
	leaq	-40(%rsp),%rsp
.Lc408:
.seh_stackalloc 40
.seh_endprologue
	movq	TC_$SYSTEM_$$_MEM(%rip),%rax
	movq	TC_$SYSTEM_$$_MEM(%rip),%rdx
	movq	(%rdx),%rdx
	movq	%rax,%rcx
	call	*184(%rdx)
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc407:

.section .text.n_system$_$tmemory_$__$$_create$$tmemory,"x"
.globl	SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY
SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY:
.Lc409:
.seh_proc SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY
	pushq	%rbp
.seh_pushreg %rbp
.Lc411:
.Lc412:
	movq	%rsp,%rbp
.Lc413:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
	movq	%rcx,-16(%rbp)
	movq	%rdx,-8(%rbp)
	cmpq	$1,%rdx
	jne	.Lj581
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rax,%rcx
	call	*128(%rdx)
	movq	%rax,-16(%rbp)
.Lj581:
	cmpq	$0,-16(%rbp)
	je	.Lj578
.Lj589:
	nop
.Lj588:
	movq	$-1,-24(%rbp)
	movq	-16(%rbp),%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
	movq	-16(%rbp),%rcx
	movl	$512,%r8d
	xorl	%edx,%edx
	call	SYSTEM$_$TMEMORY_$__$$_CREATE$LONGDWORD$$TMEMORY
	movq	$1,-24(%rbp)
	cmpq	$0,-16(%rbp)
	je	.Lj586
	cmpq	$0,-8(%rbp)
	je	.Lj586
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*168(%rax)
	jmp	.Lj586
.Lj585:
	cmpq	$0,-8(%rbp)
	je	.Lj595
	movq	-24(%rbp),%rdx
	movq	-16(%rbp),%rcx
	call	SYSTEM$_$TMEMORY_$__$$_DESTROY
.Lj595:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj596:
	nop
.Lj586:
.Lj578:
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj588
	.rva	.Lj585
	.rva	.Lj586

.section .text.n_system$_$tmemory_$__$$_create$$tmemory,"x"
.seh_endproc
.Lc410:

.section .text.n_system$_$tmemory_$__$$_create$longdword$$tmemory,"x"
.globl	SYSTEM$_$TMEMORY_$__$$_CREATE$LONGDWORD$$TMEMORY
SYSTEM$_$TMEMORY_$__$$_CREATE$LONGDWORD$$TMEMORY:
.Lc414:
.seh_proc SYSTEM$_$TMEMORY_$__$$_CREATE$LONGDWORD$$TMEMORY
	pushq	%rbp
.seh_pushreg %rbp
.Lc416:
.Lc417:
	movq	%rsp,%rbp
.Lc418:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
	movq	%rcx,-24(%rbp)
	movq	%rdx,-16(%rbp)
	movl	%r8d,-8(%rbp)
	cmpq	$1,-16(%rbp)
	jne	.Lj600
	movq	-24(%rbp),%rax
	movq	-24(%rbp),%rdx
	movq	%rax,%rcx
	call	*128(%rdx)
	movq	%rax,-24(%rbp)
.Lj600:
	cmpq	$0,-24(%rbp)
	je	.Lj597
.Lj608:
	nop
.Lj607:
	movq	$-1,-32(%rbp)
	movq	-24(%rbp),%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
	movl	$0,U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE(%rip)
	movl	-8(%rbp),%edx
	movq	-24(%rbp),%rcx
	call	SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER
	movq	%rax,U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY(%rip)
	movq	$0,U_$SYSTEM_$$__static_tmemory_FCLASSPARENT(%rip)
	movq	$1,-32(%rbp)
	cmpq	$0,-24(%rbp)
	je	.Lj605
	cmpq	$0,-16(%rbp)
	je	.Lj605
	movq	-24(%rbp),%rcx
	movq	-24(%rbp),%rax
	movq	(%rax),%rax
	call	*168(%rax)
	jmp	.Lj605
.Lj604:
	cmpq	$0,-16(%rbp)
	je	.Lj614
	movq	-32(%rbp),%rdx
	movq	-24(%rbp),%rcx
	call	SYSTEM$_$TMEMORY_$__$$_DESTROY
.Lj614:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj615:
	nop
.Lj605:
.Lj597:
	movq	-24(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj607
	.rva	.Lj604
	.rva	.Lj605

.section .text.n_system$_$tmemory_$__$$_create$longdword$$tmemory,"x"
.seh_endproc
.Lc415:

.section .text.n_system$_$tmemory_$__$$_create$tobject$longdword$$tmemory,"x"
.globl	SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$LONGDWORD$$TMEMORY
SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$LONGDWORD$$TMEMORY:
.Lc419:
.seh_proc SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$LONGDWORD$$TMEMORY
	pushq	%rbp
.seh_pushreg %rbp
.Lc421:
.Lc422:
	movq	%rsp,%rbp
.Lc423:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
.seh_endprologue
	movq	%rcx,-32(%rbp)
	movq	%rdx,-24(%rbp)
	movq	%r8,-8(%rbp)
	movl	%r9d,-16(%rbp)
	cmpq	$1,-24(%rbp)
	jne	.Lj619
	movq	-32(%rbp),%rax
	movq	-32(%rbp),%rdx
	movq	%rax,%rcx
	call	*128(%rdx)
	movq	%rax,-32(%rbp)
.Lj619:
	cmpq	$0,-32(%rbp)
	je	.Lj616
.Lj627:
	nop
.Lj626:
	movq	$-1,-40(%rbp)
	movq	-32(%rbp),%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
	movl	-16(%rbp),%r8d
	movq	-32(%rbp),%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TMEMORY_$__$$_CREATE$LONGDWORD$$TMEMORY
	movq	-8(%rbp),%rax
	movq	%rax,U_$SYSTEM_$$__static_tmemory_FCLASSPARENT(%rip)
	movq	$1,-40(%rbp)
	cmpq	$0,-32(%rbp)
	je	.Lj624
	cmpq	$0,-24(%rbp)
	je	.Lj624
	movq	-32(%rbp),%rcx
	movq	-32(%rbp),%rax
	movq	(%rax),%rax
	call	*168(%rax)
	jmp	.Lj624
.Lj623:
	cmpq	$0,-24(%rbp)
	je	.Lj633
	movq	-40(%rbp),%rdx
	movq	-32(%rbp),%rcx
	call	SYSTEM$_$TMEMORY_$__$$_DESTROY
.Lj633:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj634:
	nop
.Lj624:
.Lj616:
	movq	-32(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj626
	.rva	.Lj623
	.rva	.Lj624

.section .text.n_system$_$tmemory_$__$$_create$tobject$longdword$$tmemory,"x"
.seh_endproc
.Lc420:

.section .text.n_system$_$tmemory_$__$$_create$tobject$$tmemory,"x"
.globl	SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$$TMEMORY
SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$$TMEMORY:
.Lc424:
.seh_proc SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$$TMEMORY
	pushq	%rbp
.seh_pushreg %rbp
.Lc426:
.Lc427:
	movq	%rsp,%rbp
.Lc428:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
	movq	%rcx,-24(%rbp)
	movq	%rdx,-16(%rbp)
	movq	%r8,-8(%rbp)
	cmpq	$1,-16(%rbp)
	jne	.Lj638
	movq	-24(%rbp),%rax
	movq	-24(%rbp),%rdx
	movq	%rax,%rcx
	call	*128(%rdx)
	movq	%rax,-24(%rbp)
.Lj638:
	cmpq	$0,-24(%rbp)
	je	.Lj635
.Lj646:
	nop
.Lj645:
	movq	$-1,-32(%rbp)
	movq	-24(%rbp),%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld30(%rip),%r8
	leaq	_$SYSTEM$_Ld58(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	cmpq	$0,-8(%rbp)
	jne	.Lj649
	movl	$8,%edx
	movl	%edx,U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE(%rip)
	leaq	U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY(%rip),%rcx
	call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
	jmp	.Lj650
.Lj649:
	movq	-8(%rbp),%rax
	movq	%rax,U_$SYSTEM_$$__static_tmemory_FCLASSPARENT(%rip)
	movq	-24(%rbp),%rcx
	movl	$8,%edx
	call	SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER
	movq	%rax,U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY(%rip)
.Lj650:
	movq	$1,-32(%rbp)
	cmpq	$0,-24(%rbp)
	je	.Lj643
	cmpq	$0,-16(%rbp)
	je	.Lj643
	movq	-24(%rbp),%rcx
	movq	-24(%rbp),%rax
	movq	(%rax),%rax
	call	*168(%rax)
	jmp	.Lj643
.Lj642:
	cmpq	$0,-16(%rbp)
	je	.Lj655
	movq	-32(%rbp),%rdx
	movq	-24(%rbp),%rcx
	call	SYSTEM$_$TMEMORY_$__$$_DESTROY
.Lj655:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj656:
	nop
.Lj643:
.Lj635:
	movq	-24(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj645
	.rva	.Lj642
	.rva	.Lj643

.section .text.n_system$_$tmemory_$__$$_create$tobject$$tmemory,"x"
.seh_endproc
.Lc425:

.section .text.n_system$_$tmemory_$__$$_destroy,"x"
.globl	SYSTEM$_$TMEMORY_$__$$_DESTROY
SYSTEM$_$TMEMORY_$__$$_DESTROY:
.Lc429:
.seh_proc SYSTEM$_$TMEMORY_$__$$_DESTROY
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc431:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rsi
	testq	%rsi,%rsi
	jng	.Lj660
	movq	%rbx,%rcx
	movq	(%rbx),%rax
	call	*176(%rax)
.Lj660:
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_DESTROY
	testq	%rbx,%rbx
	je	.Lj662
	testq	%rsi,%rsi
	je	.Lj662
	movq	(%rbx),%rcx
	movq	(%rbx),%rax
	call	*136(%rax)
.Lj662:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc430:

.section .text.n_system$_$tmemory_$__$$_classname$$ansistring,"x"
.globl	SYSTEM$_$TMEMORY_$__$$_CLASSNAME$$ANSISTRING
SYSTEM$_$TMEMORY_$__$$_CLASSNAME$$ANSISTRING:
.Lc432:
.seh_proc SYSTEM$_$TMEMORY_$__$$_CLASSNAME$$ANSISTRING
	leaq	-40(%rsp),%rsp
.Lc434:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
	movq	%rdx,%rcx
	leaq	.Ld59(%rip),%rdx
	call	fpc_ansistr_assign
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc433:

.section .text.n_system$_$tmemory_$__$$_alloc$longdword$$pointer,"x"
.globl	SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER
SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER:
.Lc435:
.seh_proc SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc437:
.seh_stackalloc 40
.seh_endprologue
	movl	%edx,%ebx
	xorl	%esi,%esi
	cmpl	U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE(%rip),%ebx
	je	.Lj666
	cmpl	$0,U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE(%rip)
	jne	.Lj672
	movl	%ebx,%edx
	leaq	U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY(%rip),%rcx
	call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
	movl	%ebx,U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE(%rip)
.Lj672:
	movq	U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY(%rip),%rsi
.Lj666:
	movq	%rsi,%rax
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc436:

.section .text.n_system$_$tmemory_$__$$_alloc,"x"
.globl	SYSTEM$_$TMEMORY_$__$$_ALLOC
SYSTEM$_$TMEMORY_$__$$_ALLOC:
.Lc438:
.seh_proc SYSTEM$_$TMEMORY_$__$$_ALLOC
	leaq	-40(%rsp),%rsp
.Lc440:
.seh_stackalloc 40
.seh_endprologue
	movl	$512,%edx
	call	SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc439:

.section .text.n_system$_$tmemory_$__$$_free,"x"
.globl	SYSTEM$_$TMEMORY_$__$$_FREE
SYSTEM$_$TMEMORY_$__$$_FREE:
.Lc441:
.seh_proc SYSTEM$_$TMEMORY_$__$$_FREE
	leaq	-40(%rsp),%rsp
.Lc443:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
	leaq	U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY(%rip),%rcx
	call	SYSTEM_$$_FREEMEM$POINTER
	cmpq	$0,U_$SYSTEM_$$__static_tmemory_FCLASSPARENT(%rip)
	je	.Lj678
	movq	U_$SYSTEM_$$__static_tmemory_FCLASSPARENT(%rip),%rcx
	movq	U_$SYSTEM_$$__static_tmemory_FCLASSPARENT(%rip),%rax
	movq	(%rax),%rax
	call	*160(%rax)
.Lj678:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc442:

.section .text.n_system_$$_initsystem,"x"
.globl	SYSTEM_$$_INITSYSTEM
SYSTEM_$$_INITSYSTEM:
.Lc444:
.seh_proc SYSTEM_$$_INITSYSTEM
	leaq	-40(%rsp),%rsp
.Lc446:
.seh_stackalloc 40
.seh_endprologue
	call	_$dll$kernel32$GetConsoleWindow
	testl	%eax,%eax
	je	.Lj682
	call	SYSTEM_$$_INITCONSOLE
.Lj682:
	movl	$1,%edx
	leaq	VMT_$SYSTEM_$$_TSYSTEM(%rip),%rcx
	call	SYSTEM$_$TSYSTEM_$__$$_CREATE$$TSYSTEM
	movq	%rax,TC_$SYSTEM_$$_SYS(%rip)
	movl	$1,%edx
	leaq	VMT_$SYSTEM_$$_TMEMORY(%rip),%rcx
	call	SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY
	movq	%rax,TC_$SYSTEM_$$_MEM(%rip)
	movq	TC_$SYSTEM_$$_DOS(%rip),%rcx
	leaq	_$SYSTEM$_Ld60(%rip),%rdx
	call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc445:

.section .text.n_system_$$_donesystem,"x"
.globl	SYSTEM_$$_DONESYSTEM
SYSTEM_$$_DONESYSTEM:
.Lc447:
.seh_proc SYSTEM_$$_DONESYSTEM
	leaq	-40(%rsp),%rsp
.Lc449:
.seh_stackalloc 40
.seh_endprologue
	call	_$dll$kernel32$GetConsoleWindow
	testl	%eax,%eax
	je	.Lj686
	call	SYSTEM_$$_DONECONSOLE
.Lj686:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc448:

.section .text.n_system$_$tsystem_$__$$_create$$tsystem,"x"
.globl	SYSTEM$_$TSYSTEM_$__$$_CREATE$$TSYSTEM
SYSTEM$_$TSYSTEM_$__$$_CREATE$$TSYSTEM:
.Lc450:
.seh_proc SYSTEM$_$TSYSTEM_$__$$_CREATE$$TSYSTEM
	pushq	%rbp
.seh_pushreg %rbp
.Lc452:
.Lc453:
	movq	%rsp,%rbp
.Lc454:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
	movq	%rcx,-16(%rbp)
	movq	%rdx,-8(%rbp)
	cmpq	$1,%rdx
	jne	.Lj690
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rax,%rcx
	call	*128(%rdx)
	movq	%rax,-16(%rbp)
.Lj690:
	cmpq	$0,-16(%rbp)
	je	.Lj687
.Lj698:
	nop
.Lj697:
	movq	$-1,-24(%rbp)
	movq	-16(%rbp),%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
	movl	$1,%edx
	leaq	VMT_$SYSTEM_$$_TMEMORY(%rip),%rcx
	call	SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY
	movq	%rax,U_$SYSTEM_$$__static_tsystem_FMEMCLASS(%rip)
	movq	$1,-24(%rbp)
	cmpq	$0,-16(%rbp)
	je	.Lj695
	cmpq	$0,-8(%rbp)
	je	.Lj695
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*168(%rax)
	jmp	.Lj695
.Lj694:
	cmpq	$0,-8(%rbp)
	je	.Lj704
	movq	-24(%rbp),%rdx
	movq	-16(%rbp),%rcx
	call	SYSTEM$_$TSYSTEM_$__$$_DESTROY
.Lj704:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj705:
	nop
.Lj695:
.Lj687:
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj697
	.rva	.Lj694
	.rva	.Lj695

.section .text.n_system$_$tsystem_$__$$_create$$tsystem,"x"
.seh_endproc
.Lc451:

.section .text.n_system$_$tsystem_$__$$_destroy,"x"
.globl	SYSTEM$_$TSYSTEM_$__$$_DESTROY
SYSTEM$_$TSYSTEM_$__$$_DESTROY:
.Lc455:
.seh_proc SYSTEM$_$TSYSTEM_$__$$_DESTROY
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc457:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rsi
	testq	%rsi,%rsi
	jng	.Lj709
	movq	%rbx,%rcx
	movq	(%rbx),%rax
	call	*176(%rax)
.Lj709:
	cmpq	$0,U_$SYSTEM_$$__static_tsystem_FMEMCLASS(%rip)
	je	.Lj711
	movq	U_$SYSTEM_$$__static_tsystem_FMEMCLASS(%rip),%rcx
	movq	U_$SYSTEM_$$__static_tsystem_FMEMCLASS(%rip),%rax
	movq	(%rax),%rax
	call	*184(%rax)
	movq	$0,U_$SYSTEM_$$__static_tsystem_FMEMCLASS(%rip)
.Lj711:
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_DESTROY
	testq	%rbx,%rbx
	je	.Lj713
	testq	%rsi,%rsi
	je	.Lj713
	movq	(%rbx),%rcx
	movq	(%rbx),%rax
	call	*136(%rax)
.Lj713:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc456:

.section .text.n_system$_$tsystem_$__$$_getmemory$$tmemory,"x"
.globl	SYSTEM$_$TSYSTEM_$__$$_GETMEMORY$$TMEMORY
SYSTEM$_$TSYSTEM_$__$$_GETMEMORY$$TMEMORY:
.Lc458:
.seh_proc SYSTEM$_$TSYSTEM_$__$$_GETMEMORY$$TMEMORY
	leaq	-40(%rsp),%rsp
.Lc460:
.seh_stackalloc 40
.seh_endprologue
	cmpq	$0,U_$SYSTEM_$$__static_tsystem_FMEMCLASS(%rip)
	jne	.Lj718
	movl	$1,%edx
	leaq	VMT_$SYSTEM_$$_TMEMORY(%rip),%rcx
	call	SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY
	movq	%rax,U_$SYSTEM_$$__static_tsystem_FMEMCLASS(%rip)
.Lj718:
	movq	U_$SYSTEM_$$__static_tsystem_FMEMCLASS(%rip),%rax
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc459:

.section .text.n_system$_$tsystem_$__$$_classname$$ansistring,"x"
.globl	SYSTEM$_$TSYSTEM_$__$$_CLASSNAME$$ANSISTRING
SYSTEM$_$TSYSTEM_$__$$_CLASSNAME$$ANSISTRING:
.Lc461:
.seh_proc SYSTEM$_$TSYSTEM_$__$$_CLASSNAME$$ANSISTRING
	leaq	-40(%rsp),%rsp
.Lc463:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
	movq	%rdx,%rcx
	leaq	.Ld61(%rip),%rdx
	call	fpc_ansistr_assign
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc462:

.section .text.n_system_$$_init$,"x"
.globl	INIT$_$SYSTEM
INIT$_$SYSTEM:
.globl	SYSTEM_$$_init$
SYSTEM_$$_init$:
.Lc464:
.seh_proc SYSTEM_$$_init$
	leaq	-40(%rsp),%rsp
.Lc466:
.seh_stackalloc 40
.seh_endprologue
	call	SYSTEM_$$_INITSYSTEM
	call	SYSTEM_$$_ISCONSOLEAPP$$BOOLEAN
	testb	%al,%al
	je	.Lj724
	leaq	_$SYSTEM$_Ld73(%rip),%rcx
	call	_$dll$msvcrt$printf
.Lj724:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc465:

.section .text.n_system_$$_finalize$,"x"
.globl	FINALIZE$_$SYSTEM
FINALIZE$_$SYSTEM:
.globl	SYSTEM_$$_finalize$
SYSTEM_$$_finalize$:
.Lc467:
.seh_proc SYSTEM_$$_finalize$
	leaq	-40(%rsp),%rsp
.Lc469:
.seh_stackalloc 40
.seh_endprologue
	call	SYSTEM_$$_DONESYSTEM
	call	SYSTEM_$$_ISCONSOLEAPP$$BOOLEAN
	testb	%al,%al
	je	.Lj726
	leaq	_$SYSTEM$_Ld74(%rip),%rcx
	call	_$dll$msvcrt$printf
.Lj726:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc468:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.balign 8
	.globl U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE
U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE:
	.zero 8

.section .bss
	.balign 8
	.globl U_$SYSTEM_$$_EXCEPTADDRSTACK
U_$SYSTEM_$$_EXCEPTADDRSTACK:
	.zero 8

.section .bss
	.balign 8
	.globl U_$SYSTEM_$$_EXCEPTOBJECTSTACK
U_$SYSTEM_$$_EXCEPTOBJECTSTACK:
	.zero 8

.section .bss
	.balign 8
	.globl U_$SYSTEM_$$_WINDOWS
U_$SYSTEM_$$_WINDOWS:
	.zero 8

.section .bss
	.balign 8
	.globl U_$SYSTEM_$$__static_tcpu_FCLASSPARENT
U_$SYSTEM_$$__static_tcpu_FCLASSPARENT:
	.zero 8

.section .bss
	.balign 8
	.globl U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY
U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY:
	.zero 8

.section .bss
	.balign 4
	.globl U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE
U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE:
	.zero 4

.section .bss
	.balign 8
	.globl U_$SYSTEM_$$__static_tmemory_FCLASSPARENT
U_$SYSTEM_$$__static_tmemory_FCLASSPARENT:
	.zero 8

.section .bss
	.globl U_$SYSTEM_$$__static_tsystem_FSYSTEMIO
U_$SYSTEM_$$__static_tsystem_FSYSTEMIO:
	.zero 8

.section .bss
	.balign 8
	.globl U_$SYSTEM_$$__static_tsystem_FCLASSPARENT
U_$SYSTEM_$$__static_tsystem_FCLASSPARENT:
	.zero 8

.section .bss
	.balign 8
	.globl U_$SYSTEM_$$__static_tsystem_FMEMCLASS
U_$SYSTEM_$$__static_tsystem_FMEMCLASS:
	.zero 8

.section .bss
	.balign 8
	.globl U_$SYSTEM_$$__static_tsystem_FCPUCLASS
U_$SYSTEM_$$__static_tsystem_FCPUCLASS:
	.zero 8

.section .bss
	.globl U_$SYSTEM_$$__static_tsystem_FVGACLASS
U_$SYSTEM_$$__static_tsystem_FVGACLASS:
	.zero 8

.section .bss
	.balign 4
U_$SYSTEM_$$_SYSINSTANCE:
	.zero 4

.section .bss
	.balign 4
U_$SYSTEM_$$_DLLREASON:
	.zero 4

.section .bss
	.balign 8
U_$SYSTEM_$$_DLLPARAM:
	.zero 8

.section .rodata.n_VMT_$SYSTEM_$$_TOBJECT,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_TOBJECT
VMT_$SYSTEM_$$_TOBJECT:
	.quad	8,-8,0
	.quad	.Ld62
	.quad	0,0,0
	.quad	RTTI_$SYSTEM_$$_TOBJECT
	.quad	0,0,0,0
	.quad	SYSTEM$_$TOBJECT_$__$$_DESTROY
	.quad	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$PCHAR
	.quad	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	.quad	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	.quad	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_FREE
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	0

.section .rodata.n_VMT_$SYSTEM_$$_TLIST,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_TLIST
VMT_$SYSTEM_$$_TLIST:
	.quad	8,-8
	.quad	VMT_$SYSTEM_$$_TOBJECT$indirect
	.quad	.Ld63
	.quad	0,0,0
	.quad	RTTI_$SYSTEM_$$_TLIST
	.quad	0,0,0,0
	.quad	SYSTEM$_$TOBJECT_$__$$_DESTROY
	.quad	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$PCHAR
	.quad	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	.quad	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	.quad	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_FREE
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	0

.section .rodata.n_VMT_$SYSTEM_$$_EXCEPTION,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_EXCEPTION
VMT_$SYSTEM_$$_EXCEPTION:
	.quad	24,-24
	.quad	VMT_$SYSTEM_$$_TOBJECT$indirect
	.quad	.Ld64
	.quad	0,0,0
	.quad	RTTI_$SYSTEM_$$_EXCEPTION
	.quad	0,0,0,0
	.quad	SYSTEM$_$TOBJECT_$__$$_DESTROY
	.quad	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$PCHAR
	.quad	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	.quad	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	.quad	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_FREE
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	SYSTEM$_$EXCEPTION_$__$$_CLASSNAME$$PCHAR
	.quad	0

.section .rodata.n_VMT_$SYSTEM_$$_EDIVBYZERO,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_EDIVBYZERO
VMT_$SYSTEM_$$_EDIVBYZERO:
	.quad	24,-24
	.quad	VMT_$SYSTEM_$$_EXCEPTION$indirect
	.quad	.Ld65
	.quad	0,0,0
	.quad	RTTI_$SYSTEM_$$_EDIVBYZERO
	.quad	0,0,0,0
	.quad	SYSTEM$_$TOBJECT_$__$$_DESTROY
	.quad	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$PCHAR
	.quad	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	.quad	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	.quad	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_FREE
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	SYSTEM$_$EXCEPTION_$__$$_CLASSNAME$$PCHAR
	.quad	0

.section .rodata.n_VMT_$SYSTEM_$$_EOUTOFMEMORY,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_EOUTOFMEMORY
VMT_$SYSTEM_$$_EOUTOFMEMORY:
	.quad	24,-24
	.quad	VMT_$SYSTEM_$$_EXCEPTION$indirect
	.quad	.Ld66
	.quad	0,0,0
	.quad	RTTI_$SYSTEM_$$_EOUTOFMEMORY
	.quad	0,0,0,0
	.quad	SYSTEM$_$TOBJECT_$__$$_DESTROY
	.quad	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$PCHAR
	.quad	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	.quad	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	.quad	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_FREE
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	SYSTEM$_$EXCEPTION_$__$$_CLASSNAME$$PCHAR
	.quad	0

.section .rodata.n_VMT_$SYSTEM_$$_EACCESSVIOLATION,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_EACCESSVIOLATION
VMT_$SYSTEM_$$_EACCESSVIOLATION:
	.quad	24,-24
	.quad	VMT_$SYSTEM_$$_EXCEPTION$indirect
	.quad	.Ld67
	.quad	0,0,0
	.quad	RTTI_$SYSTEM_$$_EACCESSVIOLATION
	.quad	0,0,0,0
	.quad	SYSTEM$_$TOBJECT_$__$$_DESTROY
	.quad	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$PCHAR
	.quad	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	.quad	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	.quad	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_FREE
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	SYSTEM$_$EXCEPTION_$__$$_CLASSNAME$$PCHAR
	.quad	0

.section .rodata.n_VMT_$SYSTEM_$$_TDOSCMD,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_TDOSCMD
VMT_$SYSTEM_$$_TDOSCMD:
	.quad	40,-40
	.quad	VMT_$SYSTEM_$$_TOBJECT$indirect
	.quad	.Ld68
	.quad	0,0,0
	.quad	RTTI_$SYSTEM_$$_TDOSCMD
	.quad	INIT_$SYSTEM_$$_TDOSCMD
	.quad	0,0,0
	.quad	SYSTEM$_$TDOSCMD_$__$$_DESTROY
	.quad	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$PCHAR
	.quad	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	.quad	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	.quad	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_FREE
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	SYSTEM$_$TDOSCMD_$__$$_FREE
	.quad	0

.section .rodata.n_VMT_$SYSTEM_$$_WINDOWS_CLASS,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_WINDOWS_CLASS
VMT_$SYSTEM_$$_WINDOWS_CLASS:
	.quad	8,-8
	.quad	VMT_$SYSTEM_$$_TOBJECT$indirect
	.quad	.Ld69
	.quad	0,0,0
	.quad	RTTI_$SYSTEM_$$_WINDOWS_CLASS
	.quad	0,0,0,0
	.quad	SYSTEM$_$TOBJECT_$__$$_DESTROY
	.quad	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$PCHAR
	.quad	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	.quad	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	.quad	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_FREE
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	SYSTEM$_$WINDOWS_CLASS_$__$$_FREE
	.quad	0

.section .rodata.n_VMT_$SYSTEM_$$_TCPU,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_TCPU
VMT_$SYSTEM_$$_TCPU:
	.quad	8,-8
	.quad	VMT_$SYSTEM_$$_TOBJECT$indirect
	.quad	.Ld70
	.quad	0,0,0
	.quad	RTTI_$SYSTEM_$$_TCPU
	.quad	0,0,0,0
	.quad	SYSTEM$_$TOBJECT_$__$$_DESTROY
	.quad	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$PCHAR
	.quad	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	.quad	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	.quad	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_FREE
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	SYSTEM$_$TCPU_$__$$_CLASSPARENT$$TOBJECT
	.quad	SYSTEM$_$TCPU_$__$$_CLASSNAME$$ANSISTRING
	.quad	0

.section .rodata.n_VMT_$SYSTEM_$$_TMEMORY,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_TMEMORY
VMT_$SYSTEM_$$_TMEMORY:
	.quad	8,-8
	.quad	VMT_$SYSTEM_$$_TOBJECT$indirect
	.quad	.Ld71
	.quad	0,0,0
	.quad	RTTI_$SYSTEM_$$_TMEMORY
	.quad	0,0,0,0
	.quad	SYSTEM$_$TOBJECT_$__$$_DESTROY
	.quad	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$PCHAR
	.quad	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	.quad	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	.quad	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_FREE
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	SYSTEM$_$TMEMORY_$__$$_FREE
	.quad	SYSTEM$_$TMEMORY_$__$$_CLASSNAME$$ANSISTRING
	.quad	0

.section .rodata.n_VMT_$SYSTEM_$$_TSYSTEM,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_TSYSTEM
VMT_$SYSTEM_$$_TSYSTEM:
	.quad	8,-8
	.quad	VMT_$SYSTEM_$$_TOBJECT$indirect
	.quad	.Ld72
	.quad	0,0,0
	.quad	RTTI_$SYSTEM_$$_TSYSTEM
	.quad	0,0,0,0
	.quad	SYSTEM$_$TOBJECT_$__$$_DESTROY
	.quad	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$PCHAR
	.quad	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	.quad	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	.quad	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	.quad	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	.quad	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal
	.quad	SYSTEM$_$TOBJECT_$__$$_FREE
	.quad	FPC_EMPTYMETHOD
	.quad	FPC_EMPTYMETHOD
	.quad	0
# End asmlist al_globals
# Begin asmlist al_const

.section .rodata.n_VMT_$SYSTEM_$$_TOBJECT,"d"
	.balign 8
.Ld62:
	.byte	7
	.ascii	"TObject"

.section .rodata.n_VMT_$SYSTEM_$$_TLIST,"d"
	.balign 8
.Ld63:
	.byte	5
	.ascii	"TList"

.section .rodata.n_VMT_$SYSTEM_$$_EXCEPTION,"d"
	.balign 8
.Ld64:
	.byte	9
	.ascii	"Exception"

.section .rodata.n_VMT_$SYSTEM_$$_EDIVBYZERO,"d"
	.balign 8
.Ld65:
	.byte	10
	.ascii	"EDivByZero"

.section .rodata.n_VMT_$SYSTEM_$$_EOUTOFMEMORY,"d"
	.balign 8
.Ld66:
	.byte	12
	.ascii	"EOutOfMemory"

.section .rodata.n_VMT_$SYSTEM_$$_EACCESSVIOLATION,"d"
	.balign 8
.Ld67:
	.byte	16
	.ascii	"EAccessViolation"

.section .rodata.n_VMT_$SYSTEM_$$_TDOSCMD,"d"
	.balign 8
.Ld68:
	.byte	7
	.ascii	"TDosCmd"

.section .rodata.n_VMT_$SYSTEM_$$_WINDOWS_CLASS,"d"
	.balign 8
.Ld69:
	.byte	13
	.ascii	"Windows_Class"

.section .rodata.n_VMT_$SYSTEM_$$_TCPU,"d"
	.balign 8
.Ld70:
	.byte	4
	.ascii	"TCPU"

.section .rodata.n_VMT_$SYSTEM_$$_TMEMORY,"d"
	.balign 8
.Ld71:
	.byte	7
	.ascii	"TMemory"

.section .rodata.n_VMT_$SYSTEM_$$_TSYSTEM,"d"
	.balign 8
.Ld72:
	.byte	7
	.ascii	"TSystem"
# End asmlist al_const
# Begin asmlist al_typedconsts

.section .data.n_TC_$SYSTEM_$$_IN_INITIALIZATION_CODE_EXE,"d"
.globl	TC_$SYSTEM_$$_IN_INITIALIZATION_CODE_EXE
TC_$SYSTEM_$$_IN_INITIALIZATION_CODE_EXE:
	.byte	0

.section .data.n_TC_$SYSTEM_$$_IN_INITIALIZATION_CODE_DLL,"d"
.globl	TC_$SYSTEM_$$_IN_INITIALIZATION_CODE_DLL
TC_$SYSTEM_$$_IN_INITIALIZATION_CODE_DLL:
	.byte	0

.section .data.n_TC_$SYSTEM_$$_SYSINITENTRYINFORMATION,"d"
.globl	TC_$SYSTEM_$$_SYSINITENTRYINFORMATION
TC_$SYSTEM_$$_SYSINITENTRYINFORMATION:
	.quad	0,0,0,0,0
	.quad	PASCALMAIN
	.byte	0,0,0,0,0,0,0,0

.section .data.n_TC_$SYSTEM_$$_EXITPROC,"d"
.globl	TC_$SYSTEM_$$_EXITPROC
TC_$SYSTEM_$$_EXITPROC:
	.quad	0

.section .data.n_TC_$SYSTEM_$$_ERRORADDR,"d"
.globl	TC_$SYSTEM_$$_ERRORADDR
TC_$SYSTEM_$$_ERRORADDR:
	.quad	0

.section .data.n_TC_$SYSTEM_$$_ERRORCODE,"d"
.globl	TC_$SYSTEM_$$_ERRORCODE
TC_$SYSTEM_$$_ERRORCODE:
	.short	0

.section .data.n_FPC_ERRORBASE,"d"
.globl	FPC_ERRORBASE
FPC_ERRORBASE:
	.quad	0

.section .data.n_TC_$SYSTEM_$$_EXCEPTION_CLASSES,"d"
.globl	TC_$SYSTEM_$$_EXCEPTION_CLASSES
TC_$SYSTEM_$$_EXCEPTION_CLASSES:
	.quad	VMT_$SYSTEM_$$_EDIVBYZERO
	.quad	0,0
	.quad	VMT_$SYSTEM_$$_EOUTOFMEMORY
	.quad	0,0,0,0,0,0,0,0,0,0,0,0
	.quad	VMT_$SYSTEM_$$_EACCESSVIOLATION
	.quad	0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0

.section .data.n_TC_$SYSTEM_$$_DOS,"d"
.globl	TC_$SYSTEM_$$_DOS
TC_$SYSTEM_$$_DOS:
	.quad	0

.section .data.n_TC_$SYSTEM_$$_MEM,"d"
.globl	TC_$SYSTEM_$$_MEM
TC_$SYSTEM_$$_MEM:
	.quad	0

.section .data.n_TC_$SYSTEM_$$_SYS,"d"
.globl	TC_$SYSTEM_$$_SYS
TC_$SYSTEM_$$_SYS:
	.quad	0

.section .rodata.n_.Ld1,"d"
.Ld1$strlab:
	.short	0,1
	.long	0
	.quad	-1,1
.Ld1:
	.ascii	"\000\000"

.section .rodata.n__$SYSTEM$_Ld2,"d"
.globl	_$SYSTEM$_Ld2
_$SYSTEM$_Ld2:
	.ascii	"init: %d\015\012\000"

.section .rodata.n__$SYSTEM$_Ld3,"d"
.globl	_$SYSTEM$_Ld3
_$SYSTEM$_Ld3:
	.ascii	"finalize...\015\012\000"

.section .rodata.n__$SYSTEM$_Ld4,"d"
.globl	_$SYSTEM$_Ld4
_$SYSTEM$_Ld4:
	.ascii	"system.pas\000"

.section .rodata.n__$SYSTEM$_Ld5,"d"
.globl	_$SYSTEM$_Ld5
_$SYSTEM$_Ld5:
	.ascii	"fpc_doneexceptions\000"

.section .rodata.n__$SYSTEM$_Ld6,"d"
.globl	_$SYSTEM$_Ld6
_$SYSTEM$_Ld6:
	.ascii	"Error\000"

.section .rodata.n__$SYSTEM$_Ld7,"d"
.globl	_$SYSTEM$_Ld7
_$SYSTEM$_Ld7:
	.ascii	"Error: fpc_AnsiStr_EmptyChar memory allocation fail"
	.ascii	".\000"

.section .rodata.n__$SYSTEM$_Ld8,"d"
.globl	_$SYSTEM$_Ld8
_$SYSTEM$_Ld8:
	.ascii	"exception\000"

.section .rodata.n__$SYSTEM$_Ld9,"d"
.globl	_$SYSTEM$_Ld9
_$SYSTEM$_Ld9:
	.ascii	"fpc_reraise\000"

.section .rodata.n__$SYSTEM$_Ld10,"d"
.globl	_$SYSTEM$_Ld10
_$SYSTEM$_Ld10:
	.ascii	"\015\012\000"

.section .rodata.n__$SYSTEM$_Ld11,"d"
.globl	_$SYSTEM$_Ld11
_$SYSTEM$_Ld11:
	.ascii	"Information\000"

.section .rodata.n__$SYSTEM$_Ld12,"d"
.globl	_$SYSTEM$_Ld12
_$SYSTEM$_Ld12:
	.ascii	"Warning\000"

.section .rodata.n__$SYSTEM$_Ld13,"d"
.globl	_$SYSTEM$_Ld13
_$SYSTEM$_Ld13:
	.ascii	"Error: could not allocate memory.\000"

.section .rodata.n__$SYSTEM$_Ld14,"d"
.globl	_$SYSTEM$_Ld14
_$SYSTEM$_Ld14:
	.ascii	"File can not be lock.\000"

.section .rodata.n__$SYSTEM$_Ld15,"d"
.globl	_$SYSTEM$_Ld15
_$SYSTEM$_Ld15:
	.ascii	"pacher\000"

.section .rodata.n__$SYSTEM$_Ld16,"d"
.globl	_$SYSTEM$_Ld16
_$SYSTEM$_Ld16:
	.ascii	"File: \"\000"

.section .rodata.n__$SYSTEM$_Ld17,"d"
.globl	_$SYSTEM$_Ld17
_$SYSTEM$_Ld17:
	.ascii	"\" already exists.\\n\000"

.section .rodata.n__$SYSTEM$_Ld18,"d"
.globl	_$SYSTEM$_Ld18
_$SYSTEM$_Ld18:
	.ascii	"Would you like override it ?\000"

.section .rodata.n__$SYSTEM$_Ld19,"d"
.globl	_$SYSTEM$_Ld19
_$SYSTEM$_Ld19:
	.ascii	"file could not be created !\000"

.section .rodata.n__$SYSTEM$_Ld20,"d"
.globl	_$SYSTEM$_Ld20
_$SYSTEM$_Ld20:
	.ascii	"file not delete\000"

.section .rodata.n__$SYSTEM$_Ld21,"d"
.globl	_$SYSTEM$_Ld21
_$SYSTEM$_Ld21:
	.ascii	"\" could not be open.\000"

.section .rodata.n__$SYSTEM$_Ld22,"d"
.globl	_$SYSTEM$_Ld22
_$SYSTEM$_Ld22:
	.ascii	"SetFilePointer() failed.\000"

.section .rodata.n__$SYSTEM$_Ld23,"d"
.globl	_$SYSTEM$_Ld23
_$SYSTEM$_Ld23:
	.ascii	"TObject\000"

.section .rodata.n__$SYSTEM$_Ld24,"d"
.globl	_$SYSTEM$_Ld24
_$SYSTEM$_Ld24:
	.ascii	"Error: instance is not allocated.\000"

.section .rodata.n__$SYSTEM$_Ld25,"d"
.globl	_$SYSTEM$_Ld25
_$SYSTEM$_Ld25:
	.ascii	"iiffdddd\000"

.section .rodata.n__$SYSTEM$_Ld26,"d"
.globl	_$SYSTEM$_Ld26
_$SYSTEM$_Ld26:
	.ascii	"free instance\000"

.section .rodata.n__$SYSTEM$_Ld27,"d"
.globl	_$SYSTEM$_Ld27
_$SYSTEM$_Ld27:
	.ascii	"safecallexc\000"

.section .rodata.n__$SYSTEM$_Ld28,"d"
.globl	_$SYSTEM$_Ld28
_$SYSTEM$_Ld28:
	.ascii	"iiff dddd\000"

.section .rodata.n__$SYSTEM$_Ld29,"d"
.globl	_$SYSTEM$_Ld29
_$SYSTEM$_Ld29:
	.ascii	"sa feca ll exc\000"

.section .rodata.n__$SYSTEM$_Ld30,"d"
.globl	_$SYSTEM$_Ld30
_$SYSTEM$_Ld30:
	.ascii	"info\000"

.section .rodata.n__$SYSTEM$_Ld31,"d"
.globl	_$SYSTEM$_Ld31
_$SYSTEM$_Ld31:
	.ascii	"tobject DEFAULT HANDLER\000"

.section .rodata.n__$SYSTEM$_Ld32,"d"
.globl	_$SYSTEM$_Ld32
_$SYSTEM$_Ld32:
	.ascii	"dfegf\000"

.section .rodata.n__$SYSTEM$_Ld33,"d"
.globl	_$SYSTEM$_Ld33
_$SYSTEM$_Ld33:
	.ascii	"pointer adrame\000"

.section .rodata.n__$SYSTEM$_Ld34,"d"
.globl	_$SYSTEM$_Ld34
_$SYSTEM$_Ld34:
	.ascii	"ino\000"

.section .rodata.n__$SYSTEM$_Ld35,"d"
.globl	_$SYSTEM$_Ld35
_$SYSTEM$_Ld35:
	.ascii	"andaddr\000"

.section .rodata.n__$SYSTEM$_Ld36,"d"
.globl	_$SYSTEM$_Ld36
_$SYSTEM$_Ld36:
	.ascii	"inngo\000"

.section .rodata.n__$SYSTEM$_Ld37,"d"
.globl	_$SYSTEM$_Ld37
_$SYSTEM$_Ld37:
	.ascii	"1 fpc_raiseexception\000"

.section .rodata.n__$SYSTEM$_Ld38,"d"
.globl	_$SYSTEM$_Ld38
_$SYSTEM$_Ld38:
	.ascii	"execp\000"

.section .rodata.n__$SYSTEM$_Ld39,"d"
.globl	_$SYSTEM$_Ld39
_$SYSTEM$_Ld39:
	.ascii	"2 fpc_raiseexception\000"

.section .rodata.n__$SYSTEM$_Ld40,"d"
.globl	_$SYSTEM$_Ld40
_$SYSTEM$_Ld40:
	.ascii	"Exception\000"

.section .rodata.n__$SYSTEM$_Ld41,"d"
.globl	_$SYSTEM$_Ld41
_$SYSTEM$_Ld41:
	.ascii	"exerc\000"

.section .rodata.n__$SYSTEM$_Ld42,"d"
.globl	_$SYSTEM$_Ld42
_$SYSTEM$_Ld42:
	.ascii	"anAddr is not assigned.\000"

.section .rodata.n__$SYSTEM$_Ld43,"d"
.globl	_$SYSTEM$_Ld43
_$SYSTEM$_Ld43:
	.ascii	"woooopsss\015\012\000"

.section .rodata.n__$SYSTEM$_Ld44,"d"
.globl	_$SYSTEM$_Ld44
_$SYSTEM$_Ld44:
	.ascii	"wooooopppsss\000"

.section .rodata.n__$SYSTEM$_Ld45,"d"
.globl	_$SYSTEM$_Ld45
_$SYSTEM$_Ld45:
	.ascii	"okokik\000"

.section .rodata.n__$SYSTEM$_Ld46,"d"
.globl	_$SYSTEM$_Ld46
_$SYSTEM$_Ld46:
	.ascii	"22 wooooopppsss\000"

.section .rodata.n_.Ld47,"d"
.Ld47$strlab:
	.short	0,1
	.long	0
	.quad	-1,2
.Ld47:
	.ascii	"\015\012\000"

.section .rodata.n__$SYSTEM$_Ld48,"d"
.globl	_$SYSTEM$_Ld48
_$SYSTEM$_Ld48:
	.ascii	"xxxxx\000"

.section .rodata.n__$SYSTEM$_Ld49,"d"
.globl	_$SYSTEM$_Ld49
_$SYSTEM$_Ld49:
	.ascii	"Message: %s\000"

.section .rodata.n__$SYSTEM$_Ld50,"d"
.globl	_$SYSTEM$_Ld50
_$SYSTEM$_Ld50:
	.ascii	"Title  : %s\000"

.section .rodata.n__$SYSTEM$_Ld51,"d"
.globl	_$SYSTEM$_Ld51
_$SYSTEM$_Ld51:
	.ascii	"%s\000"

.section .rodata.n__$SYSTEM$_Ld52,"d"
.globl	_$SYSTEM$_Ld52
_$SYSTEM$_Ld52:
	.ascii	"%s\015\012\000"

.section .rodata.n__$SYSTEM$_Ld53,"d"
.globl	_$SYSTEM$_Ld53
_$SYSTEM$_Ld53:
	.ascii	"PChar(AString)\000"

.section .rodata.n__$SYSTEM$_Ld54,"d"
.globl	_$SYSTEM$_Ld54
_$SYSTEM$_Ld54:
	.ascii	">>----->>> %s\000"

.section .rodata.n_.Ld55,"d"
.Ld55$strlab:
	.short	0,1
	.long	0
	.quad	-1,13
.Ld55:
	.ascii	"-----------> \000"

.section .rodata.n__$SYSTEM$_Ld56,"d"
.globl	_$SYSTEM$_Ld56
_$SYSTEM$_Ld56:
	.ascii	"uhuhuhuhu\000"

.section .rodata.n_.Ld57,"d"
.Ld57$strlab:
	.short	0,1
	.long	0
	.quad	-1,4
.Ld57:
	.ascii	"TCPU\000"

.section .rodata.n__$SYSTEM$_Ld58,"d"
.globl	_$SYSTEM$_Ld58
_$SYSTEM$_Ld58:
	.ascii	"memory 5555\000"

.section .rodata.n_.Ld59,"d"
.Ld59$strlab:
	.short	0,1
	.long	0
	.quad	-1,7
.Ld59:
	.ascii	"TMemory\000"

.section .rodata.n__$SYSTEM$_Ld60,"d"
.globl	_$SYSTEM$_Ld60
_$SYSTEM$_Ld60:
	.ascii	"start...\000"

.section .rodata.n_.Ld61,"d"
.Ld61$strlab:
	.short	0,1
	.long	0
	.quad	-1,7
.Ld61:
	.ascii	"TSystem\000"

.section .rodata.n__$SYSTEM$_Ld73,"d"
.globl	_$SYSTEM$_Ld73
_$SYSTEM$_Ld73:
	.ascii	"---< hocus pocus >-----\015\012\000"

.section .rodata.n__$SYSTEM$_Ld74,"d"
.globl	_$SYSTEM$_Ld74
_$SYSTEM$_Ld74:
	.ascii	"---< the end >-----\015\012\000"
# End asmlist al_typedconsts
# Begin asmlist al_rtti

.section .rodata.n_RTTI_$SYSTEM_$$_formal,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_formal
RTTI_$SYSTEM_$$_formal:
	.byte	0,7
	.ascii	"$formal"

.section .rodata.n_RTTI_$SYSTEM_$$_typedformal,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_typedformal
RTTI_$SYSTEM_$$_typedformal:
	.byte	0,12
	.ascii	"$typedformal"

.section .rodata.n_RTTI_$SYSTEM_$$_void,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_void
RTTI_$SYSTEM_$$_void:
	.byte	1,5
	.ascii	"$void"
	.byte	1
	.long	0,0

.section .rodata.n_RTTI_$SYSTEM_$$_POINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_POINTER
RTTI_$SYSTEM_$$_POINTER:
	.byte	29,7
	.ascii	"Pointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_BYTE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BYTE
RTTI_$SYSTEM_$$_BYTE:
	.byte	1,4
	.ascii	"Byte"
	.byte	1
	.long	0,255

.section .rodata.n_RTTI_$SYSTEM_$$_SHORTINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SHORTINT
RTTI_$SYSTEM_$$_SHORTINT:
	.byte	1,8
	.ascii	"ShortInt"
	.byte	0
	.long	-128,127

.section .rodata.n_RTTI_$SYSTEM_$$_WORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WORD
RTTI_$SYSTEM_$$_WORD:
	.byte	1,4
	.ascii	"Word"
	.byte	3
	.long	0,65535

.section .rodata.n_RTTI_$SYSTEM_$$_SMALLINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SMALLINT
RTTI_$SYSTEM_$$_SMALLINT:
	.byte	1,8
	.ascii	"SmallInt"
	.byte	2
	.long	-32768,32767

.section .rodata.n_RTTI_$SYSTEM_$$_LONGWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LONGWORD
RTTI_$SYSTEM_$$_LONGWORD:
	.byte	1,8
	.ascii	"LongWord"
	.byte	5
	.long	0,-1

.section .rodata.n_RTTI_$SYSTEM_$$_LONGINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LONGINT
RTTI_$SYSTEM_$$_LONGINT:
	.byte	1,7
	.ascii	"LongInt"
	.byte	4
	.long	-2147483648,2147483647

.section .rodata.n_RTTI_$SYSTEM_$$_QWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_QWORD
RTTI_$SYSTEM_$$_QWORD:
	.byte	20,5
	.ascii	"QWord"
	.byte	7
	.quad	0,-1

.section .rodata.n_RTTI_$SYSTEM_$$_INT64,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_INT64
RTTI_$SYSTEM_$$_INT64:
	.byte	19,5
	.ascii	"Int64"
	.byte	6
	.quad	-9223372036854775808,9223372036854775807

.section .rodata.n_RTTI_$SYSTEM_$$_uint128,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_uint128
RTTI_$SYSTEM_$$_uint128:
	.byte	1,8
	.ascii	"$uint128"
	.byte	1
	.long	0,0

.section .rodata.n_RTTI_$SYSTEM_$$_int128,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_int128
RTTI_$SYSTEM_$$_int128:
	.byte	1,7
	.ascii	"$int128"
	.byte	1
	.long	0,0

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN
RTTI_$SYSTEM_$$_BOOLEAN:
	.byte	18,7
	.ascii	"Boolean"
	.byte	1
	.long	0,1

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN8,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN8
RTTI_$SYSTEM_$$_BOOLEAN8:
	.byte	18,8
	.ascii	"Boolean8"
	.byte	1
	.long	0,1

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN16,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN16
RTTI_$SYSTEM_$$_BOOLEAN16:
	.byte	18,9
	.ascii	"Boolean16"
	.byte	3
	.long	0,1

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN32,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN32
RTTI_$SYSTEM_$$_BOOLEAN32:
	.byte	18,9
	.ascii	"Boolean32"
	.byte	5
	.long	0,1

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN64,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN64
RTTI_$SYSTEM_$$_BOOLEAN64:
	.byte	18,9
	.ascii	"Boolean64"
	.byte	7
	.quad	0,1

.section .rodata.n_RTTI_$SYSTEM_$$_BYTEBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BYTEBOOL
RTTI_$SYSTEM_$$_BYTEBOOL:
	.byte	18,8
	.ascii	"ByteBool"
	.byte	0
	.long	-2147483648,2147483647

.section .rodata.n_RTTI_$SYSTEM_$$_WORDBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WORDBOOL
RTTI_$SYSTEM_$$_WORDBOOL:
	.byte	18,8
	.ascii	"WordBool"
	.byte	2
	.long	-2147483648,2147483647

.section .rodata.n_RTTI_$SYSTEM_$$_LONGBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LONGBOOL
RTTI_$SYSTEM_$$_LONGBOOL:
	.byte	18,8
	.ascii	"LongBool"
	.byte	4
	.long	-2147483648,2147483647

.section .rodata.n_RTTI_$SYSTEM_$$_QWORDBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_QWORDBOOL
RTTI_$SYSTEM_$$_QWORDBOOL:
	.byte	18,9
	.ascii	"QWordBool"
	.byte	6
	.quad	-9223372036854775808,9223372036854775807

.section .rodata.n_RTTI_$SYSTEM_$$_CHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_CHAR
RTTI_$SYSTEM_$$_CHAR:
	.byte	2,4
	.ascii	"Char"
	.byte	1
	.long	0,255

.section .rodata.n_RTTI_$SYSTEM_$$_WIDECHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WIDECHAR
RTTI_$SYSTEM_$$_WIDECHAR:
	.byte	17,8
	.ascii	"WideChar"
	.byte	3
	.long	0,65535

.section .rodata.n_RTTI_$SYSTEM_$$_SHORTSTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SHORTSTRING
RTTI_$SYSTEM_$$_SHORTSTRING:
	.byte	7,11
	.ascii	"ShortString"
	.byte	255

.section .rodata.n_RTTI_$SYSTEM_$$_longstring,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_longstring
RTTI_$SYSTEM_$$_longstring:
	.byte	8,11
	.ascii	"$longstring"

.section .rodata.n_RTTI_$SYSTEM_$$_ANSISTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_ANSISTRING
RTTI_$SYSTEM_$$_ANSISTRING:
	.byte	9,10
	.ascii	"AnsiString"
	.short	0

.section .rodata.n_RTTI_$SYSTEM_$$_WIDESTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WIDESTRING
RTTI_$SYSTEM_$$_WIDESTRING:
	.byte	10,10
	.ascii	"WideString"

.section .rodata.n_RTTI_$SYSTEM_$$_UNICODESTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_UNICODESTRING
RTTI_$SYSTEM_$$_UNICODESTRING:
	.byte	24,13
	.ascii	"UnicodeString"

.section .rodata.n_RTTI_$SYSTEM_$$_OPENSTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_OPENSTRING
RTTI_$SYSTEM_$$_OPENSTRING:
	.byte	7,10
	.ascii	"OpenString"
	.byte	0

.section .rodata.n_RTTI_$SYSTEM_$$_SINGLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SINGLE
RTTI_$SYSTEM_$$_SINGLE:
	.byte	4,6
	.ascii	"Single"
	.byte	0

.section .rodata.n_RTTI_$SYSTEM_$$_DOUBLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_DOUBLE
RTTI_$SYSTEM_$$_DOUBLE:
	.byte	4,6
	.ascii	"Double"
	.byte	1

.section .rodata.n_RTTI_$SYSTEM_$$_s80real,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_s80real
RTTI_$SYSTEM_$$_s80real:
	.byte	4,8
	.ascii	"$s80real"
	.byte	2

.section .rodata.n_RTTI_$SYSTEM_$$_sc80real,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_sc80real
RTTI_$SYSTEM_$$_sc80real:
	.byte	4,9
	.ascii	"$sc80real"
	.byte	2

.section .rodata.n_RTTI_$SYSTEM_$$_CURRENCY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_CURRENCY
RTTI_$SYSTEM_$$_CURRENCY:
	.byte	4,8
	.ascii	"Currency"
	.byte	4

.section .rodata.n_RTTI_$SYSTEM_$$_char_pointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_char_pointer
RTTI_$SYSTEM_$$_char_pointer:
	.byte	29,13
	.ascii	"$char_pointer"
	.quad	RTTI_$SYSTEM_$$_CHAR$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_widechar_pointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_widechar_pointer
RTTI_$SYSTEM_$$_widechar_pointer:
	.byte	29,17
	.ascii	"$widechar_pointer"
	.quad	RTTI_$SYSTEM_$$_WIDECHAR$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_parentfp_void_pointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_parentfp_void_pointer
RTTI_$SYSTEM_$$_parentfp_void_pointer:
	.byte	29,22
	.ascii	"$parentfp_void_pointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_NEARPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARPOINTER
RTTI_$SYSTEM_$$_NEARPOINTER:
	.byte	29,11
	.ascii	"NearPointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_NEARCSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARCSPOINTER
RTTI_$SYSTEM_$$_NEARCSPOINTER:
	.byte	29,13
	.ascii	"NearCsPointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_NEARDSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARDSPOINTER
RTTI_$SYSTEM_$$_NEARDSPOINTER:
	.byte	29,13
	.ascii	"NearDsPointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_NEARSSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARSSPOINTER
RTTI_$SYSTEM_$$_NEARSSPOINTER:
	.byte	29,13
	.ascii	"NearSsPointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_NEARESPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARESPOINTER
RTTI_$SYSTEM_$$_NEARESPOINTER:
	.byte	29,13
	.ascii	"NearEsPointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_NEARFSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARFSPOINTER
RTTI_$SYSTEM_$$_NEARFSPOINTER:
	.byte	29,13
	.ascii	"NearFsPointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_NEARGSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARGSPOINTER
RTTI_$SYSTEM_$$_NEARGSPOINTER:
	.byte	29,13
	.ascii	"NearGsPointer"
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_openchararray,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_openchararray
RTTI_$SYSTEM_$$_openchararray:
	.byte	12,4
	.ascii	"Char"
	.quad	0,0
	.quad	RTTI_$SYSTEM_$$_CHAR$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_INT64$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_file,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_file
RTTI_$SYSTEM_$$_file:
	.byte	0,5
	.ascii	"$file"

.section .rodata.n_RTTI_$SYSTEM_$$_VARIANT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_VARIANT
RTTI_$SYSTEM_$$_VARIANT:
	.byte	11,7
	.ascii	"Variant"

.section .rodata.n_RTTI_$SYSTEM_$$_OLEVARIANT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_OLEVARIANT
RTTI_$SYSTEM_$$_OLEVARIANT:
	.byte	11,10
	.ascii	"OleVariant"

.section .rodata.n_RTTI_$SYSTEM_$$_TEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXT
RTTI_$SYSTEM_$$_TEXT:
	.byte	0,4
	.ascii	"Text"

.section .rodata.n_RTTI_$SYSTEM_$$_TYPEDFILE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TYPEDFILE
RTTI_$SYSTEM_$$_TYPEDFILE:
	.byte	0,9
	.ascii	"TypedFile"

.section .rodata.n_INIT_$SYSTEM_$$___vtbl_ptr_type,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$___vtbl_ptr_type
INIT_$SYSTEM_$$___vtbl_ptr_type:
	.byte	13,16
	.ascii	"$__vtbl_ptr_type"
	.quad	0
	.long	40
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_pvmt,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_pvmt
RTTI_$SYSTEM_$$_pvmt:
	.byte	29,5
	.ascii	"$pvmt"
	.quad	RTTI_$SYSTEM_$$___vtbl_ptr_type$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_def00000037,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000037
RTTI_$SYSTEM_$$_def00000037:
	.byte	29,0
	.quad	RTTI_$SYSTEM_$$_SHORTSTRING$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_def00000038,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000038
RTTI_$SYSTEM_$$_def00000038:
	.byte	12,0
	.quad	8,1
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$___vtbl_ptr_type,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$___vtbl_ptr_type
RTTI_$SYSTEM_$$___vtbl_ptr_type:
	.byte	13,16
	.ascii	"$__vtbl_ptr_type"
	.quad	INIT_$SYSTEM_$$___vtbl_ptr_type
	.long	40,5
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_pvmt$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_def00000037$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_def00000038$indirect
	.quad	32

.section .rodata.n_RTTI_$SYSTEM_$$_vtblarray,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_vtblarray
RTTI_$SYSTEM_$$_vtblarray:
	.byte	12,10
	.ascii	"$vtblarray"
	.quad	16,2
	.quad	RTTI_$SYSTEM_$$_pvmt$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect

.section .rodata.n_INIT_$SYSTEM_$$_methodpointer,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_methodpointer
INIT_$SYSTEM_$$_methodpointer:
	.byte	13,14
	.ascii	"$methodpointer"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_methodpointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_methodpointer
RTTI_$SYSTEM_$$_methodpointer:
	.byte	13,14
	.ascii	"$methodpointer"
	.quad	INIT_$SYSTEM_$$_methodpointer
	.long	16,2
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	8

.section .rodata.n_INIT_$SYSTEM_$$_nestedprocpointer,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_nestedprocpointer
INIT_$SYSTEM_$$_nestedprocpointer:
	.byte	13,18
	.ascii	"$nestedprocpointer"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_nestedprocpointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_nestedprocpointer
RTTI_$SYSTEM_$$_nestedprocpointer:
	.byte	13,18
	.ascii	"$nestedprocpointer"
	.quad	INIT_$SYSTEM_$$_nestedprocpointer
	.long	16,2
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_parentfp_void_pointer$indirect
	.quad	8

.section .rodata.n_RTTI_$SYSTEM_$$_SHORTBYTE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SHORTBYTE
RTTI_$SYSTEM_$$_SHORTBYTE:
	.byte	1,9
	.ascii	"ShortBYTE"
	.byte	0
	.long	-128,127

.section .rodata.n_RTTI_$SYSTEM_$$_SHORTWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SHORTWORD
RTTI_$SYSTEM_$$_SHORTWORD:
	.byte	1,9
	.ascii	"ShortWORD"
	.byte	2
	.long	-32768,32767

.section .rodata.n_RTTI_$SYSTEM_$$_SHORTDWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SHORTDWORD
RTTI_$SYSTEM_$$_SHORTDWORD:
	.byte	1,10
	.ascii	"ShortDWORD"
	.byte	4
	.long	-2147483648,2147483647

.section .rodata.n_RTTI_$SYSTEM_$$_SHORTQWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SHORTQWORD
RTTI_$SYSTEM_$$_SHORTQWORD:
	.byte	19,10
	.ascii	"ShortQWORD"
	.byte	6
	.quad	-9223372036854775808,9223372036854775807

.section .rodata.n_RTTI_$SYSTEM_$$_LONGBYTE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LONGBYTE
RTTI_$SYSTEM_$$_LONGBYTE:
	.byte	1,8
	.ascii	"LongBYTE"
	.byte	1
	.long	0,255

.section .rodata.n_RTTI_$SYSTEM_$$_LONGDWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LONGDWORD
RTTI_$SYSTEM_$$_LONGDWORD:
	.byte	1,9
	.ascii	"LongDWORD"
	.byte	5
	.long	0,-1

.section .rodata.n_RTTI_$SYSTEM_$$_LONGQWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LONGQWORD
RTTI_$SYSTEM_$$_LONGQWORD:
	.byte	20,9
	.ascii	"LongQWORD"
	.byte	7
	.quad	0,-1

.section .rodata.n_RTTI_$SYSTEM_$$_PLONGWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PLONGWORD
RTTI_$SYSTEM_$$_PLONGWORD:
	.byte	29,9
	.ascii	"PLongWord"
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PBYTE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PBYTE
RTTI_$SYSTEM_$$_PBYTE:
	.byte	29,5
	.ascii	"PByte"
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PPOINTER
RTTI_$SYSTEM_$$_PPOINTER:
	.byte	29,8
	.ascii	"PPointer"
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PCODEPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PCODEPOINTER
RTTI_$SYSTEM_$$_PCODEPOINTER:
	.byte	29,12
	.ascii	"PCodePointer"
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PCHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PCHAR
RTTI_$SYSTEM_$$_PCHAR:
	.byte	29,5
	.ascii	"PChar"
	.quad	RTTI_$SYSTEM_$$_CHAR$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PSHORTSTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSHORTSTRING
RTTI_$SYSTEM_$$_PSHORTSTRING:
	.byte	29,12
	.ascii	"PShortString"
	.quad	RTTI_$SYSTEM_$$_SHORTSTRING$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PANSICHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PANSICHAR
RTTI_$SYSTEM_$$_PANSICHAR:
	.byte	29,9
	.ascii	"PAnsiChar"
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PANSISTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PANSISTRING
RTTI_$SYSTEM_$$_PANSISTRING:
	.byte	29,11
	.ascii	"PAnsiString"
	.quad	RTTI_$SYSTEM_$$_ANSISTRING$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_RAWBYTESTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_RAWBYTESTRING
RTTI_$SYSTEM_$$_RAWBYTESTRING:
	.byte	9,13
	.ascii	"RawByteString"
	.short	0

.section .rodata.n_RTTI_$SYSTEM_$$_ULONG_PTR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_ULONG_PTR
RTTI_$SYSTEM_$$_ULONG_PTR:
	.byte	29,9
	.ascii	"ULONG_PTR"
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PLONG,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PLONG
RTTI_$SYSTEM_$$_PLONG:
	.byte	29,5
	.ascii	"PLONG"
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TMSGSTRTABLE,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TMSGSTRTABLE
INIT_$SYSTEM_$$_TMSGSTRTABLE:
	.byte	13,12
	.ascii	"TMsgStrTable"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TMSGSTRTABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TMSGSTRTABLE
RTTI_$SYSTEM_$$_TMSGSTRTABLE:
	.byte	13,12
	.ascii	"TMsgStrTable"
	.quad	INIT_$SYSTEM_$$_TMSGSTRTABLE
	.long	16,2
	.quad	RTTI_$SYSTEM_$$_PSHORTSTRING$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	8

.section .rodata.n_INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE
INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE:
	.byte	13,19
	.ascii	"TStringMessageTable"
	.quad	0
	.long	24
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_def00000052,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000052
RTTI_$SYSTEM_$$_def00000052:
	.byte	12,0
	.quad	16,1
	.quad	RTTI_$SYSTEM_$$_TMSGSTRTABLE$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE
RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE:
	.byte	13,19
	.ascii	"TStringMessageTable"
	.quad	INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE
	.long	24,2
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_def00000052$indirect
	.quad	8

.section .rodata.n_RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE
RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE:
	.byte	29,19
	.ascii	"PStringMessageTable"
	.quad	RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TGUID,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TGUID
INIT_$SYSTEM_$$_TGUID:
	.byte	13,5
	.ascii	"TGuid"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_def00000057,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000057
RTTI_$SYSTEM_$$_def00000057:
	.byte	12,0
	.quad	8,8
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_def00000058,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000058
RTTI_$SYSTEM_$$_def00000058:
	.byte	12,0
	.quad	8,8
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_def00000059,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000059
RTTI_$SYSTEM_$$_def00000059:
	.byte	12,0
	.quad	6,6
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_TGUID,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TGUID
RTTI_$SYSTEM_$$_TGUID:
	.byte	13,5
	.ascii	"TGuid"
	.quad	INIT_$SYSTEM_$$_TGUID
	.long	16,14
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	6
	.quad	RTTI_$SYSTEM_$$_def00000057$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	6
	.quad	RTTI_$SYSTEM_$$_def00000058$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	6
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.quad	9
	.quad	RTTI_$SYSTEM_$$_def00000059$indirect
	.quad	10

.section .rodata.n_RTTI_$SYSTEM_$$_PGUID,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PGUID
RTTI_$SYSTEM_$$_PGUID:
	.byte	29,5
	.ascii	"PGuid"
	.quad	RTTI_$SYSTEM_$$_TGUID$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE:
	.byte	3,19
	.ascii	"TInterfaceEntryType"
	.byte	5
	.long	0,6
	.quad	0
	.byte	10
	.ascii	"etStandard"
	.byte	21
	.ascii	"etVirtualMethodResult"
	.byte	20
	.ascii	"etStaticMethodResult"
	.byte	12
	.ascii	"etFieldValue"
	.byte	20
	.ascii	"etVirtualMethodClass"
	.byte	19
	.ascii	"etStaticMethodClass"
	.byte	17
	.ascii	"etFieldValueClass"
	.byte	6
	.ascii	"system"
	.byte	0

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o:
	.long	7,3
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+92
	.long	6
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+146
	.long	0
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+38
	.long	5
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+126
	.long	2
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+71
	.long	4
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+105
	.long	1
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+49

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s:
	.long	0
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+38
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+49
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+71
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+92
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+105
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+126
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE+146

.section .rodata.n_INIT_$SYSTEM_$$_TINTERFACEENTRY,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TINTERFACEENTRY
INIT_$SYSTEM_$$_TINTERFACEENTRY:
	.byte	13,15
	.ascii	"TInterfaceEntry"
	.quad	0
	.long	56
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEENTRY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEENTRY
RTTI_$SYSTEM_$$_TINTERFACEENTRY:
	.byte	13,15
	.ascii	"TInterfaceEntry"
	.quad	INIT_$SYSTEM_$$_TINTERFACEENTRY
	.long	56,8
	.quad	RTTI_$SYSTEM_$$_PGUID$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_PSHORTSTRING$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	32
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	32
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	40
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE$indirect
	.quad	48

.section .rodata.n_INIT_$SYSTEM_$$_TINTERFACETABLE,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TINTERFACETABLE
INIT_$SYSTEM_$$_TINTERFACETABLE:
	.byte	13,15
	.ascii	"TInterfaceTable"
	.quad	0
	.long	64
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_def0000005F,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def0000005F
RTTI_$SYSTEM_$$_def0000005F:
	.byte	12,0
	.quad	56,1
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRY$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACETABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACETABLE
RTTI_$SYSTEM_$$_TINTERFACETABLE:
	.byte	13,15
	.ascii	"TInterfaceTable"
	.quad	INIT_$SYSTEM_$$_TINTERFACETABLE
	.long	64,2
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_def0000005F$indirect
	.quad	8

.section .rodata.n_RTTI_$SYSTEM_$$_PINTERFACETABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PINTERFACETABLE
RTTI_$SYSTEM_$$_PINTERFACETABLE:
	.byte	29,15
	.ascii	"PInterfaceTable"
	.quad	RTTI_$SYSTEM_$$_TINTERFACETABLE$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TVMT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TVMT
INIT_$SYSTEM_$$_TVMT:
	.byte	13,4
	.ascii	"TVmt"
	.quad	0
	.long	192
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TVMT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TVMT
RTTI_$SYSTEM_$$_TVMT:
	.byte	13,4
	.ascii	"TVmt"
	.quad	INIT_$SYSTEM_$$_TVMT
	.long	192,25
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_PPVMT$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_PSHORTSTRING$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	32
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	40
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	48
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	56
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	64
	.quad	RTTI_$SYSTEM_$$_PINTERFACETABLE$indirect
	.quad	72
	.quad	RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE$indirect
	.quad	80
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	88
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	96
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	104
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	112
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	120
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	128
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	136
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	144
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	152
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	160
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	168
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	176
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	184

.section .rodata.n_RTTI_$SYSTEM_$$_PVMT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PVMT
RTTI_$SYSTEM_$$_PVMT:
	.byte	29,4
	.ascii	"PVmt"
	.quad	RTTI_$SYSTEM_$$_TVMT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PPVMT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PPVMT
RTTI_$SYSTEM_$$_PPVMT:
	.byte	29,5
	.ascii	"PPVmt"
	.quad	RTTI_$SYSTEM_$$_PVMT$indirect

.section .rodata.n_INIT_$SYSTEM_$$_JMP_BUF,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_JMP_BUF
INIT_$SYSTEM_$$_JMP_BUF:
	.byte	13,7
	.ascii	"jmp_buf"
	.quad	0
	.long	36
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_JMP_BUF,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_JMP_BUF
RTTI_$SYSTEM_$$_JMP_BUF:
	.byte	13,7
	.ascii	"jmp_buf"
	.quad	INIT_$SYSTEM_$$_JMP_BUF
	.long	36,6
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	12
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	20
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	28

.section .rodata.n_RTTI_$SYSTEM_$$_PJMP_BUF,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PJMP_BUF
RTTI_$SYSTEM_$$_PJMP_BUF:
	.byte	29,8
	.ascii	"PJmp_buf"
	.quad	RTTI_$SYSTEM_$$_JMP_BUF$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TEXCEPTADDR,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TEXCEPTADDR
INIT_$SYSTEM_$$_TEXCEPTADDR:
	.byte	13,11
	.ascii	"TExceptAddr"
	.quad	0
	.long	24
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TEXCEPTADDR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXCEPTADDR
RTTI_$SYSTEM_$$_TEXCEPTADDR:
	.byte	13,11
	.ascii	"TExceptAddr"
	.quad	INIT_$SYSTEM_$$_TEXCEPTADDR
	.long	24,3
	.quad	RTTI_$SYSTEM_$$_PJMP_BUF$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_PEXCEPTADDR$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	16

.section .rodata.n_RTTI_$SYSTEM_$$_PEXCEPTADDR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PEXCEPTADDR
RTTI_$SYSTEM_$$_PEXCEPTADDR:
	.byte	29,11
	.ascii	"PExceptAddr"
	.quad	RTTI_$SYSTEM_$$_TEXCEPTADDR$indirect

.section .rodata.n_INIT_$SYSTEM_$$_FILEREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_FILEREC
INIT_$SYSTEM_$$_FILEREC:
	.byte	13,7
	.ascii	"FileRec"
	.quad	0
	.long	4
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_FILEREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_FILEREC
RTTI_$SYSTEM_$$_FILEREC:
	.byte	13,7
	.ascii	"FileRec"
	.quad	INIT_$SYSTEM_$$_FILEREC
	.long	4,1
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	0

.section .rodata.n_RTTI_$SYSTEM_$$_TTYPEKIND,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TTYPEKIND
RTTI_$SYSTEM_$$_TTYPEKIND:
	.byte	3,9
	.ascii	"TTypeKind"
	.byte	5
	.long	0,29
	.quad	0
	.byte	9
	.ascii	"tkUnknown"
	.byte	9
	.ascii	"tkInteger"
	.byte	6
	.ascii	"tkChar"
	.byte	13
	.ascii	"tkEnumeration"
	.byte	7
	.ascii	"tkFloat"
	.byte	5
	.ascii	"tkSet"
	.byte	8
	.ascii	"tkMethod"
	.byte	9
	.ascii	"tkSString"
	.byte	9
	.ascii	"tkLString"
	.byte	9
	.ascii	"tkAString"
	.byte	9
	.ascii	"tkWString"
	.byte	9
	.ascii	"tkVariant"
	.byte	7
	.ascii	"tkArray"
	.byte	8
	.ascii	"tkRecord"
	.byte	11
	.ascii	"tkInterface"
	.byte	7
	.ascii	"tkClass"
	.byte	8
	.ascii	"tkObject"
	.byte	7
	.ascii	"tkWChar"
	.byte	6
	.ascii	"tkBool"
	.byte	7
	.ascii	"tkInt64"
	.byte	7
	.ascii	"tkQWord"
	.byte	10
	.ascii	"tkDynArray"
	.byte	14
	.ascii	"tkInterfaceRaw"
	.byte	9
	.ascii	"tkProcVar"
	.byte	9
	.ascii	"tkUString"
	.byte	7
	.ascii	"tkUChar"
	.byte	8
	.ascii	"tkHelper"
	.byte	6
	.ascii	"tkFile"
	.byte	10
	.ascii	"tkClassRef"
	.byte	9
	.ascii	"tkPointer"
	.byte	6
	.ascii	"system"
	.byte	0

.section .rodata.n_RTTI_$SYSTEM_$$_TTYPEKIND_s2o,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TTYPEKIND_s2o
RTTI_$SYSTEM_$$_TTYPEKIND_s2o:
	.long	30,12
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+142
	.long	9
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+112
	.long	18
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+196
	.long	2
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+48
	.long	15
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+171
	.long	28
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+289
	.long	21
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+219
	.long	3
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+55
	.long	27
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+282
	.long	4
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+69
	.long	26
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+273
	.long	19
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+203
	.long	1
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+38
	.long	14
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+159
	.long	22
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+230
	.long	8
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+102
	.long	6
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+83
	.long	16
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+179
	.long	29
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+300
	.long	23
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+245
	.long	20
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+211
	.long	13
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+150
	.long	5
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+77
	.long	7
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+92
	.long	25
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+265
	.long	0
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+28
	.long	24
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+255
	.long	11
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+132
	.long	17
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+188
	.long	10
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+122

.section .rodata.n_RTTI_$SYSTEM_$$_TTYPEKIND_o2s,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TTYPEKIND_o2s
RTTI_$SYSTEM_$$_TTYPEKIND_o2s:
	.long	0
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+28
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+38
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+48
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+55
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+69
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+77
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+83
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+92
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+102
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+112
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+122
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+132
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+142
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+150
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+159
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+171
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+179
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+188
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+196
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+203
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+211
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+219
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+230
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+245
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+255
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+265
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+273
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+282
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+289
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND+300

.section .rodata.n_RTTI_$SYSTEM_$$_PTEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PTEXT
RTTI_$SYSTEM_$$_PTEXT:
	.byte	29,5
	.ascii	"PText"
	.quad	RTTI_$SYSTEM_$$_TEXT$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TEXTREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TEXTREC
INIT_$SYSTEM_$$_TEXTREC:
	.byte	13,7
	.ascii	"TextRec"
	.quad	0
	.long	20
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TEXTREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXTREC
RTTI_$SYSTEM_$$_TEXTREC:
	.byte	13,7
	.ascii	"TextRec"
	.quad	INIT_$SYSTEM_$$_TEXTREC
	.long	20,5
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	12
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	16

.section .rodata.n_INIT_$SYSTEM_$$_TANSIREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TANSIREC
INIT_$SYSTEM_$$_TANSIREC:
	.byte	13,8
	.ascii	"TAnsiRec"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TANSIREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TANSIREC
RTTI_$SYSTEM_$$_TANSIREC:
	.byte	13,8
	.ascii	"TAnsiRec"
	.quad	INIT_$SYSTEM_$$_TANSIREC
	.long	8,2
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_SHORTDWORD$indirect
	.quad	4

.section .rodata.n_RTTI_$SYSTEM_$$_PANSIREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PANSIREC
RTTI_$SYSTEM_$$_PANSIREC:
	.byte	29,8
	.ascii	"PAnsiRec"
	.quad	RTTI_$SYSTEM_$$_TANSIREC$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PHANDLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PHANDLE
RTTI_$SYSTEM_$$_PHANDLE:
	.byte	29,7
	.ascii	"PHandle"
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TOBJECT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TOBJECT
INIT_$SYSTEM_$$_TOBJECT:
	.byte	15,7
	.ascii	"TObject"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TOBJECT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TOBJECT
RTTI_$SYSTEM_$$_TOBJECT:
	.byte	15,7
	.ascii	"TObject"
	.quad	VMT_$SYSTEM_$$_TOBJECT
	.quad	0
	.short	0
	.byte	6
	.ascii	"system"
	.short	0

.section .rodata.n_RTTI_$SYSTEM_$$_TCLASS,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TCLASS
RTTI_$SYSTEM_$$_TCLASS:
	.byte	28,6
	.ascii	"TClass"
	.quad	RTTI_$SYSTEM_$$_TOBJECT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_def000000AF,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000000AF
RTTI_$SYSTEM_$$_def000000AF:
	.byte	12,10
	.ascii	"AnsiString"
	.quad	0,0
	.quad	RTTI_$SYSTEM_$$_ANSISTRING$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_INT64$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TENTRYINFORMATION,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TENTRYINFORMATION
INIT_$SYSTEM_$$_TENTRYINFORMATION:
	.byte	13,17
	.ascii	"TEntryInformation"
	.quad	0
	.long	56
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_def000000CA,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000000CA
RTTI_$SYSTEM_$$_def000000CA:
	.byte	23,0,0,0
	.quad	0
	.byte	0

.section .rodata.n_RTTI_$SYSTEM_$$_TENTRYINFORMATION,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TENTRYINFORMATION
RTTI_$SYSTEM_$$_TENTRYINFORMATION:
	.byte	13,17
	.ascii	"TEntryInformation"
	.quad	INIT_$SYSTEM_$$_TENTRYINFORMATION
	.long	56,7
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	32
	.quad	RTTI_$SYSTEM_$$_def000000CA$indirect
	.quad	40
	.quad	RTTI_$SYSTEM_$$_BOOLEAN$indirect
	.quad	48

.section .rodata.n_RTTI_$SYSTEM_$$_LPVOID,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LPVOID
RTTI_$SYSTEM_$$_LPVOID:
	.byte	29,6
	.ascii	"LPVOID"
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_LPCVOID,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LPCVOID
RTTI_$SYSTEM_$$_LPCVOID:
	.byte	29,7
	.ascii	"LPCVOID"
	.quad	RTTI_$SYSTEM_$$_LPVOID$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PDWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PDWORD
RTTI_$SYSTEM_$$_PDWORD:
	.byte	29,6
	.ascii	"PDWORD"
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect

.section .rodata.n_INIT_$SYSTEM_$$_POINT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_POINT
INIT_$SYSTEM_$$_POINT:
	.byte	13,5
	.ascii	"POINT"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_POINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_POINT
RTTI_$SYSTEM_$$_POINT:
	.byte	13,5
	.ascii	"POINT"
	.quad	INIT_$SYSTEM_$$_POINT
	.long	8,2
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	4

.section .rodata.n_RTTI_$SYSTEM_$$_PPOINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PPOINT
RTTI_$SYSTEM_$$_PPOINT:
	.byte	29,6
	.ascii	"PPoint"
	.quad	RTTI_$SYSTEM_$$_POINT$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TMESSAGE,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TMESSAGE
INIT_$SYSTEM_$$_TMESSAGE:
	.byte	13,8
	.ascii	"TMessage"
	.quad	0
	.long	32
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TMESSAGE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TMESSAGE
RTTI_$SYSTEM_$$_TMESSAGE:
	.byte	13,8
	.ascii	"TMessage"
	.quad	INIT_$SYSTEM_$$_TMESSAGE
	.long	32,7
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	12
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_POINT$indirect
	.quad	20
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	28

.section .rodata.n_RTTI_$SYSTEM_$$_PMESSAGE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PMESSAGE
RTTI_$SYSTEM_$$_PMESSAGE:
	.byte	29,8
	.ascii	"PMessage"
	.quad	RTTI_$SYSTEM_$$_TMESSAGE$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_STD_HANDLES,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_STD_HANDLES
RTTI_$SYSTEM_$$_STD_HANDLES:
	.byte	3,11
	.ascii	"STD_HANDLES"
	.byte	5
	.long	-12,-10
	.quad	0
	.byte	7
	.ascii	"shInput"
	.byte	8
	.ascii	"shOutput"
	.byte	7
	.ascii	"shError"
	.byte	6
	.ascii	"system"
	.byte	0

.section .rodata.n_RTTI_$SYSTEM_$$_STD_HANDLES_s2o,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_STD_HANDLES_s2o
RTTI_$SYSTEM_$$_STD_HANDLES_s2o:
	.long	3,-12
	.quad	RTTI_$SYSTEM_$$_STD_HANDLES+47
	.long	-10
	.quad	RTTI_$SYSTEM_$$_STD_HANDLES+30
	.long	-11
	.quad	RTTI_$SYSTEM_$$_STD_HANDLES+38

.section .rodata.n_RTTI_$SYSTEM_$$_STD_HANDLES_o2s,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_STD_HANDLES_o2s
RTTI_$SYSTEM_$$_STD_HANDLES_o2s:
	.long	0
	.quad	RTTI_$SYSTEM_$$_STD_HANDLES+47
	.quad	RTTI_$SYSTEM_$$_STD_HANDLES+38
	.quad	RTTI_$SYSTEM_$$_STD_HANDLES+30

.section .rodata.n_INIT_$SYSTEM_$$_COORD,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_COORD
INIT_$SYSTEM_$$_COORD:
	.byte	13,5
	.ascii	"COORD"
	.quad	0
	.long	4
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_COORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_COORD
RTTI_$SYSTEM_$$_COORD:
	.byte	13,5
	.ascii	"COORD"
	.quad	INIT_$SYSTEM_$$_COORD
	.long	4,2
	.quad	RTTI_$SYSTEM_$$_SMALLINT$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_SMALLINT$indirect
	.quad	2

.section .rodata.n_RTTI_$SYSTEM_$$_PCORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PCORD
RTTI_$SYSTEM_$$_PCORD:
	.byte	29,5
	.ascii	"PCORD"
	.quad	RTTI_$SYSTEM_$$_COORD$indirect

.section .rodata.n_INIT_$SYSTEM_$$_SMALL_RECT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_SMALL_RECT
INIT_$SYSTEM_$$_SMALL_RECT:
	.byte	13,10
	.ascii	"SMALL_RECT"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_SMALL_RECT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SMALL_RECT
RTTI_$SYSTEM_$$_SMALL_RECT:
	.byte	13,10
	.ascii	"SMALL_RECT"
	.quad	INIT_$SYSTEM_$$_SMALL_RECT
	.long	8,4
	.quad	RTTI_$SYSTEM_$$_SMALLINT$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_SMALLINT$indirect
	.quad	2
	.quad	RTTI_$SYSTEM_$$_SMALLINT$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_SMALLINT$indirect
	.quad	6

.section .rodata.n_RTTI_$SYSTEM_$$_PSMALL_RECT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSMALL_RECT
RTTI_$SYSTEM_$$_PSMALL_RECT:
	.byte	29,11
	.ascii	"PSMALL_RECT"
	.quad	RTTI_$SYSTEM_$$_SMALL_RECT$indirect

.section .rodata.n_INIT_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO
INIT_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO:
	.byte	13,26
	.ascii	"CONSOLE_SCREEN_BUFFER_INFO"
	.quad	0
	.long	22
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO
RTTI_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO:
	.byte	13,26
	.ascii	"CONSOLE_SCREEN_BUFFER_INFO"
	.quad	INIT_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO
	.long	22,5
	.quad	RTTI_$SYSTEM_$$_COORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_COORD$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_SMALL_RECT$indirect
	.quad	10
	.quad	RTTI_$SYSTEM_$$_COORD$indirect
	.quad	18

.section .rodata.n_RTTI_$SYSTEM_$$_PCONSOLE_SCREEN_BUFFER_INFO,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PCONSOLE_SCREEN_BUFFER_INFO
RTTI_$SYSTEM_$$_PCONSOLE_SCREEN_BUFFER_INFO:
	.byte	29,27
	.ascii	"PCONSOLE_SCREEN_BUFFER_INFO"
	.quad	RTTI_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO$indirect

.section .rodata.n_INIT_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL
INIT_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL:
	.byte	13,27
	.ascii	"CONSOLE_READCONSOLE_CONTROL"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL
RTTI_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL:
	.byte	13,27
	.ascii	"CONSOLE_READCONSOLE_CONTROL"
	.quad	INIT_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL
	.long	16,4
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	12

.section .rodata.n_RTTI_$SYSTEM_$$_PCONSOLE_READCONSOLE_CONTROL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PCONSOLE_READCONSOLE_CONTROL
RTTI_$SYSTEM_$$_PCONSOLE_READCONSOLE_CONTROL:
	.byte	29,28
	.ascii	"PCONSOLE_READCONSOLE_CONTROL"
	.quad	RTTI_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL$indirect

.section .rodata.n_INIT_$SYSTEM_$$_SECURITY_ATTRIBUTES,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_SECURITY_ATTRIBUTES
INIT_$SYSTEM_$$_SECURITY_ATTRIBUTES:
	.byte	13,19
	.ascii	"SECURITY_ATTRIBUTES"
	.quad	0
	.long	24
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_SECURITY_ATTRIBUTES,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SECURITY_ATTRIBUTES
RTTI_$SYSTEM_$$_SECURITY_ATTRIBUTES:
	.byte	13,19
	.ascii	"SECURITY_ATTRIBUTES"
	.quad	INIT_$SYSTEM_$$_SECURITY_ATTRIBUTES
	.long	24,3
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LPVOID$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	16

.section .rodata.n_RTTI_$SYSTEM_$$_PSECURITY_ATTRIBUTES,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSECURITY_ATTRIBUTES
RTTI_$SYSTEM_$$_PSECURITY_ATTRIBUTES:
	.byte	29,20
	.ascii	"PSECURITY_ATTRIBUTES"
	.quad	RTTI_$SYSTEM_$$_SECURITY_ATTRIBUTES$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_LPSECURITY_ATTRIBUTES,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LPSECURITY_ATTRIBUTES
RTTI_$SYSTEM_$$_LPSECURITY_ATTRIBUTES:
	.byte	29,21
	.ascii	"LPSECURITY_ATTRIBUTES"
	.quad	RTTI_$SYSTEM_$$_SECURITY_ATTRIBUTES$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_PSECURITYATTRIBUTES,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSECURITYATTRIBUTES
RTTI_$SYSTEM_$$_PSECURITYATTRIBUTES:
	.byte	29,19
	.ascii	"PSecurityAttributes"
	.quad	RTTI_$SYSTEM_$$_SECURITY_ATTRIBUTES$indirect

.section .rodata.n_INIT_$SYSTEM_$$__OVERLAPPED,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$__OVERLAPPED
INIT_$SYSTEM_$$__OVERLAPPED:
	.byte	13,11
	.ascii	"_OVERLAPPED"
	.quad	0
	.long	32
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$__OVERLAPPED,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$__OVERLAPPED
RTTI_$SYSTEM_$$__OVERLAPPED:
	.byte	13,11
	.ascii	"_OVERLAPPED"
	.quad	INIT_$SYSTEM_$$__OVERLAPPED
	.long	32,5
	.quad	RTTI_$SYSTEM_$$_ULONG_PTR$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_ULONG_PTR$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	20
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	24

.section .rodata.n_RTTI_$SYSTEM_$$_POVERLAPPED,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_POVERLAPPED
RTTI_$SYSTEM_$$_POVERLAPPED:
	.byte	29,11
	.ascii	"POverlapped"
	.quad	RTTI_$SYSTEM_$$__OVERLAPPED$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TLIST,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TLIST
INIT_$SYSTEM_$$_TLIST:
	.byte	15,5
	.ascii	"TList"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TLIST,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TLIST
RTTI_$SYSTEM_$$_TLIST:
	.byte	15,5
	.ascii	"TList"
	.quad	VMT_$SYSTEM_$$_TLIST
	.quad	RTTI_$SYSTEM_$$_TOBJECT$indirect
	.short	0
	.byte	6
	.ascii	"system"
	.short	0

.section .rodata.n_RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION
RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION:
	.byte	3,21
	.ascii	"EXCEPTION_DISPOSITION"
	.byte	5
	.long	0,3
	.quad	0
	.byte	26
	.ascii	"ExceptionContinueExecution"
	.byte	23
	.ascii	"ExceptionContinueSearch"
	.byte	24
	.ascii	"ExceptionNestedException"
	.byte	23
	.ascii	"ExceptionCollidedUnwind"
	.byte	6
	.ascii	"system"
	.byte	0

.section .rodata.n_RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_s2o,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_s2o
RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_s2o:
	.long	4,3
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+116
	.long	0
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+40
	.long	1
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+67
	.long	2
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+91

.section .rodata.n_RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_o2s,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_o2s
RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_o2s:
	.long	0
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+40
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+67
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+91
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION+116

.section .rodata.n_INIT_$SYSTEM_$$_EXCEPTION_RECORD,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_EXCEPTION_RECORD
INIT_$SYSTEM_$$_EXCEPTION_RECORD:
	.byte	13,16
	.ascii	"EXCEPTION_RECORD"
	.quad	0
	.long	152
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_def00000199,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000199
RTTI_$SYSTEM_$$_def00000199:
	.byte	12,0
	.quad	120,15
	.quad	RTTI_$SYSTEM_$$_ULONG_PTR$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_EXCEPTION_RECORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EXCEPTION_RECORD
RTTI_$SYSTEM_$$_EXCEPTION_RECORD:
	.byte	13,16
	.ascii	"EXCEPTION_RECORD"
	.quad	INIT_$SYSTEM_$$_EXCEPTION_RECORD
	.long	152,6
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_PEXCEPTION_RECORD$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_def00000199$indirect
	.quad	32

.section .rodata.n_RTTI_$SYSTEM_$$_PEXCEPTION_RECORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PEXCEPTION_RECORD
RTTI_$SYSTEM_$$_PEXCEPTION_RECORD:
	.byte	29,17
	.ascii	"PEXCEPTION_RECORD"
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_RECORD$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TSEHFRAME,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TSEHFRAME
INIT_$SYSTEM_$$_TSEHFRAME:
	.byte	13,9
	.ascii	"TSEHFrame"
	.quad	0
	.long	32
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TSEHFRAME,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TSEHFRAME
RTTI_$SYSTEM_$$_TSEHFRAME:
	.byte	13,9
	.ascii	"TSEHFrame"
	.quad	INIT_$SYSTEM_$$_TSEHFRAME
	.long	32,4
	.quad	RTTI_$SYSTEM_$$_PSEHFRAME$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	24

.section .rodata.n_RTTI_$SYSTEM_$$_PSEHFRAME,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSEHFRAME
RTTI_$SYSTEM_$$_PSEHFRAME:
	.byte	29,9
	.ascii	"PSEHFrame"
	.quad	RTTI_$SYSTEM_$$_TSEHFRAME$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TSCOPEREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TSCOPEREC
INIT_$SYSTEM_$$_TSCOPEREC:
	.byte	13,9
	.ascii	"TScopeRec"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TSCOPEREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TSCOPEREC
RTTI_$SYSTEM_$$_TSCOPEREC:
	.byte	13,9
	.ascii	"TScopeRec"
	.quad	INIT_$SYSTEM_$$_TSCOPEREC
	.long	16,4
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	12

.section .rodata.n_RTTI_$SYSTEM_$$_PSCOPEREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSCOPEREC
RTTI_$SYSTEM_$$_PSCOPEREC:
	.byte	29,9
	.ascii	"PScopeRec"
	.quad	RTTI_$SYSTEM_$$_TSCOPEREC$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TSEHHANDLERDATA,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TSEHHANDLERDATA
INIT_$SYSTEM_$$_TSEHHANDLERDATA:
	.byte	13,15
	.ascii	"TSEHHandlerData"
	.quad	0
	.long	32
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TSEHHANDLERDATA,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TSEHHANDLERDATA
RTTI_$SYSTEM_$$_TSEHHANDLERDATA:
	.byte	13,15
	.ascii	"TSEHHandlerData"
	.quad	INIT_$SYSTEM_$$_TSEHHANDLERDATA
	.long	32,5
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_LONGWORD$indirect
	.quad	4
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	24

.section .rodata.n_INIT_$SYSTEM_$$_TEXCEPTOBJECT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TEXCEPTOBJECT
INIT_$SYSTEM_$$_TEXCEPTOBJECT:
	.byte	13,13
	.ascii	"TExceptObject"
	.quad	0
	.long	96
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TEXCEPTOBJECT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXCEPTOBJECT
RTTI_$SYSTEM_$$_TEXCEPTOBJECT:
	.byte	13,13
	.ascii	"TExceptObject"
	.quad	INIT_$SYSTEM_$$_TEXCEPTOBJECT
	.long	96,9
	.quad	RTTI_$SYSTEM_$$_TOBJECT$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_PEXCEPTOBJECT$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_LONGINT$indirect
	.quad	28
	.quad	RTTI_$SYSTEM_$$_PCODEPOINTER$indirect
	.quad	32
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	40
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	48
	.quad	RTTI_$SYSTEM_$$_JMP_BUF$indirect
	.quad	56

.section .rodata.n_RTTI_$SYSTEM_$$_PEXCEPTOBJECT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PEXCEPTOBJECT
RTTI_$SYSTEM_$$_PEXCEPTOBJECT:
	.byte	29,13
	.ascii	"PExceptObject"
	.quad	RTTI_$SYSTEM_$$_TEXCEPTOBJECT$indirect

.section .rodata.n_INIT_$SYSTEM_$$_M128A,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_M128A
INIT_$SYSTEM_$$_M128A:
	.byte	13,5
	.ascii	"M128A"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_M128A,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_M128A
RTTI_$SYSTEM_$$_M128A:
	.byte	13,5
	.ascii	"M128A"
	.quad	INIT_$SYSTEM_$$_M128A
	.long	16,2
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_INT64$indirect
	.quad	8

.section .rodata.n_RTTI_$SYSTEM_$$_PM128A,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PM128A
RTTI_$SYSTEM_$$_PM128A:
	.byte	29,6
	.ascii	"PM128A"
	.quad	RTTI_$SYSTEM_$$_M128A$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TCONTEXT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TCONTEXT
INIT_$SYSTEM_$$_TCONTEXT:
	.byte	13,8
	.ascii	"TContext"
	.quad	0
	.long	1136
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_def000001A5,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000001A5
RTTI_$SYSTEM_$$_def000001A5:
	.byte	12,0
	.quad	32,2
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_def000001A6,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000001A6
RTTI_$SYSTEM_$$_def000001A6:
	.byte	12,0
	.quad	128,8
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_def000001A7,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000001A7
RTTI_$SYSTEM_$$_def000001A7:
	.byte	12,0
	.quad	416,26
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_TCONTEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TCONTEXT
RTTI_$SYSTEM_$$_TCONTEXT:
	.byte	13,8
	.ascii	"TContext"
	.quad	INIT_$SYSTEM_$$_TCONTEXT
	.long	1136,63
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	32
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	40
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	48
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	52
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	56
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	58
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	60
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	62
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	64
	.quad	RTTI_$SYSTEM_$$_WORD$indirect
	.quad	66
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	68
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	72
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	80
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	88
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	96
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	104
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	112
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	120
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	128
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	136
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	144
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	152
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	160
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	168
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	176
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	184
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	192
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	200
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	208
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	216
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	224
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	232
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	240
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	248
	.quad	RTTI_$SYSTEM_$$_def000001A5$indirect
	.quad	256
	.quad	RTTI_$SYSTEM_$$_def000001A6$indirect
	.quad	288
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	416
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	432
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	448
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	464
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	480
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	496
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	512
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	528
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	544
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	560
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	576
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	592
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	608
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	624
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	640
	.quad	RTTI_$SYSTEM_$$_M128A$indirect
	.quad	656
	.quad	RTTI_$SYSTEM_$$_def000001A7$indirect
	.quad	672
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	1088
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	1096
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	1104
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	1112
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	1120
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	1128

.section .rodata.n_RTTI_$SYSTEM_$$_PCONTEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PCONTEXT
RTTI_$SYSTEM_$$_PCONTEXT:
	.byte	29,8
	.ascii	"PContext"
	.quad	RTTI_$SYSTEM_$$_TCONTEXT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE
RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE:
	.byte	23,17
	.ascii	"EXCEPTION_ROUTINE"
	.byte	0,0
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION$indirect
	.byte	4
	.short	1
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_RECORD$indirect
	.byte	15
	.ascii	"ExceptionRecord"
	.short	0
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.byte	16
	.ascii	"EstablisherFrame"
	.short	1
	.quad	RTTI_$SYSTEM_$$_TCONTEXT$indirect
	.byte	13
	.ascii	"ContextRecord"
	.short	0
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.byte	17
	.ascii	"DispatcherContext"

.section .rodata.n_INIT_$SYSTEM_$$_TDISPATCHERCONTEXT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TDISPATCHERCONTEXT
INIT_$SYSTEM_$$_TDISPATCHERCONTEXT:
	.byte	13,18
	.ascii	"TDispatcherContext"
	.quad	0
	.long	80
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT
RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT:
	.byte	13,18
	.ascii	"TDispatcherContext"
	.quad	INIT_$SYSTEM_$$_TDISPATCHERCONTEXT
	.long	80,11
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	16
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	24
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	32
	.quad	RTTI_$SYSTEM_$$_PCONTEXT$indirect
	.quad	40
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE$indirect
	.quad	48
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	56
	.quad	RTTI_$SYSTEM_$$_POINTER$indirect
	.quad	64
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	72
	.quad	RTTI_$SYSTEM_$$_LONGDWORD$indirect
	.quad	76

.section .rodata.n_RTTI_$SYSTEM_$$_PDISPATCHERCONTEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PDISPATCHERCONTEXT
RTTI_$SYSTEM_$$_PDISPATCHERCONTEXT:
	.byte	29,18
	.ascii	"PDispatcherContext"
	.quad	RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT$indirect

.section .rodata.n_INIT_$SYSTEM_$$_EXCEPTION,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_EXCEPTION
INIT_$SYSTEM_$$_EXCEPTION:
	.byte	15,9
	.ascii	"Exception"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_EXCEPTION,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EXCEPTION
RTTI_$SYSTEM_$$_EXCEPTION:
	.byte	15,9
	.ascii	"Exception"
	.quad	VMT_$SYSTEM_$$_EXCEPTION
	.quad	RTTI_$SYSTEM_$$_TOBJECT$indirect
	.short	0
	.byte	6
	.ascii	"system"
	.short	0

.section .rodata.n_INIT_$SYSTEM_$$_EDIVBYZERO,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_EDIVBYZERO
INIT_$SYSTEM_$$_EDIVBYZERO:
	.byte	15,10
	.ascii	"EDivByZero"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_EDIVBYZERO,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EDIVBYZERO
RTTI_$SYSTEM_$$_EDIVBYZERO:
	.byte	15,10
	.ascii	"EDivByZero"
	.quad	VMT_$SYSTEM_$$_EDIVBYZERO
	.quad	RTTI_$SYSTEM_$$_EXCEPTION$indirect
	.short	0
	.byte	6
	.ascii	"system"
	.short	0

.section .rodata.n_INIT_$SYSTEM_$$_EOUTOFMEMORY,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_EOUTOFMEMORY
INIT_$SYSTEM_$$_EOUTOFMEMORY:
	.byte	15,12
	.ascii	"EOutOfMemory"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_EOUTOFMEMORY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EOUTOFMEMORY
RTTI_$SYSTEM_$$_EOUTOFMEMORY:
	.byte	15,12
	.ascii	"EOutOfMemory"
	.quad	VMT_$SYSTEM_$$_EOUTOFMEMORY
	.quad	RTTI_$SYSTEM_$$_EXCEPTION$indirect
	.short	0
	.byte	6
	.ascii	"system"
	.short	0

.section .rodata.n_INIT_$SYSTEM_$$_EACCESSVIOLATION,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_EACCESSVIOLATION
INIT_$SYSTEM_$$_EACCESSVIOLATION:
	.byte	15,16
	.ascii	"EAccessViolation"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_EACCESSVIOLATION,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EACCESSVIOLATION
RTTI_$SYSTEM_$$_EACCESSVIOLATION:
	.byte	15,16
	.ascii	"EAccessViolation"
	.quad	VMT_$SYSTEM_$$_EACCESSVIOLATION
	.quad	RTTI_$SYSTEM_$$_EXCEPTION$indirect
	.short	0
	.byte	6
	.ascii	"system"
	.short	0

.section .rodata.n_RTTI_$SYSTEM_$$_TPROCEDURE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TPROCEDURE
RTTI_$SYSTEM_$$_TPROCEDURE:
	.byte	23,10
	.ascii	"TProcedure"
	.byte	0,0
	.quad	0
	.byte	0

.section .rodata.n_INIT_$SYSTEM_$$_TINITFINALREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TINITFINALREC
INIT_$SYSTEM_$$_TINITFINALREC:
	.byte	13,13
	.ascii	"TInitFinalRec"
	.quad	0
	.long	16
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TINITFINALREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINITFINALREC
RTTI_$SYSTEM_$$_TINITFINALREC:
	.byte	13,13
	.ascii	"TInitFinalRec"
	.quad	INIT_$SYSTEM_$$_TINITFINALREC
	.long	16,2
	.quad	RTTI_$SYSTEM_$$_TPROCEDURE$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_TPROCEDURE$indirect
	.quad	8

.section .rodata.n_INIT_$SYSTEM_$$_TINITFINALTABLE,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TINITFINALTABLE
INIT_$SYSTEM_$$_TINITFINALTABLE:
	.byte	13,15
	.ascii	"TInitFinalTable"
	.quad	0
	.long	16400
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_def000001C7,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000001C7
RTTI_$SYSTEM_$$_def000001C7:
	.byte	12,0
	.quad	16384,1024
	.quad	RTTI_$SYSTEM_$$_TINITFINALREC$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SMALLINT$indirect

.section .rodata.n_RTTI_$SYSTEM_$$_TINITFINALTABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINITFINALTABLE
RTTI_$SYSTEM_$$_TINITFINALTABLE:
	.byte	13,15
	.ascii	"TInitFinalTable"
	.quad	INIT_$SYSTEM_$$_TINITFINALTABLE
	.long	16400,3
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	0
	.quad	RTTI_$SYSTEM_$$_QWORD$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_def000001C7$indirect
	.quad	16

.section .rodata.n_RTTI_$SYSTEM_$$_PINITFINALTABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PINITFINALTABLE
RTTI_$SYSTEM_$$_PINITFINALTABLE:
	.byte	29,15
	.ascii	"PInitFinalTable"
	.quad	RTTI_$SYSTEM_$$_TINITFINALTABLE$indirect

.section .rodata.n_INIT_$SYSTEM_$$_TDOSCMD,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TDOSCMD
INIT_$SYSTEM_$$_TDOSCMD:
	.byte	15,7
	.ascii	"TDosCmd"
	.quad	0
	.long	8
	.quad	0,0
	.long	1
	.quad	RTTI_$SYSTEM_$$_ANSISTRING$indirect
	.quad	16

.section .rodata.n_RTTI_$SYSTEM_$$_TDOSCMD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TDOSCMD
RTTI_$SYSTEM_$$_TDOSCMD:
	.byte	15,7
	.ascii	"TDosCmd"
	.quad	VMT_$SYSTEM_$$_TDOSCMD
	.quad	RTTI_$SYSTEM_$$_TOBJECT$indirect
	.short	0
	.byte	6
	.ascii	"system"
	.short	0

.section .rodata.n_INIT_$SYSTEM_$$_WINDOWS_CLASS,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_WINDOWS_CLASS
INIT_$SYSTEM_$$_WINDOWS_CLASS:
	.byte	15,13
	.ascii	"Windows_Class"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_WINDOWS_CLASS,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WINDOWS_CLASS
RTTI_$SYSTEM_$$_WINDOWS_CLASS:
	.byte	15,13
	.ascii	"Windows_Class"
	.quad	VMT_$SYSTEM_$$_WINDOWS_CLASS
	.quad	RTTI_$SYSTEM_$$_TOBJECT$indirect
	.short	0
	.byte	6
	.ascii	"system"
	.short	0

.section .rodata.n_INIT_$SYSTEM_$$_TVGAIO,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TVGAIO
INIT_$SYSTEM_$$_TVGAIO:
	.byte	13,6
	.ascii	"TVgaIO"
	.quad	0
	.long	0
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TVGAIO,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TVGAIO
RTTI_$SYSTEM_$$_TVGAIO:
	.byte	13,6
	.ascii	"TVgaIO"
	.quad	INIT_$SYSTEM_$$_TVGAIO
	.long	0,0

.section .rodata.n_INIT_$SYSTEM_$$_TSYSTEMIO,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TSYSTEMIO
INIT_$SYSTEM_$$_TSYSTEMIO:
	.byte	13,9
	.ascii	"TSystemIO"
	.quad	0
	.long	0
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TSYSTEMIO,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TSYSTEMIO
RTTI_$SYSTEM_$$_TSYSTEMIO:
	.byte	13,9
	.ascii	"TSystemIO"
	.quad	INIT_$SYSTEM_$$_TSYSTEMIO
	.long	0,0

.section .rodata.n_INIT_$SYSTEM_$$_TCPU,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TCPU
INIT_$SYSTEM_$$_TCPU:
	.byte	15,4
	.ascii	"TCPU"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TCPU,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TCPU
RTTI_$SYSTEM_$$_TCPU:
	.byte	15,4
	.ascii	"TCPU"
	.quad	VMT_$SYSTEM_$$_TCPU
	.quad	RTTI_$SYSTEM_$$_TOBJECT$indirect
	.short	0
	.byte	6
	.ascii	"system"
	.short	0

.section .rodata.n_INIT_$SYSTEM_$$_TMEMORY,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TMEMORY
INIT_$SYSTEM_$$_TMEMORY:
	.byte	15,7
	.ascii	"TMemory"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TMEMORY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TMEMORY
RTTI_$SYSTEM_$$_TMEMORY:
	.byte	15,7
	.ascii	"TMemory"
	.quad	VMT_$SYSTEM_$$_TMEMORY
	.quad	RTTI_$SYSTEM_$$_TOBJECT$indirect
	.short	0
	.byte	6
	.ascii	"system"
	.short	0

.section .rodata.n_INIT_$SYSTEM_$$_TSYSTEM,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TSYSTEM
INIT_$SYSTEM_$$_TSYSTEM:
	.byte	15,7
	.ascii	"TSystem"
	.quad	0
	.long	8
	.quad	0,0
	.long	0

.section .rodata.n_RTTI_$SYSTEM_$$_TSYSTEM,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TSYSTEM
RTTI_$SYSTEM_$$_TSYSTEM:
	.byte	15,7
	.ascii	"TSystem"
	.quad	VMT_$SYSTEM_$$_TSYSTEM
	.quad	RTTI_$SYSTEM_$$_TOBJECT$indirect
	.short	0
	.byte	6
	.ascii	"system"
	.short	0
# End asmlist al_rtti
# Begin asmlist al_indirectglobals

.section .rodata.n_VMT_$SYSTEM_$$_TOBJECT,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_TOBJECT$indirect
VMT_$SYSTEM_$$_TOBJECT$indirect:
	.quad	VMT_$SYSTEM_$$_TOBJECT

.section .rodata.n_VMT_$SYSTEM_$$_TLIST,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_TLIST$indirect
VMT_$SYSTEM_$$_TLIST$indirect:
	.quad	VMT_$SYSTEM_$$_TLIST

.section .rodata.n_VMT_$SYSTEM_$$_EXCEPTION,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_EXCEPTION$indirect
VMT_$SYSTEM_$$_EXCEPTION$indirect:
	.quad	VMT_$SYSTEM_$$_EXCEPTION

.section .rodata.n_VMT_$SYSTEM_$$_EDIVBYZERO,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_EDIVBYZERO$indirect
VMT_$SYSTEM_$$_EDIVBYZERO$indirect:
	.quad	VMT_$SYSTEM_$$_EDIVBYZERO

.section .rodata.n_VMT_$SYSTEM_$$_EOUTOFMEMORY,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_EOUTOFMEMORY$indirect
VMT_$SYSTEM_$$_EOUTOFMEMORY$indirect:
	.quad	VMT_$SYSTEM_$$_EOUTOFMEMORY

.section .rodata.n_VMT_$SYSTEM_$$_EACCESSVIOLATION,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_EACCESSVIOLATION$indirect
VMT_$SYSTEM_$$_EACCESSVIOLATION$indirect:
	.quad	VMT_$SYSTEM_$$_EACCESSVIOLATION

.section .rodata.n_VMT_$SYSTEM_$$_TDOSCMD,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_TDOSCMD$indirect
VMT_$SYSTEM_$$_TDOSCMD$indirect:
	.quad	VMT_$SYSTEM_$$_TDOSCMD

.section .rodata.n_VMT_$SYSTEM_$$_WINDOWS_CLASS,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_WINDOWS_CLASS$indirect
VMT_$SYSTEM_$$_WINDOWS_CLASS$indirect:
	.quad	VMT_$SYSTEM_$$_WINDOWS_CLASS

.section .rodata.n_VMT_$SYSTEM_$$_TCPU,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_TCPU$indirect
VMT_$SYSTEM_$$_TCPU$indirect:
	.quad	VMT_$SYSTEM_$$_TCPU

.section .rodata.n_VMT_$SYSTEM_$$_TMEMORY,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_TMEMORY$indirect
VMT_$SYSTEM_$$_TMEMORY$indirect:
	.quad	VMT_$SYSTEM_$$_TMEMORY

.section .rodata.n_VMT_$SYSTEM_$$_TSYSTEM,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_TSYSTEM$indirect
VMT_$SYSTEM_$$_TSYSTEM$indirect:
	.quad	VMT_$SYSTEM_$$_TSYSTEM

.section .rodata.n_RTTI_$SYSTEM_$$_formal,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_formal$indirect
RTTI_$SYSTEM_$$_formal$indirect:
	.quad	RTTI_$SYSTEM_$$_formal

.section .rodata.n_RTTI_$SYSTEM_$$_typedformal,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_typedformal$indirect
RTTI_$SYSTEM_$$_typedformal$indirect:
	.quad	RTTI_$SYSTEM_$$_typedformal

.section .rodata.n_RTTI_$SYSTEM_$$_void,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_void$indirect
RTTI_$SYSTEM_$$_void$indirect:
	.quad	RTTI_$SYSTEM_$$_void

.section .rodata.n_RTTI_$SYSTEM_$$_POINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_POINTER$indirect
RTTI_$SYSTEM_$$_POINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_POINTER

.section .rodata.n_RTTI_$SYSTEM_$$_BYTE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BYTE$indirect
RTTI_$SYSTEM_$$_BYTE$indirect:
	.quad	RTTI_$SYSTEM_$$_BYTE

.section .rodata.n_RTTI_$SYSTEM_$$_SHORTINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SHORTINT$indirect
RTTI_$SYSTEM_$$_SHORTINT$indirect:
	.quad	RTTI_$SYSTEM_$$_SHORTINT

.section .rodata.n_RTTI_$SYSTEM_$$_WORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WORD$indirect
RTTI_$SYSTEM_$$_WORD$indirect:
	.quad	RTTI_$SYSTEM_$$_WORD

.section .rodata.n_RTTI_$SYSTEM_$$_SMALLINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SMALLINT$indirect
RTTI_$SYSTEM_$$_SMALLINT$indirect:
	.quad	RTTI_$SYSTEM_$$_SMALLINT

.section .rodata.n_RTTI_$SYSTEM_$$_LONGWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LONGWORD$indirect
RTTI_$SYSTEM_$$_LONGWORD$indirect:
	.quad	RTTI_$SYSTEM_$$_LONGWORD

.section .rodata.n_RTTI_$SYSTEM_$$_LONGINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LONGINT$indirect
RTTI_$SYSTEM_$$_LONGINT$indirect:
	.quad	RTTI_$SYSTEM_$$_LONGINT

.section .rodata.n_RTTI_$SYSTEM_$$_QWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_QWORD$indirect
RTTI_$SYSTEM_$$_QWORD$indirect:
	.quad	RTTI_$SYSTEM_$$_QWORD

.section .rodata.n_RTTI_$SYSTEM_$$_INT64,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_INT64$indirect
RTTI_$SYSTEM_$$_INT64$indirect:
	.quad	RTTI_$SYSTEM_$$_INT64

.section .rodata.n_RTTI_$SYSTEM_$$_uint128,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_uint128$indirect
RTTI_$SYSTEM_$$_uint128$indirect:
	.quad	RTTI_$SYSTEM_$$_uint128

.section .rodata.n_RTTI_$SYSTEM_$$_int128,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_int128$indirect
RTTI_$SYSTEM_$$_int128$indirect:
	.quad	RTTI_$SYSTEM_$$_int128

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN$indirect
RTTI_$SYSTEM_$$_BOOLEAN$indirect:
	.quad	RTTI_$SYSTEM_$$_BOOLEAN

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN8,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN8$indirect
RTTI_$SYSTEM_$$_BOOLEAN8$indirect:
	.quad	RTTI_$SYSTEM_$$_BOOLEAN8

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN16,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN16$indirect
RTTI_$SYSTEM_$$_BOOLEAN16$indirect:
	.quad	RTTI_$SYSTEM_$$_BOOLEAN16

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN32,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN32$indirect
RTTI_$SYSTEM_$$_BOOLEAN32$indirect:
	.quad	RTTI_$SYSTEM_$$_BOOLEAN32

.section .rodata.n_RTTI_$SYSTEM_$$_BOOLEAN64,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BOOLEAN64$indirect
RTTI_$SYSTEM_$$_BOOLEAN64$indirect:
	.quad	RTTI_$SYSTEM_$$_BOOLEAN64

.section .rodata.n_RTTI_$SYSTEM_$$_BYTEBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_BYTEBOOL$indirect
RTTI_$SYSTEM_$$_BYTEBOOL$indirect:
	.quad	RTTI_$SYSTEM_$$_BYTEBOOL

.section .rodata.n_RTTI_$SYSTEM_$$_WORDBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WORDBOOL$indirect
RTTI_$SYSTEM_$$_WORDBOOL$indirect:
	.quad	RTTI_$SYSTEM_$$_WORDBOOL

.section .rodata.n_RTTI_$SYSTEM_$$_LONGBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LONGBOOL$indirect
RTTI_$SYSTEM_$$_LONGBOOL$indirect:
	.quad	RTTI_$SYSTEM_$$_LONGBOOL

.section .rodata.n_RTTI_$SYSTEM_$$_QWORDBOOL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_QWORDBOOL$indirect
RTTI_$SYSTEM_$$_QWORDBOOL$indirect:
	.quad	RTTI_$SYSTEM_$$_QWORDBOOL

.section .rodata.n_RTTI_$SYSTEM_$$_CHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_CHAR$indirect
RTTI_$SYSTEM_$$_CHAR$indirect:
	.quad	RTTI_$SYSTEM_$$_CHAR

.section .rodata.n_RTTI_$SYSTEM_$$_WIDECHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WIDECHAR$indirect
RTTI_$SYSTEM_$$_WIDECHAR$indirect:
	.quad	RTTI_$SYSTEM_$$_WIDECHAR

.section .rodata.n_RTTI_$SYSTEM_$$_SHORTSTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SHORTSTRING$indirect
RTTI_$SYSTEM_$$_SHORTSTRING$indirect:
	.quad	RTTI_$SYSTEM_$$_SHORTSTRING

.section .rodata.n_RTTI_$SYSTEM_$$_longstring,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_longstring$indirect
RTTI_$SYSTEM_$$_longstring$indirect:
	.quad	RTTI_$SYSTEM_$$_longstring

.section .rodata.n_RTTI_$SYSTEM_$$_ANSISTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_ANSISTRING$indirect
RTTI_$SYSTEM_$$_ANSISTRING$indirect:
	.quad	RTTI_$SYSTEM_$$_ANSISTRING

.section .rodata.n_RTTI_$SYSTEM_$$_WIDESTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WIDESTRING$indirect
RTTI_$SYSTEM_$$_WIDESTRING$indirect:
	.quad	RTTI_$SYSTEM_$$_WIDESTRING

.section .rodata.n_RTTI_$SYSTEM_$$_UNICODESTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_UNICODESTRING$indirect
RTTI_$SYSTEM_$$_UNICODESTRING$indirect:
	.quad	RTTI_$SYSTEM_$$_UNICODESTRING

.section .rodata.n_RTTI_$SYSTEM_$$_OPENSTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_OPENSTRING$indirect
RTTI_$SYSTEM_$$_OPENSTRING$indirect:
	.quad	RTTI_$SYSTEM_$$_OPENSTRING

.section .rodata.n_RTTI_$SYSTEM_$$_SINGLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SINGLE$indirect
RTTI_$SYSTEM_$$_SINGLE$indirect:
	.quad	RTTI_$SYSTEM_$$_SINGLE

.section .rodata.n_RTTI_$SYSTEM_$$_DOUBLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_DOUBLE$indirect
RTTI_$SYSTEM_$$_DOUBLE$indirect:
	.quad	RTTI_$SYSTEM_$$_DOUBLE

.section .rodata.n_RTTI_$SYSTEM_$$_s80real,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_s80real$indirect
RTTI_$SYSTEM_$$_s80real$indirect:
	.quad	RTTI_$SYSTEM_$$_s80real

.section .rodata.n_RTTI_$SYSTEM_$$_sc80real,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_sc80real$indirect
RTTI_$SYSTEM_$$_sc80real$indirect:
	.quad	RTTI_$SYSTEM_$$_sc80real

.section .rodata.n_RTTI_$SYSTEM_$$_CURRENCY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_CURRENCY$indirect
RTTI_$SYSTEM_$$_CURRENCY$indirect:
	.quad	RTTI_$SYSTEM_$$_CURRENCY

.section .rodata.n_RTTI_$SYSTEM_$$_char_pointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_char_pointer$indirect
RTTI_$SYSTEM_$$_char_pointer$indirect:
	.quad	RTTI_$SYSTEM_$$_char_pointer

.section .rodata.n_RTTI_$SYSTEM_$$_widechar_pointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_widechar_pointer$indirect
RTTI_$SYSTEM_$$_widechar_pointer$indirect:
	.quad	RTTI_$SYSTEM_$$_widechar_pointer

.section .rodata.n_RTTI_$SYSTEM_$$_parentfp_void_pointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_parentfp_void_pointer$indirect
RTTI_$SYSTEM_$$_parentfp_void_pointer$indirect:
	.quad	RTTI_$SYSTEM_$$_parentfp_void_pointer

.section .rodata.n_RTTI_$SYSTEM_$$_NEARPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARPOINTER$indirect
RTTI_$SYSTEM_$$_NEARPOINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_NEARPOINTER

.section .rodata.n_RTTI_$SYSTEM_$$_NEARCSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARCSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARCSPOINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_NEARCSPOINTER

.section .rodata.n_RTTI_$SYSTEM_$$_NEARDSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARDSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARDSPOINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_NEARDSPOINTER

.section .rodata.n_RTTI_$SYSTEM_$$_NEARSSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARSSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARSSPOINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_NEARSSPOINTER

.section .rodata.n_RTTI_$SYSTEM_$$_NEARESPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARESPOINTER$indirect
RTTI_$SYSTEM_$$_NEARESPOINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_NEARESPOINTER

.section .rodata.n_RTTI_$SYSTEM_$$_NEARFSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARFSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARFSPOINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_NEARFSPOINTER

.section .rodata.n_RTTI_$SYSTEM_$$_NEARGSPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_NEARGSPOINTER$indirect
RTTI_$SYSTEM_$$_NEARGSPOINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_NEARGSPOINTER

.section .rodata.n_RTTI_$SYSTEM_$$_openchararray,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_openchararray$indirect
RTTI_$SYSTEM_$$_openchararray$indirect:
	.quad	RTTI_$SYSTEM_$$_openchararray

.section .rodata.n_RTTI_$SYSTEM_$$_file,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_file$indirect
RTTI_$SYSTEM_$$_file$indirect:
	.quad	RTTI_$SYSTEM_$$_file

.section .rodata.n_RTTI_$SYSTEM_$$_VARIANT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_VARIANT$indirect
RTTI_$SYSTEM_$$_VARIANT$indirect:
	.quad	RTTI_$SYSTEM_$$_VARIANT

.section .rodata.n_RTTI_$SYSTEM_$$_OLEVARIANT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_OLEVARIANT$indirect
RTTI_$SYSTEM_$$_OLEVARIANT$indirect:
	.quad	RTTI_$SYSTEM_$$_OLEVARIANT

.section .rodata.n_RTTI_$SYSTEM_$$_TEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXT$indirect
RTTI_$SYSTEM_$$_TEXT$indirect:
	.quad	RTTI_$SYSTEM_$$_TEXT

.section .rodata.n_RTTI_$SYSTEM_$$_TYPEDFILE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TYPEDFILE$indirect
RTTI_$SYSTEM_$$_TYPEDFILE$indirect:
	.quad	RTTI_$SYSTEM_$$_TYPEDFILE

.section .rodata.n_INIT_$SYSTEM_$$___vtbl_ptr_type,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$___vtbl_ptr_type$indirect
INIT_$SYSTEM_$$___vtbl_ptr_type$indirect:
	.quad	INIT_$SYSTEM_$$___vtbl_ptr_type

.section .rodata.n_RTTI_$SYSTEM_$$_pvmt,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_pvmt$indirect
RTTI_$SYSTEM_$$_pvmt$indirect:
	.quad	RTTI_$SYSTEM_$$_pvmt

.section .rodata.n_RTTI_$SYSTEM_$$_def00000037,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000037$indirect
RTTI_$SYSTEM_$$_def00000037$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000037

.section .rodata.n_RTTI_$SYSTEM_$$_def00000038,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000038$indirect
RTTI_$SYSTEM_$$_def00000038$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000038

.section .rodata.n_RTTI_$SYSTEM_$$___vtbl_ptr_type,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$___vtbl_ptr_type$indirect
RTTI_$SYSTEM_$$___vtbl_ptr_type$indirect:
	.quad	RTTI_$SYSTEM_$$___vtbl_ptr_type

.section .rodata.n_RTTI_$SYSTEM_$$_vtblarray,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_vtblarray$indirect
RTTI_$SYSTEM_$$_vtblarray$indirect:
	.quad	RTTI_$SYSTEM_$$_vtblarray

.section .rodata.n_INIT_$SYSTEM_$$_methodpointer,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_methodpointer$indirect
INIT_$SYSTEM_$$_methodpointer$indirect:
	.quad	INIT_$SYSTEM_$$_methodpointer

.section .rodata.n_RTTI_$SYSTEM_$$_methodpointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_methodpointer$indirect
RTTI_$SYSTEM_$$_methodpointer$indirect:
	.quad	RTTI_$SYSTEM_$$_methodpointer

.section .rodata.n_INIT_$SYSTEM_$$_nestedprocpointer,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_nestedprocpointer$indirect
INIT_$SYSTEM_$$_nestedprocpointer$indirect:
	.quad	INIT_$SYSTEM_$$_nestedprocpointer

.section .rodata.n_RTTI_$SYSTEM_$$_nestedprocpointer,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_nestedprocpointer$indirect
RTTI_$SYSTEM_$$_nestedprocpointer$indirect:
	.quad	RTTI_$SYSTEM_$$_nestedprocpointer

.section .rodata.n_RTTI_$SYSTEM_$$_SHORTBYTE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SHORTBYTE$indirect
RTTI_$SYSTEM_$$_SHORTBYTE$indirect:
	.quad	RTTI_$SYSTEM_$$_SHORTBYTE

.section .rodata.n_RTTI_$SYSTEM_$$_SHORTWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SHORTWORD$indirect
RTTI_$SYSTEM_$$_SHORTWORD$indirect:
	.quad	RTTI_$SYSTEM_$$_SHORTWORD

.section .rodata.n_RTTI_$SYSTEM_$$_SHORTDWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SHORTDWORD$indirect
RTTI_$SYSTEM_$$_SHORTDWORD$indirect:
	.quad	RTTI_$SYSTEM_$$_SHORTDWORD

.section .rodata.n_RTTI_$SYSTEM_$$_SHORTQWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SHORTQWORD$indirect
RTTI_$SYSTEM_$$_SHORTQWORD$indirect:
	.quad	RTTI_$SYSTEM_$$_SHORTQWORD

.section .rodata.n_RTTI_$SYSTEM_$$_LONGBYTE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LONGBYTE$indirect
RTTI_$SYSTEM_$$_LONGBYTE$indirect:
	.quad	RTTI_$SYSTEM_$$_LONGBYTE

.section .rodata.n_RTTI_$SYSTEM_$$_LONGDWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LONGDWORD$indirect
RTTI_$SYSTEM_$$_LONGDWORD$indirect:
	.quad	RTTI_$SYSTEM_$$_LONGDWORD

.section .rodata.n_RTTI_$SYSTEM_$$_LONGQWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LONGQWORD$indirect
RTTI_$SYSTEM_$$_LONGQWORD$indirect:
	.quad	RTTI_$SYSTEM_$$_LONGQWORD

.section .rodata.n_RTTI_$SYSTEM_$$_PLONGWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PLONGWORD$indirect
RTTI_$SYSTEM_$$_PLONGWORD$indirect:
	.quad	RTTI_$SYSTEM_$$_PLONGWORD

.section .rodata.n_RTTI_$SYSTEM_$$_PBYTE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PBYTE$indirect
RTTI_$SYSTEM_$$_PBYTE$indirect:
	.quad	RTTI_$SYSTEM_$$_PBYTE

.section .rodata.n_RTTI_$SYSTEM_$$_PPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PPOINTER$indirect
RTTI_$SYSTEM_$$_PPOINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_PPOINTER

.section .rodata.n_RTTI_$SYSTEM_$$_PCODEPOINTER,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PCODEPOINTER$indirect
RTTI_$SYSTEM_$$_PCODEPOINTER$indirect:
	.quad	RTTI_$SYSTEM_$$_PCODEPOINTER

.section .rodata.n_RTTI_$SYSTEM_$$_PCHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PCHAR$indirect
RTTI_$SYSTEM_$$_PCHAR$indirect:
	.quad	RTTI_$SYSTEM_$$_PCHAR

.section .rodata.n_RTTI_$SYSTEM_$$_PSHORTSTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSHORTSTRING$indirect
RTTI_$SYSTEM_$$_PSHORTSTRING$indirect:
	.quad	RTTI_$SYSTEM_$$_PSHORTSTRING

.section .rodata.n_RTTI_$SYSTEM_$$_PANSICHAR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PANSICHAR$indirect
RTTI_$SYSTEM_$$_PANSICHAR$indirect:
	.quad	RTTI_$SYSTEM_$$_PANSICHAR

.section .rodata.n_RTTI_$SYSTEM_$$_PANSISTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PANSISTRING$indirect
RTTI_$SYSTEM_$$_PANSISTRING$indirect:
	.quad	RTTI_$SYSTEM_$$_PANSISTRING

.section .rodata.n_RTTI_$SYSTEM_$$_RAWBYTESTRING,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_RAWBYTESTRING$indirect
RTTI_$SYSTEM_$$_RAWBYTESTRING$indirect:
	.quad	RTTI_$SYSTEM_$$_RAWBYTESTRING

.section .rodata.n_RTTI_$SYSTEM_$$_ULONG_PTR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_ULONG_PTR$indirect
RTTI_$SYSTEM_$$_ULONG_PTR$indirect:
	.quad	RTTI_$SYSTEM_$$_ULONG_PTR

.section .rodata.n_RTTI_$SYSTEM_$$_PLONG,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PLONG$indirect
RTTI_$SYSTEM_$$_PLONG$indirect:
	.quad	RTTI_$SYSTEM_$$_PLONG

.section .rodata.n_INIT_$SYSTEM_$$_TMSGSTRTABLE,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TMSGSTRTABLE$indirect
INIT_$SYSTEM_$$_TMSGSTRTABLE$indirect:
	.quad	INIT_$SYSTEM_$$_TMSGSTRTABLE

.section .rodata.n_RTTI_$SYSTEM_$$_TMSGSTRTABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TMSGSTRTABLE$indirect
RTTI_$SYSTEM_$$_TMSGSTRTABLE$indirect:
	.quad	RTTI_$SYSTEM_$$_TMSGSTRTABLE

.section .rodata.n_INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect
INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect:
	.quad	INIT_$SYSTEM_$$_TSTRINGMESSAGETABLE

.section .rodata.n_RTTI_$SYSTEM_$$_def00000052,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000052$indirect
RTTI_$SYSTEM_$$_def00000052$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000052

.section .rodata.n_RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect
RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE$indirect:
	.quad	RTTI_$SYSTEM_$$_TSTRINGMESSAGETABLE

.section .rodata.n_RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE$indirect
RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE$indirect:
	.quad	RTTI_$SYSTEM_$$_PSTRINGMESSAGETABLE

.section .rodata.n_INIT_$SYSTEM_$$_TGUID,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TGUID$indirect
INIT_$SYSTEM_$$_TGUID$indirect:
	.quad	INIT_$SYSTEM_$$_TGUID

.section .rodata.n_RTTI_$SYSTEM_$$_def00000057,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000057$indirect
RTTI_$SYSTEM_$$_def00000057$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000057

.section .rodata.n_RTTI_$SYSTEM_$$_def00000058,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000058$indirect
RTTI_$SYSTEM_$$_def00000058$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000058

.section .rodata.n_RTTI_$SYSTEM_$$_def00000059,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000059$indirect
RTTI_$SYSTEM_$$_def00000059$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000059

.section .rodata.n_RTTI_$SYSTEM_$$_TGUID,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TGUID$indirect
RTTI_$SYSTEM_$$_TGUID$indirect:
	.quad	RTTI_$SYSTEM_$$_TGUID

.section .rodata.n_RTTI_$SYSTEM_$$_PGUID,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PGUID$indirect
RTTI_$SYSTEM_$$_PGUID$indirect:
	.quad	RTTI_$SYSTEM_$$_PGUID

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE$indirect
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE$indirect:
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o$indirect
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o$indirect:
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_s2o

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s$indirect
RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s$indirect:
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRYTYPE_o2s

.section .rodata.n_INIT_$SYSTEM_$$_TINTERFACEENTRY,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TINTERFACEENTRY$indirect
INIT_$SYSTEM_$$_TINTERFACEENTRY$indirect:
	.quad	INIT_$SYSTEM_$$_TINTERFACEENTRY

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACEENTRY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACEENTRY$indirect
RTTI_$SYSTEM_$$_TINTERFACEENTRY$indirect:
	.quad	RTTI_$SYSTEM_$$_TINTERFACEENTRY

.section .rodata.n_INIT_$SYSTEM_$$_TINTERFACETABLE,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TINTERFACETABLE$indirect
INIT_$SYSTEM_$$_TINTERFACETABLE$indirect:
	.quad	INIT_$SYSTEM_$$_TINTERFACETABLE

.section .rodata.n_RTTI_$SYSTEM_$$_def0000005F,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def0000005F$indirect
RTTI_$SYSTEM_$$_def0000005F$indirect:
	.quad	RTTI_$SYSTEM_$$_def0000005F

.section .rodata.n_RTTI_$SYSTEM_$$_TINTERFACETABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINTERFACETABLE$indirect
RTTI_$SYSTEM_$$_TINTERFACETABLE$indirect:
	.quad	RTTI_$SYSTEM_$$_TINTERFACETABLE

.section .rodata.n_RTTI_$SYSTEM_$$_PINTERFACETABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PINTERFACETABLE$indirect
RTTI_$SYSTEM_$$_PINTERFACETABLE$indirect:
	.quad	RTTI_$SYSTEM_$$_PINTERFACETABLE

.section .rodata.n_INIT_$SYSTEM_$$_TVMT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TVMT$indirect
INIT_$SYSTEM_$$_TVMT$indirect:
	.quad	INIT_$SYSTEM_$$_TVMT

.section .rodata.n_RTTI_$SYSTEM_$$_TVMT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TVMT$indirect
RTTI_$SYSTEM_$$_TVMT$indirect:
	.quad	RTTI_$SYSTEM_$$_TVMT

.section .rodata.n_RTTI_$SYSTEM_$$_PVMT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PVMT$indirect
RTTI_$SYSTEM_$$_PVMT$indirect:
	.quad	RTTI_$SYSTEM_$$_PVMT

.section .rodata.n_RTTI_$SYSTEM_$$_PPVMT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PPVMT$indirect
RTTI_$SYSTEM_$$_PPVMT$indirect:
	.quad	RTTI_$SYSTEM_$$_PPVMT

.section .rodata.n_INIT_$SYSTEM_$$_JMP_BUF,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_JMP_BUF$indirect
INIT_$SYSTEM_$$_JMP_BUF$indirect:
	.quad	INIT_$SYSTEM_$$_JMP_BUF

.section .rodata.n_RTTI_$SYSTEM_$$_JMP_BUF,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_JMP_BUF$indirect
RTTI_$SYSTEM_$$_JMP_BUF$indirect:
	.quad	RTTI_$SYSTEM_$$_JMP_BUF

.section .rodata.n_RTTI_$SYSTEM_$$_PJMP_BUF,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PJMP_BUF$indirect
RTTI_$SYSTEM_$$_PJMP_BUF$indirect:
	.quad	RTTI_$SYSTEM_$$_PJMP_BUF

.section .rodata.n_INIT_$SYSTEM_$$_TEXCEPTADDR,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TEXCEPTADDR$indirect
INIT_$SYSTEM_$$_TEXCEPTADDR$indirect:
	.quad	INIT_$SYSTEM_$$_TEXCEPTADDR

.section .rodata.n_RTTI_$SYSTEM_$$_TEXCEPTADDR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXCEPTADDR$indirect
RTTI_$SYSTEM_$$_TEXCEPTADDR$indirect:
	.quad	RTTI_$SYSTEM_$$_TEXCEPTADDR

.section .rodata.n_RTTI_$SYSTEM_$$_PEXCEPTADDR,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PEXCEPTADDR$indirect
RTTI_$SYSTEM_$$_PEXCEPTADDR$indirect:
	.quad	RTTI_$SYSTEM_$$_PEXCEPTADDR

.section .rodata.n_INIT_$SYSTEM_$$_FILEREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_FILEREC$indirect
INIT_$SYSTEM_$$_FILEREC$indirect:
	.quad	INIT_$SYSTEM_$$_FILEREC

.section .rodata.n_RTTI_$SYSTEM_$$_FILEREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_FILEREC$indirect
RTTI_$SYSTEM_$$_FILEREC$indirect:
	.quad	RTTI_$SYSTEM_$$_FILEREC

.section .rodata.n_RTTI_$SYSTEM_$$_TTYPEKIND,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TTYPEKIND$indirect
RTTI_$SYSTEM_$$_TTYPEKIND$indirect:
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND

.section .rodata.n_RTTI_$SYSTEM_$$_TTYPEKIND_s2o,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TTYPEKIND_s2o$indirect
RTTI_$SYSTEM_$$_TTYPEKIND_s2o$indirect:
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND_s2o

.section .rodata.n_RTTI_$SYSTEM_$$_TTYPEKIND_o2s,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TTYPEKIND_o2s$indirect
RTTI_$SYSTEM_$$_TTYPEKIND_o2s$indirect:
	.quad	RTTI_$SYSTEM_$$_TTYPEKIND_o2s

.section .rodata.n_RTTI_$SYSTEM_$$_PTEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PTEXT$indirect
RTTI_$SYSTEM_$$_PTEXT$indirect:
	.quad	RTTI_$SYSTEM_$$_PTEXT

.section .rodata.n_INIT_$SYSTEM_$$_TEXTREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TEXTREC$indirect
INIT_$SYSTEM_$$_TEXTREC$indirect:
	.quad	INIT_$SYSTEM_$$_TEXTREC

.section .rodata.n_RTTI_$SYSTEM_$$_TEXTREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXTREC$indirect
RTTI_$SYSTEM_$$_TEXTREC$indirect:
	.quad	RTTI_$SYSTEM_$$_TEXTREC

.section .rodata.n_INIT_$SYSTEM_$$_TANSIREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TANSIREC$indirect
INIT_$SYSTEM_$$_TANSIREC$indirect:
	.quad	INIT_$SYSTEM_$$_TANSIREC

.section .rodata.n_RTTI_$SYSTEM_$$_TANSIREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TANSIREC$indirect
RTTI_$SYSTEM_$$_TANSIREC$indirect:
	.quad	RTTI_$SYSTEM_$$_TANSIREC

.section .rodata.n_RTTI_$SYSTEM_$$_PANSIREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PANSIREC$indirect
RTTI_$SYSTEM_$$_PANSIREC$indirect:
	.quad	RTTI_$SYSTEM_$$_PANSIREC

.section .rodata.n_RTTI_$SYSTEM_$$_PHANDLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PHANDLE$indirect
RTTI_$SYSTEM_$$_PHANDLE$indirect:
	.quad	RTTI_$SYSTEM_$$_PHANDLE

.section .rodata.n_INIT_$SYSTEM_$$_TOBJECT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TOBJECT$indirect
INIT_$SYSTEM_$$_TOBJECT$indirect:
	.quad	INIT_$SYSTEM_$$_TOBJECT

.section .rodata.n_RTTI_$SYSTEM_$$_TOBJECT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TOBJECT$indirect
RTTI_$SYSTEM_$$_TOBJECT$indirect:
	.quad	RTTI_$SYSTEM_$$_TOBJECT

.section .rodata.n_RTTI_$SYSTEM_$$_TCLASS,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TCLASS$indirect
RTTI_$SYSTEM_$$_TCLASS$indirect:
	.quad	RTTI_$SYSTEM_$$_TCLASS

.section .rodata.n_RTTI_$SYSTEM_$$_def000000AF,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000000AF$indirect
RTTI_$SYSTEM_$$_def000000AF$indirect:
	.quad	RTTI_$SYSTEM_$$_def000000AF

.section .rodata.n_INIT_$SYSTEM_$$_TENTRYINFORMATION,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TENTRYINFORMATION$indirect
INIT_$SYSTEM_$$_TENTRYINFORMATION$indirect:
	.quad	INIT_$SYSTEM_$$_TENTRYINFORMATION

.section .rodata.n_RTTI_$SYSTEM_$$_def000000CA,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000000CA$indirect
RTTI_$SYSTEM_$$_def000000CA$indirect:
	.quad	RTTI_$SYSTEM_$$_def000000CA

.section .rodata.n_RTTI_$SYSTEM_$$_TENTRYINFORMATION,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TENTRYINFORMATION$indirect
RTTI_$SYSTEM_$$_TENTRYINFORMATION$indirect:
	.quad	RTTI_$SYSTEM_$$_TENTRYINFORMATION

.section .rodata.n_RTTI_$SYSTEM_$$_LPVOID,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LPVOID$indirect
RTTI_$SYSTEM_$$_LPVOID$indirect:
	.quad	RTTI_$SYSTEM_$$_LPVOID

.section .rodata.n_RTTI_$SYSTEM_$$_LPCVOID,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LPCVOID$indirect
RTTI_$SYSTEM_$$_LPCVOID$indirect:
	.quad	RTTI_$SYSTEM_$$_LPCVOID

.section .rodata.n_RTTI_$SYSTEM_$$_PDWORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PDWORD$indirect
RTTI_$SYSTEM_$$_PDWORD$indirect:
	.quad	RTTI_$SYSTEM_$$_PDWORD

.section .rodata.n_INIT_$SYSTEM_$$_POINT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_POINT$indirect
INIT_$SYSTEM_$$_POINT$indirect:
	.quad	INIT_$SYSTEM_$$_POINT

.section .rodata.n_RTTI_$SYSTEM_$$_POINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_POINT$indirect
RTTI_$SYSTEM_$$_POINT$indirect:
	.quad	RTTI_$SYSTEM_$$_POINT

.section .rodata.n_RTTI_$SYSTEM_$$_PPOINT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PPOINT$indirect
RTTI_$SYSTEM_$$_PPOINT$indirect:
	.quad	RTTI_$SYSTEM_$$_PPOINT

.section .rodata.n_INIT_$SYSTEM_$$_TMESSAGE,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TMESSAGE$indirect
INIT_$SYSTEM_$$_TMESSAGE$indirect:
	.quad	INIT_$SYSTEM_$$_TMESSAGE

.section .rodata.n_RTTI_$SYSTEM_$$_TMESSAGE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TMESSAGE$indirect
RTTI_$SYSTEM_$$_TMESSAGE$indirect:
	.quad	RTTI_$SYSTEM_$$_TMESSAGE

.section .rodata.n_RTTI_$SYSTEM_$$_PMESSAGE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PMESSAGE$indirect
RTTI_$SYSTEM_$$_PMESSAGE$indirect:
	.quad	RTTI_$SYSTEM_$$_PMESSAGE

.section .rodata.n_RTTI_$SYSTEM_$$_STD_HANDLES,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_STD_HANDLES$indirect
RTTI_$SYSTEM_$$_STD_HANDLES$indirect:
	.quad	RTTI_$SYSTEM_$$_STD_HANDLES

.section .rodata.n_RTTI_$SYSTEM_$$_STD_HANDLES_s2o,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_STD_HANDLES_s2o$indirect
RTTI_$SYSTEM_$$_STD_HANDLES_s2o$indirect:
	.quad	RTTI_$SYSTEM_$$_STD_HANDLES_s2o

.section .rodata.n_RTTI_$SYSTEM_$$_STD_HANDLES_o2s,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_STD_HANDLES_o2s$indirect
RTTI_$SYSTEM_$$_STD_HANDLES_o2s$indirect:
	.quad	RTTI_$SYSTEM_$$_STD_HANDLES_o2s

.section .rodata.n_INIT_$SYSTEM_$$_COORD,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_COORD$indirect
INIT_$SYSTEM_$$_COORD$indirect:
	.quad	INIT_$SYSTEM_$$_COORD

.section .rodata.n_RTTI_$SYSTEM_$$_COORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_COORD$indirect
RTTI_$SYSTEM_$$_COORD$indirect:
	.quad	RTTI_$SYSTEM_$$_COORD

.section .rodata.n_RTTI_$SYSTEM_$$_PCORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PCORD$indirect
RTTI_$SYSTEM_$$_PCORD$indirect:
	.quad	RTTI_$SYSTEM_$$_PCORD

.section .rodata.n_INIT_$SYSTEM_$$_SMALL_RECT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_SMALL_RECT$indirect
INIT_$SYSTEM_$$_SMALL_RECT$indirect:
	.quad	INIT_$SYSTEM_$$_SMALL_RECT

.section .rodata.n_RTTI_$SYSTEM_$$_SMALL_RECT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SMALL_RECT$indirect
RTTI_$SYSTEM_$$_SMALL_RECT$indirect:
	.quad	RTTI_$SYSTEM_$$_SMALL_RECT

.section .rodata.n_RTTI_$SYSTEM_$$_PSMALL_RECT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSMALL_RECT$indirect
RTTI_$SYSTEM_$$_PSMALL_RECT$indirect:
	.quad	RTTI_$SYSTEM_$$_PSMALL_RECT

.section .rodata.n_INIT_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO$indirect
INIT_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO$indirect:
	.quad	INIT_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO

.section .rodata.n_RTTI_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO$indirect
RTTI_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO$indirect:
	.quad	RTTI_$SYSTEM_$$_CONSOLE_SCREEN_BUFFER_INFO

.section .rodata.n_RTTI_$SYSTEM_$$_PCONSOLE_SCREEN_BUFFER_INFO,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PCONSOLE_SCREEN_BUFFER_INFO$indirect
RTTI_$SYSTEM_$$_PCONSOLE_SCREEN_BUFFER_INFO$indirect:
	.quad	RTTI_$SYSTEM_$$_PCONSOLE_SCREEN_BUFFER_INFO

.section .rodata.n_INIT_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL$indirect
INIT_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL$indirect:
	.quad	INIT_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL

.section .rodata.n_RTTI_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL$indirect
RTTI_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL$indirect:
	.quad	RTTI_$SYSTEM_$$_CONSOLE_READCONSOLE_CONTROL

.section .rodata.n_RTTI_$SYSTEM_$$_PCONSOLE_READCONSOLE_CONTROL,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PCONSOLE_READCONSOLE_CONTROL$indirect
RTTI_$SYSTEM_$$_PCONSOLE_READCONSOLE_CONTROL$indirect:
	.quad	RTTI_$SYSTEM_$$_PCONSOLE_READCONSOLE_CONTROL

.section .rodata.n_INIT_$SYSTEM_$$_SECURITY_ATTRIBUTES,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_SECURITY_ATTRIBUTES$indirect
INIT_$SYSTEM_$$_SECURITY_ATTRIBUTES$indirect:
	.quad	INIT_$SYSTEM_$$_SECURITY_ATTRIBUTES

.section .rodata.n_RTTI_$SYSTEM_$$_SECURITY_ATTRIBUTES,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_SECURITY_ATTRIBUTES$indirect
RTTI_$SYSTEM_$$_SECURITY_ATTRIBUTES$indirect:
	.quad	RTTI_$SYSTEM_$$_SECURITY_ATTRIBUTES

.section .rodata.n_RTTI_$SYSTEM_$$_PSECURITY_ATTRIBUTES,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSECURITY_ATTRIBUTES$indirect
RTTI_$SYSTEM_$$_PSECURITY_ATTRIBUTES$indirect:
	.quad	RTTI_$SYSTEM_$$_PSECURITY_ATTRIBUTES

.section .rodata.n_RTTI_$SYSTEM_$$_LPSECURITY_ATTRIBUTES,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_LPSECURITY_ATTRIBUTES$indirect
RTTI_$SYSTEM_$$_LPSECURITY_ATTRIBUTES$indirect:
	.quad	RTTI_$SYSTEM_$$_LPSECURITY_ATTRIBUTES

.section .rodata.n_RTTI_$SYSTEM_$$_PSECURITYATTRIBUTES,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSECURITYATTRIBUTES$indirect
RTTI_$SYSTEM_$$_PSECURITYATTRIBUTES$indirect:
	.quad	RTTI_$SYSTEM_$$_PSECURITYATTRIBUTES

.section .rodata.n_INIT_$SYSTEM_$$__OVERLAPPED,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$__OVERLAPPED$indirect
INIT_$SYSTEM_$$__OVERLAPPED$indirect:
	.quad	INIT_$SYSTEM_$$__OVERLAPPED

.section .rodata.n_RTTI_$SYSTEM_$$__OVERLAPPED,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$__OVERLAPPED$indirect
RTTI_$SYSTEM_$$__OVERLAPPED$indirect:
	.quad	RTTI_$SYSTEM_$$__OVERLAPPED

.section .rodata.n_RTTI_$SYSTEM_$$_POVERLAPPED,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_POVERLAPPED$indirect
RTTI_$SYSTEM_$$_POVERLAPPED$indirect:
	.quad	RTTI_$SYSTEM_$$_POVERLAPPED

.section .rodata.n_INIT_$SYSTEM_$$_TLIST,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TLIST$indirect
INIT_$SYSTEM_$$_TLIST$indirect:
	.quad	INIT_$SYSTEM_$$_TLIST

.section .rodata.n_RTTI_$SYSTEM_$$_TLIST,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TLIST$indirect
RTTI_$SYSTEM_$$_TLIST$indirect:
	.quad	RTTI_$SYSTEM_$$_TLIST

.section .rodata.n_RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION$indirect
RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION$indirect:
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION

.section .rodata.n_RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_s2o,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_s2o$indirect
RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_s2o$indirect:
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_s2o

.section .rodata.n_RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_o2s,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_o2s$indirect
RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_o2s$indirect:
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_DISPOSITION_o2s

.section .rodata.n_INIT_$SYSTEM_$$_EXCEPTION_RECORD,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_EXCEPTION_RECORD$indirect
INIT_$SYSTEM_$$_EXCEPTION_RECORD$indirect:
	.quad	INIT_$SYSTEM_$$_EXCEPTION_RECORD

.section .rodata.n_RTTI_$SYSTEM_$$_def00000199,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000199$indirect
RTTI_$SYSTEM_$$_def00000199$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000199

.section .rodata.n_RTTI_$SYSTEM_$$_EXCEPTION_RECORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EXCEPTION_RECORD$indirect
RTTI_$SYSTEM_$$_EXCEPTION_RECORD$indirect:
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_RECORD

.section .rodata.n_RTTI_$SYSTEM_$$_PEXCEPTION_RECORD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PEXCEPTION_RECORD$indirect
RTTI_$SYSTEM_$$_PEXCEPTION_RECORD$indirect:
	.quad	RTTI_$SYSTEM_$$_PEXCEPTION_RECORD

.section .rodata.n_INIT_$SYSTEM_$$_TSEHFRAME,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TSEHFRAME$indirect
INIT_$SYSTEM_$$_TSEHFRAME$indirect:
	.quad	INIT_$SYSTEM_$$_TSEHFRAME

.section .rodata.n_RTTI_$SYSTEM_$$_TSEHFRAME,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TSEHFRAME$indirect
RTTI_$SYSTEM_$$_TSEHFRAME$indirect:
	.quad	RTTI_$SYSTEM_$$_TSEHFRAME

.section .rodata.n_RTTI_$SYSTEM_$$_PSEHFRAME,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSEHFRAME$indirect
RTTI_$SYSTEM_$$_PSEHFRAME$indirect:
	.quad	RTTI_$SYSTEM_$$_PSEHFRAME

.section .rodata.n_INIT_$SYSTEM_$$_TSCOPEREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TSCOPEREC$indirect
INIT_$SYSTEM_$$_TSCOPEREC$indirect:
	.quad	INIT_$SYSTEM_$$_TSCOPEREC

.section .rodata.n_RTTI_$SYSTEM_$$_TSCOPEREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TSCOPEREC$indirect
RTTI_$SYSTEM_$$_TSCOPEREC$indirect:
	.quad	RTTI_$SYSTEM_$$_TSCOPEREC

.section .rodata.n_RTTI_$SYSTEM_$$_PSCOPEREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PSCOPEREC$indirect
RTTI_$SYSTEM_$$_PSCOPEREC$indirect:
	.quad	RTTI_$SYSTEM_$$_PSCOPEREC

.section .rodata.n_INIT_$SYSTEM_$$_TSEHHANDLERDATA,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TSEHHANDLERDATA$indirect
INIT_$SYSTEM_$$_TSEHHANDLERDATA$indirect:
	.quad	INIT_$SYSTEM_$$_TSEHHANDLERDATA

.section .rodata.n_RTTI_$SYSTEM_$$_TSEHHANDLERDATA,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TSEHHANDLERDATA$indirect
RTTI_$SYSTEM_$$_TSEHHANDLERDATA$indirect:
	.quad	RTTI_$SYSTEM_$$_TSEHHANDLERDATA

.section .rodata.n_INIT_$SYSTEM_$$_TEXCEPTOBJECT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TEXCEPTOBJECT$indirect
INIT_$SYSTEM_$$_TEXCEPTOBJECT$indirect:
	.quad	INIT_$SYSTEM_$$_TEXCEPTOBJECT

.section .rodata.n_RTTI_$SYSTEM_$$_TEXCEPTOBJECT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TEXCEPTOBJECT$indirect
RTTI_$SYSTEM_$$_TEXCEPTOBJECT$indirect:
	.quad	RTTI_$SYSTEM_$$_TEXCEPTOBJECT

.section .rodata.n_RTTI_$SYSTEM_$$_PEXCEPTOBJECT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PEXCEPTOBJECT$indirect
RTTI_$SYSTEM_$$_PEXCEPTOBJECT$indirect:
	.quad	RTTI_$SYSTEM_$$_PEXCEPTOBJECT

.section .rodata.n_INIT_$SYSTEM_$$_M128A,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_M128A$indirect
INIT_$SYSTEM_$$_M128A$indirect:
	.quad	INIT_$SYSTEM_$$_M128A

.section .rodata.n_RTTI_$SYSTEM_$$_M128A,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_M128A$indirect
RTTI_$SYSTEM_$$_M128A$indirect:
	.quad	RTTI_$SYSTEM_$$_M128A

.section .rodata.n_RTTI_$SYSTEM_$$_PM128A,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PM128A$indirect
RTTI_$SYSTEM_$$_PM128A$indirect:
	.quad	RTTI_$SYSTEM_$$_PM128A

.section .rodata.n_INIT_$SYSTEM_$$_TCONTEXT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TCONTEXT$indirect
INIT_$SYSTEM_$$_TCONTEXT$indirect:
	.quad	INIT_$SYSTEM_$$_TCONTEXT

.section .rodata.n_RTTI_$SYSTEM_$$_def000001A5,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000001A5$indirect
RTTI_$SYSTEM_$$_def000001A5$indirect:
	.quad	RTTI_$SYSTEM_$$_def000001A5

.section .rodata.n_RTTI_$SYSTEM_$$_def000001A6,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000001A6$indirect
RTTI_$SYSTEM_$$_def000001A6$indirect:
	.quad	RTTI_$SYSTEM_$$_def000001A6

.section .rodata.n_RTTI_$SYSTEM_$$_def000001A7,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000001A7$indirect
RTTI_$SYSTEM_$$_def000001A7$indirect:
	.quad	RTTI_$SYSTEM_$$_def000001A7

.section .rodata.n_RTTI_$SYSTEM_$$_TCONTEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TCONTEXT$indirect
RTTI_$SYSTEM_$$_TCONTEXT$indirect:
	.quad	RTTI_$SYSTEM_$$_TCONTEXT

.section .rodata.n_RTTI_$SYSTEM_$$_PCONTEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PCONTEXT$indirect
RTTI_$SYSTEM_$$_PCONTEXT$indirect:
	.quad	RTTI_$SYSTEM_$$_PCONTEXT

.section .rodata.n_RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE$indirect
RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE$indirect:
	.quad	RTTI_$SYSTEM_$$_EXCEPTION_ROUTINE

.section .rodata.n_INIT_$SYSTEM_$$_TDISPATCHERCONTEXT,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TDISPATCHERCONTEXT$indirect
INIT_$SYSTEM_$$_TDISPATCHERCONTEXT$indirect:
	.quad	INIT_$SYSTEM_$$_TDISPATCHERCONTEXT

.section .rodata.n_RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT$indirect
RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT$indirect:
	.quad	RTTI_$SYSTEM_$$_TDISPATCHERCONTEXT

.section .rodata.n_RTTI_$SYSTEM_$$_PDISPATCHERCONTEXT,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PDISPATCHERCONTEXT$indirect
RTTI_$SYSTEM_$$_PDISPATCHERCONTEXT$indirect:
	.quad	RTTI_$SYSTEM_$$_PDISPATCHERCONTEXT

.section .rodata.n_INIT_$SYSTEM_$$_EXCEPTION,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_EXCEPTION$indirect
INIT_$SYSTEM_$$_EXCEPTION$indirect:
	.quad	INIT_$SYSTEM_$$_EXCEPTION

.section .rodata.n_RTTI_$SYSTEM_$$_EXCEPTION,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EXCEPTION$indirect
RTTI_$SYSTEM_$$_EXCEPTION$indirect:
	.quad	RTTI_$SYSTEM_$$_EXCEPTION

.section .rodata.n_INIT_$SYSTEM_$$_EDIVBYZERO,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_EDIVBYZERO$indirect
INIT_$SYSTEM_$$_EDIVBYZERO$indirect:
	.quad	INIT_$SYSTEM_$$_EDIVBYZERO

.section .rodata.n_RTTI_$SYSTEM_$$_EDIVBYZERO,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EDIVBYZERO$indirect
RTTI_$SYSTEM_$$_EDIVBYZERO$indirect:
	.quad	RTTI_$SYSTEM_$$_EDIVBYZERO

.section .rodata.n_INIT_$SYSTEM_$$_EOUTOFMEMORY,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_EOUTOFMEMORY$indirect
INIT_$SYSTEM_$$_EOUTOFMEMORY$indirect:
	.quad	INIT_$SYSTEM_$$_EOUTOFMEMORY

.section .rodata.n_RTTI_$SYSTEM_$$_EOUTOFMEMORY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EOUTOFMEMORY$indirect
RTTI_$SYSTEM_$$_EOUTOFMEMORY$indirect:
	.quad	RTTI_$SYSTEM_$$_EOUTOFMEMORY

.section .rodata.n_INIT_$SYSTEM_$$_EACCESSVIOLATION,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_EACCESSVIOLATION$indirect
INIT_$SYSTEM_$$_EACCESSVIOLATION$indirect:
	.quad	INIT_$SYSTEM_$$_EACCESSVIOLATION

.section .rodata.n_RTTI_$SYSTEM_$$_EACCESSVIOLATION,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_EACCESSVIOLATION$indirect
RTTI_$SYSTEM_$$_EACCESSVIOLATION$indirect:
	.quad	RTTI_$SYSTEM_$$_EACCESSVIOLATION

.section .rodata.n_RTTI_$SYSTEM_$$_TPROCEDURE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TPROCEDURE$indirect
RTTI_$SYSTEM_$$_TPROCEDURE$indirect:
	.quad	RTTI_$SYSTEM_$$_TPROCEDURE

.section .rodata.n_INIT_$SYSTEM_$$_TINITFINALREC,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TINITFINALREC$indirect
INIT_$SYSTEM_$$_TINITFINALREC$indirect:
	.quad	INIT_$SYSTEM_$$_TINITFINALREC

.section .rodata.n_RTTI_$SYSTEM_$$_TINITFINALREC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINITFINALREC$indirect
RTTI_$SYSTEM_$$_TINITFINALREC$indirect:
	.quad	RTTI_$SYSTEM_$$_TINITFINALREC

.section .rodata.n_INIT_$SYSTEM_$$_TINITFINALTABLE,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TINITFINALTABLE$indirect
INIT_$SYSTEM_$$_TINITFINALTABLE$indirect:
	.quad	INIT_$SYSTEM_$$_TINITFINALTABLE

.section .rodata.n_RTTI_$SYSTEM_$$_def000001C7,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000001C7$indirect
RTTI_$SYSTEM_$$_def000001C7$indirect:
	.quad	RTTI_$SYSTEM_$$_def000001C7

.section .rodata.n_RTTI_$SYSTEM_$$_TINITFINALTABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TINITFINALTABLE$indirect
RTTI_$SYSTEM_$$_TINITFINALTABLE$indirect:
	.quad	RTTI_$SYSTEM_$$_TINITFINALTABLE

.section .rodata.n_RTTI_$SYSTEM_$$_PINITFINALTABLE,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_PINITFINALTABLE$indirect
RTTI_$SYSTEM_$$_PINITFINALTABLE$indirect:
	.quad	RTTI_$SYSTEM_$$_PINITFINALTABLE

.section .rodata.n_INIT_$SYSTEM_$$_TDOSCMD,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TDOSCMD$indirect
INIT_$SYSTEM_$$_TDOSCMD$indirect:
	.quad	INIT_$SYSTEM_$$_TDOSCMD

.section .rodata.n_RTTI_$SYSTEM_$$_TDOSCMD,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TDOSCMD$indirect
RTTI_$SYSTEM_$$_TDOSCMD$indirect:
	.quad	RTTI_$SYSTEM_$$_TDOSCMD

.section .rodata.n_INIT_$SYSTEM_$$_WINDOWS_CLASS,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_WINDOWS_CLASS$indirect
INIT_$SYSTEM_$$_WINDOWS_CLASS$indirect:
	.quad	INIT_$SYSTEM_$$_WINDOWS_CLASS

.section .rodata.n_RTTI_$SYSTEM_$$_WINDOWS_CLASS,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_WINDOWS_CLASS$indirect
RTTI_$SYSTEM_$$_WINDOWS_CLASS$indirect:
	.quad	RTTI_$SYSTEM_$$_WINDOWS_CLASS

.section .rodata.n_INIT_$SYSTEM_$$_TVGAIO,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TVGAIO$indirect
INIT_$SYSTEM_$$_TVGAIO$indirect:
	.quad	INIT_$SYSTEM_$$_TVGAIO

.section .rodata.n_RTTI_$SYSTEM_$$_TVGAIO,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TVGAIO$indirect
RTTI_$SYSTEM_$$_TVGAIO$indirect:
	.quad	RTTI_$SYSTEM_$$_TVGAIO

.section .rodata.n_INIT_$SYSTEM_$$_TSYSTEMIO,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TSYSTEMIO$indirect
INIT_$SYSTEM_$$_TSYSTEMIO$indirect:
	.quad	INIT_$SYSTEM_$$_TSYSTEMIO

.section .rodata.n_RTTI_$SYSTEM_$$_TSYSTEMIO,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TSYSTEMIO$indirect
RTTI_$SYSTEM_$$_TSYSTEMIO$indirect:
	.quad	RTTI_$SYSTEM_$$_TSYSTEMIO

.section .rodata.n_INIT_$SYSTEM_$$_TCPU,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TCPU$indirect
INIT_$SYSTEM_$$_TCPU$indirect:
	.quad	INIT_$SYSTEM_$$_TCPU

.section .rodata.n_RTTI_$SYSTEM_$$_TCPU,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TCPU$indirect
RTTI_$SYSTEM_$$_TCPU$indirect:
	.quad	RTTI_$SYSTEM_$$_TCPU

.section .rodata.n_INIT_$SYSTEM_$$_TMEMORY,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TMEMORY$indirect
INIT_$SYSTEM_$$_TMEMORY$indirect:
	.quad	INIT_$SYSTEM_$$_TMEMORY

.section .rodata.n_RTTI_$SYSTEM_$$_TMEMORY,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TMEMORY$indirect
RTTI_$SYSTEM_$$_TMEMORY$indirect:
	.quad	RTTI_$SYSTEM_$$_TMEMORY

.section .rodata.n_INIT_$SYSTEM_$$_TSYSTEM,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TSYSTEM$indirect
INIT_$SYSTEM_$$_TSYSTEM$indirect:
	.quad	INIT_$SYSTEM_$$_TSYSTEM

.section .rodata.n_RTTI_$SYSTEM_$$_TSYSTEM,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_TSYSTEM$indirect
RTTI_$SYSTEM_$$_TSYSTEM$indirect:
	.quad	RTTI_$SYSTEM_$$_TSYSTEM
# End asmlist al_indirectglobals
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc470:
	.long	.Lc472-.Lc471
.Lc471:
	.long	-1
	.byte	1
	.byte	0
	.uleb128	1
	.sleb128	-4
	.byte	16
	.byte	12
	.uleb128	7
	.uleb128	8
	.byte	5
	.uleb128	16
	.uleb128	2
	.balign 4,0
.Lc472:
	.long	.Lc474-.Lc473
.Lc473:
	.secrel32	.Lc470
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.byte	4
	.long	.Lc3-.Lc1
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc474:
	.long	.Lc476-.Lc475
.Lc475:
	.secrel32	.Lc470
	.quad	.Lc4
	.quad	.Lc5-.Lc4
	.byte	4
	.long	.Lc6-.Lc4
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc476:
	.long	.Lc478-.Lc477
.Lc477:
	.secrel32	.Lc470
	.quad	.Lc7
	.quad	.Lc8-.Lc7
	.byte	4
	.long	.Lc9-.Lc7
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc478:
	.long	.Lc480-.Lc479
.Lc479:
	.secrel32	.Lc470
	.quad	.Lc10
	.quad	.Lc11-.Lc10
	.byte	4
	.long	.Lc12-.Lc10
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc480:
	.long	.Lc482-.Lc481
.Lc481:
	.secrel32	.Lc470
	.quad	.Lc13
	.quad	.Lc14-.Lc13
	.byte	4
	.long	.Lc15-.Lc13
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc482:
	.long	.Lc484-.Lc483
.Lc483:
	.secrel32	.Lc470
	.quad	.Lc16
	.quad	.Lc17-.Lc16
	.byte	4
	.long	.Lc18-.Lc16
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc484:
	.long	.Lc486-.Lc485
.Lc485:
	.secrel32	.Lc470
	.quad	.Lc19
	.quad	.Lc20-.Lc19
	.byte	4
	.long	.Lc21-.Lc19
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc486:
	.long	.Lc488-.Lc487
.Lc487:
	.secrel32	.Lc470
	.quad	.Lc22
	.quad	.Lc23-.Lc22
	.byte	4
	.long	.Lc24-.Lc22
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc488:
	.long	.Lc490-.Lc489
.Lc489:
	.secrel32	.Lc470
	.quad	.Lc25
	.quad	.Lc26-.Lc25
	.byte	4
	.long	.Lc27-.Lc25
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc490:
	.long	.Lc492-.Lc491
.Lc491:
	.secrel32	.Lc470
	.quad	.Lc28
	.quad	.Lc29-.Lc28
	.byte	4
	.long	.Lc30-.Lc28
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc492:
	.long	.Lc494-.Lc493
.Lc493:
	.secrel32	.Lc470
	.quad	.Lc31
	.quad	.Lc32-.Lc31
	.byte	4
	.long	.Lc33-.Lc31
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc494:
	.long	.Lc496-.Lc495
.Lc495:
	.secrel32	.Lc470
	.quad	.Lc34
	.quad	.Lc35-.Lc34
	.byte	4
	.long	.Lc36-.Lc34
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc496:
	.long	.Lc498-.Lc497
.Lc497:
	.secrel32	.Lc470
	.quad	.Lc37
	.quad	.Lc38-.Lc37
	.byte	4
	.long	.Lc39-.Lc37
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc498:
	.long	.Lc500-.Lc499
.Lc499:
	.secrel32	.Lc470
	.quad	.Lc40
	.quad	.Lc41-.Lc40
	.balign 4,0
.Lc500:
	.long	.Lc502-.Lc501
.Lc501:
	.secrel32	.Lc470
	.quad	.Lc42
	.quad	.Lc43-.Lc42
	.balign 4,0
.Lc502:
	.long	.Lc504-.Lc503
.Lc503:
	.secrel32	.Lc470
	.quad	.Lc44
	.quad	.Lc45-.Lc44
	.balign 4,0
.Lc504:
	.long	.Lc506-.Lc505
.Lc505:
	.secrel32	.Lc470
	.quad	.Lc46
	.quad	.Lc47-.Lc46
	.balign 4,0
.Lc506:
	.long	.Lc508-.Lc507
.Lc507:
	.secrel32	.Lc470
	.quad	.Lc48
	.quad	.Lc49-.Lc48
	.balign 4,0
.Lc508:
	.long	.Lc510-.Lc509
.Lc509:
	.secrel32	.Lc470
	.quad	.Lc50
	.quad	.Lc51-.Lc50
	.byte	4
	.long	.Lc52-.Lc50
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc510:
	.long	.Lc512-.Lc511
.Lc511:
	.secrel32	.Lc470
	.quad	.Lc53
	.quad	.Lc54-.Lc53
	.balign 4,0
.Lc512:
	.long	.Lc514-.Lc513
.Lc513:
	.secrel32	.Lc470
	.quad	.Lc55
	.quad	.Lc56-.Lc55
	.balign 4,0
.Lc514:
	.long	.Lc516-.Lc515
.Lc515:
	.secrel32	.Lc470
	.quad	.Lc57
	.quad	.Lc58-.Lc57
	.byte	4
	.long	.Lc59-.Lc57
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc516:
	.long	.Lc518-.Lc517
.Lc517:
	.secrel32	.Lc470
	.quad	.Lc60
	.quad	.Lc61-.Lc60
	.balign 4,0
.Lc518:
	.long	.Lc520-.Lc519
.Lc519:
	.secrel32	.Lc470
	.quad	.Lc62
	.quad	.Lc63-.Lc62
	.balign 4,0
.Lc520:
	.long	.Lc522-.Lc521
.Lc521:
	.secrel32	.Lc470
	.quad	.Lc64
	.quad	.Lc65-.Lc64
	.balign 4,0
.Lc522:
	.long	.Lc524-.Lc523
.Lc523:
	.secrel32	.Lc470
	.quad	.Lc66
	.quad	.Lc67-.Lc66
	.balign 4,0
.Lc524:
	.long	.Lc526-.Lc525
.Lc525:
	.secrel32	.Lc470
	.quad	.Lc68
	.quad	.Lc69-.Lc68
	.byte	4
	.long	.Lc70-.Lc68
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc71-.Lc70
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc72-.Lc71
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc526:
	.long	.Lc528-.Lc527
.Lc527:
	.secrel32	.Lc470
	.quad	.Lc73
	.quad	.Lc74-.Lc73
	.byte	4
	.long	.Lc75-.Lc73
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc76-.Lc75
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc77-.Lc76
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc528:
	.long	.Lc530-.Lc529
.Lc529:
	.secrel32	.Lc470
	.quad	.Lc78
	.quad	.Lc79-.Lc78
	.balign 4,0
.Lc530:
	.long	.Lc532-.Lc531
.Lc531:
	.secrel32	.Lc470
	.quad	.Lc80
	.quad	.Lc81-.Lc80
	.byte	4
	.long	.Lc82-.Lc80
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc83-.Lc82
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc84-.Lc83
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc532:
	.long	.Lc534-.Lc533
.Lc533:
	.secrel32	.Lc470
	.quad	.Lc85
	.quad	.Lc86-.Lc85
	.byte	4
	.long	.Lc87-.Lc85
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc88-.Lc87
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc89-.Lc88
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc534:
	.long	.Lc536-.Lc535
.Lc535:
	.secrel32	.Lc470
	.quad	.Lc90
	.quad	.Lc91-.Lc90
	.byte	4
	.long	.Lc92-.Lc90
	.byte	14
	.uleb128	56
	.balign 4,0
.Lc536:
	.long	.Lc538-.Lc537
.Lc537:
	.secrel32	.Lc470
	.quad	.Lc93
	.quad	.Lc94-.Lc93
	.byte	4
	.long	.Lc95-.Lc93
	.byte	14
	.uleb128	64
	.balign 4,0
.Lc538:
	.long	.Lc540-.Lc539
.Lc539:
	.secrel32	.Lc470
	.quad	.Lc96
	.quad	.Lc97-.Lc96
	.byte	4
	.long	.Lc98-.Lc96
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc99-.Lc98
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc100-.Lc99
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc540:
	.long	.Lc542-.Lc541
.Lc541:
	.secrel32	.Lc470
	.quad	.Lc101
	.quad	.Lc102-.Lc101
	.byte	4
	.long	.Lc103-.Lc101
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc542:
	.long	.Lc544-.Lc543
.Lc543:
	.secrel32	.Lc470
	.quad	.Lc104
	.quad	.Lc105-.Lc104
	.balign 4,0
.Lc544:
	.long	.Lc546-.Lc545
.Lc545:
	.secrel32	.Lc470
	.quad	.Lc106
	.quad	.Lc107-.Lc106
	.balign 4,0
.Lc546:
	.long	.Lc548-.Lc547
.Lc547:
	.secrel32	.Lc470
	.quad	.Lc108
	.quad	.Lc109-.Lc108
	.balign 4,0
.Lc548:
	.long	.Lc550-.Lc549
.Lc549:
	.secrel32	.Lc470
	.quad	.Lc110
	.quad	.Lc111-.Lc110
	.balign 4,0
.Lc550:
	.long	.Lc552-.Lc551
.Lc551:
	.secrel32	.Lc470
	.quad	.Lc112
	.quad	.Lc113-.Lc112
	.balign 4,0
.Lc552:
	.long	.Lc554-.Lc553
.Lc553:
	.secrel32	.Lc470
	.quad	.Lc114
	.quad	.Lc115-.Lc114
	.balign 4,0
.Lc554:
	.long	.Lc556-.Lc555
.Lc555:
	.secrel32	.Lc470
	.quad	.Lc116
	.quad	.Lc117-.Lc116
	.balign 4,0
.Lc556:
	.long	.Lc558-.Lc557
.Lc557:
	.secrel32	.Lc470
	.quad	.Lc118
	.quad	.Lc119-.Lc118
	.byte	4
	.long	.Lc120-.Lc118
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc558:
	.long	.Lc560-.Lc559
.Lc559:
	.secrel32	.Lc470
	.quad	.Lc121
	.quad	.Lc122-.Lc121
	.balign 4,0
.Lc560:
	.long	.Lc562-.Lc561
.Lc561:
	.secrel32	.Lc470
	.quad	.Lc123
	.quad	.Lc124-.Lc123
	.balign 4,0
.Lc562:
	.long	.Lc564-.Lc563
.Lc563:
	.secrel32	.Lc470
	.quad	.Lc125
	.quad	.Lc126-.Lc125
	.byte	4
	.long	.Lc127-.Lc125
	.byte	14
	.uleb128	64
	.balign 4,0
.Lc564:
	.long	.Lc566-.Lc565
.Lc565:
	.secrel32	.Lc470
	.quad	.Lc128
	.quad	.Lc129-.Lc128
	.balign 4,0
.Lc566:
	.long	.Lc568-.Lc567
.Lc567:
	.secrel32	.Lc470
	.quad	.Lc130
	.quad	.Lc131-.Lc130
	.byte	4
	.long	.Lc132-.Lc130
	.byte	14
	.uleb128	56
	.balign 4,0
.Lc568:
	.long	.Lc570-.Lc569
.Lc569:
	.secrel32	.Lc470
	.quad	.Lc133
	.quad	.Lc134-.Lc133
	.byte	4
	.long	.Lc135-.Lc133
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc570:
	.long	.Lc572-.Lc571
.Lc571:
	.secrel32	.Lc470
	.quad	.Lc136
	.quad	.Lc137-.Lc136
	.byte	4
	.long	.Lc138-.Lc136
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc572:
	.long	.Lc574-.Lc573
.Lc573:
	.secrel32	.Lc470
	.quad	.Lc139
	.quad	.Lc140-.Lc139
	.byte	4
	.long	.Lc141-.Lc139
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc574:
	.long	.Lc576-.Lc575
.Lc575:
	.secrel32	.Lc470
	.quad	.Lc142
	.quad	.Lc143-.Lc142
	.byte	4
	.long	.Lc144-.Lc142
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc576:
	.long	.Lc578-.Lc577
.Lc577:
	.secrel32	.Lc470
	.quad	.Lc145
	.quad	.Lc146-.Lc145
	.byte	4
	.long	.Lc147-.Lc145
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc578:
	.long	.Lc580-.Lc579
.Lc579:
	.secrel32	.Lc470
	.quad	.Lc148
	.quad	.Lc149-.Lc148
	.balign 4,0
.Lc580:
	.long	.Lc582-.Lc581
.Lc581:
	.secrel32	.Lc470
	.quad	.Lc150
	.quad	.Lc151-.Lc150
	.byte	4
	.long	.Lc152-.Lc150
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc582:
	.long	.Lc584-.Lc583
.Lc583:
	.secrel32	.Lc470
	.quad	.Lc153
	.quad	.Lc154-.Lc153
	.byte	4
	.long	.Lc155-.Lc153
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc584:
	.long	.Lc586-.Lc585
.Lc585:
	.secrel32	.Lc470
	.quad	.Lc156
	.quad	.Lc157-.Lc156
	.byte	4
	.long	.Lc158-.Lc156
	.byte	14
	.uleb128	56
	.balign 4,0
.Lc586:
	.long	.Lc588-.Lc587
.Lc587:
	.secrel32	.Lc470
	.quad	.Lc159
	.quad	.Lc160-.Lc159
	.byte	4
	.long	.Lc161-.Lc159
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc588:
	.long	.Lc590-.Lc589
.Lc589:
	.secrel32	.Lc470
	.quad	.Lc162
	.quad	.Lc163-.Lc162
	.byte	4
	.long	.Lc164-.Lc162
	.byte	14
	.uleb128	64
	.balign 4,0
.Lc590:
	.long	.Lc592-.Lc591
.Lc591:
	.secrel32	.Lc470
	.quad	.Lc165
	.quad	.Lc166-.Lc165
	.byte	4
	.long	.Lc167-.Lc165
	.byte	14
	.uleb128	72
	.balign 4,0
.Lc592:
	.long	.Lc594-.Lc593
.Lc593:
	.secrel32	.Lc470
	.quad	.Lc168
	.quad	.Lc169-.Lc168
	.byte	4
	.long	.Lc170-.Lc168
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc594:
	.long	.Lc596-.Lc595
.Lc595:
	.secrel32	.Lc470
	.quad	.Lc171
	.quad	.Lc172-.Lc171
	.byte	4
	.long	.Lc173-.Lc171
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc596:
	.long	.Lc598-.Lc597
.Lc597:
	.secrel32	.Lc470
	.quad	.Lc174
	.quad	.Lc175-.Lc174
	.byte	4
	.long	.Lc176-.Lc174
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc598:
	.long	.Lc600-.Lc599
.Lc599:
	.secrel32	.Lc470
	.quad	.Lc177
	.quad	.Lc178-.Lc177
	.byte	4
	.long	.Lc179-.Lc177
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc600:
	.long	.Lc602-.Lc601
.Lc601:
	.secrel32	.Lc470
	.quad	.Lc180
	.quad	.Lc181-.Lc180
	.byte	4
	.long	.Lc182-.Lc180
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc602:
	.long	.Lc604-.Lc603
.Lc603:
	.secrel32	.Lc470
	.quad	.Lc183
	.quad	.Lc184-.Lc183
	.byte	4
	.long	.Lc185-.Lc183
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc186-.Lc185
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc187-.Lc186
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc604:
	.long	.Lc606-.Lc605
.Lc605:
	.secrel32	.Lc470
	.quad	.Lc188
	.quad	.Lc189-.Lc188
	.byte	4
	.long	.Lc190-.Lc188
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc606:
	.long	.Lc608-.Lc607
.Lc607:
	.secrel32	.Lc470
	.quad	.Lc191
	.quad	.Lc192-.Lc191
	.balign 4,0
.Lc608:
	.long	.Lc610-.Lc609
.Lc609:
	.secrel32	.Lc470
	.quad	.Lc193
	.quad	.Lc194-.Lc193
	.balign 4,0
.Lc610:
	.long	.Lc612-.Lc611
.Lc611:
	.secrel32	.Lc470
	.quad	.Lc195
	.quad	.Lc196-.Lc195
	.balign 4,0
.Lc612:
	.long	.Lc614-.Lc613
.Lc613:
	.secrel32	.Lc470
	.quad	.Lc197
	.quad	.Lc198-.Lc197
	.byte	4
	.long	.Lc199-.Lc197
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc614:
	.long	.Lc616-.Lc615
.Lc615:
	.secrel32	.Lc470
	.quad	.Lc200
	.quad	.Lc201-.Lc200
	.balign 4,0
.Lc616:
	.long	.Lc618-.Lc617
.Lc617:
	.secrel32	.Lc470
	.quad	.Lc202
	.quad	.Lc203-.Lc202
	.byte	4
	.long	.Lc204-.Lc202
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc618:
	.long	.Lc620-.Lc619
.Lc619:
	.secrel32	.Lc470
	.quad	.Lc205
	.quad	.Lc206-.Lc205
	.byte	4
	.long	.Lc207-.Lc205
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc620:
	.long	.Lc622-.Lc621
.Lc621:
	.secrel32	.Lc470
	.quad	.Lc208
	.quad	.Lc209-.Lc208
	.balign 4,0
.Lc622:
	.long	.Lc624-.Lc623
.Lc623:
	.secrel32	.Lc470
	.quad	.Lc210
	.quad	.Lc211-.Lc210
	.byte	4
	.long	.Lc212-.Lc210
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc624:
	.long	.Lc626-.Lc625
.Lc625:
	.secrel32	.Lc470
	.quad	.Lc213
	.quad	.Lc214-.Lc213
	.byte	4
	.long	.Lc215-.Lc213
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc626:
	.long	.Lc628-.Lc627
.Lc627:
	.secrel32	.Lc470
	.quad	.Lc216
	.quad	.Lc217-.Lc216
	.byte	4
	.long	.Lc218-.Lc216
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc628:
	.long	.Lc630-.Lc629
.Lc629:
	.secrel32	.Lc470
	.quad	.Lc219
	.quad	.Lc220-.Lc219
	.byte	4
	.long	.Lc221-.Lc219
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc630:
	.long	.Lc632-.Lc631
.Lc631:
	.secrel32	.Lc470
	.quad	.Lc222
	.quad	.Lc223-.Lc222
	.byte	4
	.long	.Lc224-.Lc222
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc225-.Lc224
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc226-.Lc225
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc632:
	.long	.Lc634-.Lc633
.Lc633:
	.secrel32	.Lc470
	.quad	.Lc227
	.quad	.Lc228-.Lc227
	.byte	4
	.long	.Lc229-.Lc227
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc634:
	.long	.Lc636-.Lc635
.Lc635:
	.secrel32	.Lc470
	.quad	.Lc230
	.quad	.Lc231-.Lc230
	.byte	4
	.long	.Lc232-.Lc230
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc636:
	.long	.Lc638-.Lc637
.Lc637:
	.secrel32	.Lc470
	.quad	.Lc233
	.quad	.Lc234-.Lc233
	.balign 4,0
.Lc638:
	.long	.Lc640-.Lc639
.Lc639:
	.secrel32	.Lc470
	.quad	.Lc235
	.quad	.Lc236-.Lc235
	.balign 4,0
.Lc640:
	.long	.Lc642-.Lc641
.Lc641:
	.secrel32	.Lc470
	.quad	.Lc237
	.quad	.Lc238-.Lc237
	.byte	4
	.long	.Lc239-.Lc237
	.byte	14
	.uleb128	56
	.balign 4,0
.Lc642:
	.long	.Lc644-.Lc643
.Lc643:
	.secrel32	.Lc470
	.quad	.Lc240
	.quad	.Lc241-.Lc240
	.balign 4,0
.Lc644:
	.long	.Lc646-.Lc645
.Lc645:
	.secrel32	.Lc470
	.quad	.Lc242
	.quad	.Lc243-.Lc242
	.byte	4
	.long	.Lc244-.Lc242
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc245-.Lc244
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc246-.Lc245
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc646:
	.long	.Lc648-.Lc647
.Lc647:
	.secrel32	.Lc470
	.quad	.Lc247
	.quad	.Lc248-.Lc247
	.byte	4
	.long	.Lc249-.Lc247
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc250-.Lc249
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc251-.Lc250
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc648:
	.long	.Lc650-.Lc649
.Lc649:
	.secrel32	.Lc470
	.quad	.Lc252
	.quad	.Lc253-.Lc252
	.byte	4
	.long	.Lc254-.Lc252
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc650:
	.long	.Lc652-.Lc651
.Lc651:
	.secrel32	.Lc470
	.quad	.Lc255
	.quad	.Lc256-.Lc255
	.balign 4,0
.Lc652:
	.long	.Lc654-.Lc653
.Lc653:
	.secrel32	.Lc470
	.quad	.Lc257
	.quad	.Lc258-.Lc257
	.byte	4
	.long	.Lc259-.Lc257
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc654:
	.long	.Lc656-.Lc655
.Lc655:
	.secrel32	.Lc470
	.quad	.Lc260
	.quad	.Lc261-.Lc260
	.byte	4
	.long	.Lc262-.Lc260
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc656:
	.long	.Lc658-.Lc657
.Lc657:
	.secrel32	.Lc470
	.quad	.Lc263
	.quad	.Lc264-.Lc263
	.byte	4
	.long	.Lc265-.Lc263
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc266-.Lc265
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc267-.Lc266
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc658:
	.long	.Lc660-.Lc659
.Lc659:
	.secrel32	.Lc470
	.quad	.Lc268
	.quad	.Lc269-.Lc268
	.byte	4
	.long	.Lc270-.Lc268
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc660:
	.long	.Lc662-.Lc661
.Lc661:
	.secrel32	.Lc470
	.quad	.Lc271
	.quad	.Lc272-.Lc271
	.byte	4
	.long	.Lc273-.Lc271
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc662:
	.long	.Lc664-.Lc663
.Lc663:
	.secrel32	.Lc470
	.quad	.Lc274
	.quad	.Lc275-.Lc274
	.balign 4,0
.Lc664:
	.long	.Lc666-.Lc665
.Lc665:
	.secrel32	.Lc470
	.quad	.Lc276
	.quad	.Lc277-.Lc276
	.byte	4
	.long	.Lc278-.Lc276
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc666:
	.long	.Lc668-.Lc667
.Lc667:
	.secrel32	.Lc470
	.quad	.Lc279
	.quad	.Lc280-.Lc279
	.byte	4
	.long	.Lc281-.Lc279
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc668:
	.long	.Lc670-.Lc669
.Lc669:
	.secrel32	.Lc470
	.quad	.Lc282
	.quad	.Lc283-.Lc282
	.byte	4
	.long	.Lc284-.Lc282
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc670:
	.long	.Lc672-.Lc671
.Lc671:
	.secrel32	.Lc470
	.quad	.Lc285
	.quad	.Lc286-.Lc285
	.byte	4
	.long	.Lc287-.Lc285
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc672:
	.long	.Lc674-.Lc673
.Lc673:
	.secrel32	.Lc470
	.quad	.Lc288
	.quad	.Lc289-.Lc288
	.byte	4
	.long	.Lc290-.Lc288
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc674:
	.long	.Lc676-.Lc675
.Lc675:
	.secrel32	.Lc470
	.quad	.Lc291
	.quad	.Lc292-.Lc291
	.byte	4
	.long	.Lc293-.Lc291
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc676:
	.long	.Lc678-.Lc677
.Lc677:
	.secrel32	.Lc470
	.quad	.Lc294
	.quad	.Lc295-.Lc294
	.balign 4,0
.Lc678:
	.long	.Lc680-.Lc679
.Lc679:
	.secrel32	.Lc470
	.quad	.Lc296
	.quad	.Lc297-.Lc296
	.byte	4
	.long	.Lc298-.Lc296
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc299-.Lc298
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc300-.Lc299
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc680:
	.long	.Lc682-.Lc681
.Lc681:
	.secrel32	.Lc470
	.quad	.Lc301
	.quad	.Lc302-.Lc301
	.byte	4
	.long	.Lc303-.Lc301
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc304-.Lc303
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc305-.Lc304
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc682:
	.long	.Lc684-.Lc683
.Lc683:
	.secrel32	.Lc470
	.quad	.Lc306
	.quad	.Lc307-.Lc306
	.byte	4
	.long	.Lc308-.Lc306
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc684:
	.long	.Lc686-.Lc685
.Lc685:
	.secrel32	.Lc470
	.quad	.Lc309
	.quad	.Lc310-.Lc309
	.byte	4
	.long	.Lc311-.Lc309
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc686:
	.long	.Lc688-.Lc687
.Lc687:
	.secrel32	.Lc470
	.quad	.Lc312
	.quad	.Lc313-.Lc312
	.byte	4
	.long	.Lc314-.Lc312
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc688:
	.long	.Lc690-.Lc689
.Lc689:
	.secrel32	.Lc470
	.quad	.Lc315
	.quad	.Lc316-.Lc315
	.byte	4
	.long	.Lc317-.Lc315
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc690:
	.long	.Lc692-.Lc691
.Lc691:
	.secrel32	.Lc470
	.quad	.Lc318
	.quad	.Lc319-.Lc318
	.byte	4
	.long	.Lc320-.Lc318
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc692:
	.long	.Lc694-.Lc693
.Lc693:
	.secrel32	.Lc470
	.quad	.Lc321
	.quad	.Lc322-.Lc321
	.byte	4
	.long	.Lc323-.Lc321
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc694:
	.long	.Lc696-.Lc695
.Lc695:
	.secrel32	.Lc470
	.quad	.Lc324
	.quad	.Lc325-.Lc324
	.byte	4
	.long	.Lc326-.Lc324
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc696:
	.long	.Lc698-.Lc697
.Lc697:
	.secrel32	.Lc470
	.quad	.Lc327
	.quad	.Lc328-.Lc327
	.byte	4
	.long	.Lc329-.Lc327
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc698:
	.long	.Lc700-.Lc699
.Lc699:
	.secrel32	.Lc470
	.quad	.Lc330
	.quad	.Lc331-.Lc330
	.byte	4
	.long	.Lc332-.Lc330
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc700:
	.long	.Lc702-.Lc701
.Lc701:
	.secrel32	.Lc470
	.quad	.Lc333
	.quad	.Lc334-.Lc333
	.byte	4
	.long	.Lc335-.Lc333
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc336-.Lc335
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc337-.Lc336
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc702:
	.long	.Lc704-.Lc703
.Lc703:
	.secrel32	.Lc470
	.quad	.Lc338
	.quad	.Lc339-.Lc338
	.byte	4
	.long	.Lc340-.Lc338
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc704:
	.long	.Lc706-.Lc705
.Lc705:
	.secrel32	.Lc470
	.quad	.Lc341
	.quad	.Lc342-.Lc341
	.byte	4
	.long	.Lc343-.Lc341
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc706:
	.long	.Lc708-.Lc707
.Lc707:
	.secrel32	.Lc470
	.quad	.Lc344
	.quad	.Lc345-.Lc344
	.byte	4
	.long	.Lc346-.Lc344
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc347-.Lc346
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc348-.Lc347
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc708:
	.long	.Lc710-.Lc709
.Lc709:
	.secrel32	.Lc470
	.quad	.Lc349
	.quad	.Lc350-.Lc349
	.byte	4
	.long	.Lc351-.Lc349
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc352-.Lc351
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc353-.Lc352
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc710:
	.long	.Lc712-.Lc711
.Lc711:
	.secrel32	.Lc470
	.quad	.Lc354
	.quad	.Lc355-.Lc354
	.byte	4
	.long	.Lc356-.Lc354
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc357-.Lc356
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc358-.Lc357
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc712:
	.long	.Lc714-.Lc713
.Lc713:
	.secrel32	.Lc470
	.quad	.Lc359
	.quad	.Lc360-.Lc359
	.byte	4
	.long	.Lc361-.Lc359
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc362-.Lc361
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc363-.Lc362
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc714:
	.long	.Lc716-.Lc715
.Lc715:
	.secrel32	.Lc470
	.quad	.Lc364
	.quad	.Lc365-.Lc364
	.byte	4
	.long	.Lc366-.Lc364
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc367-.Lc366
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc368-.Lc367
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc716:
	.long	.Lc718-.Lc717
.Lc717:
	.secrel32	.Lc470
	.quad	.Lc369
	.quad	.Lc370-.Lc369
	.byte	4
	.long	.Lc371-.Lc369
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc372-.Lc371
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc373-.Lc372
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc718:
	.long	.Lc720-.Lc719
.Lc719:
	.secrel32	.Lc470
	.quad	.Lc374
	.quad	.Lc375-.Lc374
	.byte	4
	.long	.Lc376-.Lc374
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc377-.Lc376
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc378-.Lc377
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc720:
	.long	.Lc722-.Lc721
.Lc721:
	.secrel32	.Lc470
	.quad	.Lc379
	.quad	.Lc380-.Lc379
	.byte	4
	.long	.Lc381-.Lc379
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc382-.Lc381
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc383-.Lc382
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc722:
	.long	.Lc724-.Lc723
.Lc723:
	.secrel32	.Lc470
	.quad	.Lc384
	.quad	.Lc385-.Lc384
	.byte	4
	.long	.Lc386-.Lc384
	.byte	14
	.uleb128	16
	.balign 4,0
.Lc724:
	.long	.Lc726-.Lc725
.Lc725:
	.secrel32	.Lc470
	.quad	.Lc387
	.quad	.Lc388-.Lc387
	.byte	4
	.long	.Lc389-.Lc387
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc390-.Lc389
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc391-.Lc390
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc726:
	.long	.Lc728-.Lc727
.Lc727:
	.secrel32	.Lc470
	.quad	.Lc392
	.quad	.Lc393-.Lc392
	.byte	4
	.long	.Lc394-.Lc392
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc728:
	.long	.Lc730-.Lc729
.Lc729:
	.secrel32	.Lc470
	.quad	.Lc395
	.quad	.Lc396-.Lc395
	.byte	4
	.long	.Lc397-.Lc395
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc730:
	.long	.Lc732-.Lc731
.Lc731:
	.secrel32	.Lc470
	.quad	.Lc398
	.quad	.Lc399-.Lc398
	.byte	4
	.long	.Lc400-.Lc398
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc732:
	.long	.Lc734-.Lc733
.Lc733:
	.secrel32	.Lc470
	.quad	.Lc401
	.quad	.Lc402-.Lc401
	.balign 4,0
.Lc734:
	.long	.Lc736-.Lc735
.Lc735:
	.secrel32	.Lc470
	.quad	.Lc403
	.quad	.Lc404-.Lc403
	.byte	4
	.long	.Lc405-.Lc403
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc736:
	.long	.Lc738-.Lc737
.Lc737:
	.secrel32	.Lc470
	.quad	.Lc406
	.quad	.Lc407-.Lc406
	.byte	4
	.long	.Lc408-.Lc406
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc738:
	.long	.Lc740-.Lc739
.Lc739:
	.secrel32	.Lc470
	.quad	.Lc409
	.quad	.Lc410-.Lc409
	.byte	4
	.long	.Lc411-.Lc409
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc412-.Lc411
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc413-.Lc412
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc740:
	.long	.Lc742-.Lc741
.Lc741:
	.secrel32	.Lc470
	.quad	.Lc414
	.quad	.Lc415-.Lc414
	.byte	4
	.long	.Lc416-.Lc414
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc417-.Lc416
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc418-.Lc417
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc742:
	.long	.Lc744-.Lc743
.Lc743:
	.secrel32	.Lc470
	.quad	.Lc419
	.quad	.Lc420-.Lc419
	.byte	4
	.long	.Lc421-.Lc419
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc422-.Lc421
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc423-.Lc422
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc744:
	.long	.Lc746-.Lc745
.Lc745:
	.secrel32	.Lc470
	.quad	.Lc424
	.quad	.Lc425-.Lc424
	.byte	4
	.long	.Lc426-.Lc424
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc427-.Lc426
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc428-.Lc427
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc746:
	.long	.Lc748-.Lc747
.Lc747:
	.secrel32	.Lc470
	.quad	.Lc429
	.quad	.Lc430-.Lc429
	.byte	4
	.long	.Lc431-.Lc429
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc748:
	.long	.Lc750-.Lc749
.Lc749:
	.secrel32	.Lc470
	.quad	.Lc432
	.quad	.Lc433-.Lc432
	.byte	4
	.long	.Lc434-.Lc432
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc750:
	.long	.Lc752-.Lc751
.Lc751:
	.secrel32	.Lc470
	.quad	.Lc435
	.quad	.Lc436-.Lc435
	.byte	4
	.long	.Lc437-.Lc435
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc752:
	.long	.Lc754-.Lc753
.Lc753:
	.secrel32	.Lc470
	.quad	.Lc438
	.quad	.Lc439-.Lc438
	.byte	4
	.long	.Lc440-.Lc438
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc754:
	.long	.Lc756-.Lc755
.Lc755:
	.secrel32	.Lc470
	.quad	.Lc441
	.quad	.Lc442-.Lc441
	.byte	4
	.long	.Lc443-.Lc441
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc756:
	.long	.Lc758-.Lc757
.Lc757:
	.secrel32	.Lc470
	.quad	.Lc444
	.quad	.Lc445-.Lc444
	.byte	4
	.long	.Lc446-.Lc444
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc758:
	.long	.Lc760-.Lc759
.Lc759:
	.secrel32	.Lc470
	.quad	.Lc447
	.quad	.Lc448-.Lc447
	.byte	4
	.long	.Lc449-.Lc447
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc760:
	.long	.Lc762-.Lc761
.Lc761:
	.secrel32	.Lc470
	.quad	.Lc450
	.quad	.Lc451-.Lc450
	.byte	4
	.long	.Lc452-.Lc450
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc453-.Lc452
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc454-.Lc453
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc762:
	.long	.Lc764-.Lc763
.Lc763:
	.secrel32	.Lc470
	.quad	.Lc455
	.quad	.Lc456-.Lc455
	.byte	4
	.long	.Lc457-.Lc455
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc764:
	.long	.Lc766-.Lc765
.Lc765:
	.secrel32	.Lc470
	.quad	.Lc458
	.quad	.Lc459-.Lc458
	.byte	4
	.long	.Lc460-.Lc458
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc766:
	.long	.Lc768-.Lc767
.Lc767:
	.secrel32	.Lc470
	.quad	.Lc461
	.quad	.Lc462-.Lc461
	.byte	4
	.long	.Lc463-.Lc461
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc768:
	.long	.Lc770-.Lc769
.Lc769:
	.secrel32	.Lc470
	.quad	.Lc464
	.quad	.Lc465-.Lc464
	.byte	4
	.long	.Lc466-.Lc464
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc770:
	.long	.Lc772-.Lc771
.Lc771:
	.secrel32	.Lc470
	.quad	.Lc467
	.quad	.Lc468-.Lc467
	.byte	4
	.long	.Lc469-.Lc467
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc772:
# End asmlist al_dwarf_frame

