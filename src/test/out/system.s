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

.section .text.n_system_$$___fpc_specific_handler$pointer$pointer$pointer$pointer$$qword,"x"
.globl	SYSTEM_$$___FPC_SPECIFIC_HANDLER$POINTER$POINTER$POINTER$POINTER$$QWORD
SYSTEM_$$___FPC_SPECIFIC_HANDLER$POINTER$POINTER$POINTER$POINTER$$QWORD:
.globl	__FPC_specific_handler
__FPC_specific_handler:
.Lc22:
.seh_proc SYSTEM_$$___FPC_SPECIFIC_HANDLER$POINTER$POINTER$POINTER$POINTER$$QWORD
	leaq	-40(%rsp),%rsp
.Lc24:
.seh_stackalloc 40
.seh_endprologue
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld1(%rip),%r8
	leaq	_$SYSTEM$_Ld2(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	xorl	%eax,%eax
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc23:

.section .text.n_system_$$___fpc_except_handler$pointer$pointer$pointer$pointer$$qword,"x"
.globl	SYSTEM_$$___FPC_EXCEPT_HANDLER$POINTER$POINTER$POINTER$POINTER$$QWORD
SYSTEM_$$___FPC_EXCEPT_HANDLER$POINTER$POINTER$POINTER$POINTER$$QWORD:
.globl	__FPC_except_handler
__FPC_except_handler:
.Lc25:
.seh_proc SYSTEM_$$___FPC_EXCEPT_HANDLER$POINTER$POINTER$POINTER$POINTER$$QWORD
	leaq	-40(%rsp),%rsp
.Lc27:
.seh_stackalloc 40
.seh_endprologue
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld1(%rip),%r8
	leaq	_$SYSTEM$_Ld3(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	xorl	%eax,%eax
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc26:

.section .text.n_system_$$___fpc_default_handler$pointer$pointer$pointer$pointer$$qword,"x"
.globl	SYSTEM_$$___FPC_DEFAULT_HANDLER$POINTER$POINTER$POINTER$POINTER$$QWORD
SYSTEM_$$___FPC_DEFAULT_HANDLER$POINTER$POINTER$POINTER$POINTER$$QWORD:
.globl	__FPC_DEFAULT_HANDLER
__FPC_DEFAULT_HANDLER:
.Lc28:
.seh_proc SYSTEM_$$___FPC_DEFAULT_HANDLER$POINTER$POINTER$POINTER$POINTER$$QWORD
	leaq	-40(%rsp),%rsp
.Lc30:
.seh_stackalloc 40
.seh_endprologue
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld1(%rip),%r8
	leaq	_$SYSTEM$_Ld4(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	xorl	%eax,%eax
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc29:

.section .text.n_fpc_initializeunits,"x"
.globl	fpc_initializeunits
fpc_initializeunits:
.globl	FPC_INITIALIZEUNITS
FPC_INITIALIZEUNITS:
.Lc31:
.seh_proc fpc_initializeunits
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc33:
.seh_stackalloc 40
.seh_endprologue
	cmpb	$0,TC_$SYSTEM_$$_IN_INITIALIZATION_CODE_EXE(%rip)
	jne	.Lj32
	movb	$1,TC_$SYSTEM_$$_IN_INITIALIZATION_CODE_EXE(%rip)
	call	SYSTEM_$$_ISCONSOLEAPP$$BOOLEAN
	testb	%al,%al
	je	.Lj34
	leaq	.Ld5(%rip),%rcx
	call	_$dll$msvcrt$printf
.Lj34:
	cmpq	$0,INITFINAL(%rip)
	jna	.Lj36
	movq	INITFINAL(%rip),%rdx
	leaq	_$SYSTEM$_Ld6(%rip),%rcx
	call	_$dll$msvcrt$printf
	movq	INITFINAL(%rip),%rax
	leaq	-1(%rax),%rbx
	cmpl	$1,%ebx
	jnae	.Lj38
	xorl	%esi,%esi
.Lj39:
	incl	%esi
	movl	%esi,%eax
	shlq	$4,%rax
	leaq	INITFINAL(%rip),%rdx
	cmpq	$0,(%rdx,%rax)
	je	.Lj43
	movl	%esi,%eax
	shlq	$4,%rax
	leaq	INITFINAL(%rip),%rdx
	movq	(%rdx,%rax),%rdx
	movq	%rsp,%rcx
	call	SYSTEM$_$fpc_initializeunits_$$_CALLPROCEDURE$TPROCEDURE
.Lj43:
	cmpl	%esi,%ebx
	jnbe	.Lj39
.Lj38:
.Lj36:
.Lj32:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc32:

.section .text.n_system$_$fpc_initializeunits_$$_callprocedure$tprocedure,"x"
SYSTEM$_$fpc_initializeunits_$$_CALLPROCEDURE$TPROCEDURE:
.Lc34:
.seh_proc SYSTEM$_$fpc_initializeunits_$$_CALLPROCEDURE$TPROCEDURE
	leaq	-40(%rsp),%rsp
.Lc36:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,32(%rsp)
	movq	%rdx,%rax
	testq	%rdx,%rdx
	je	.Lj45
	call	*%rax
.Lj45:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc35:

.section .text.n_fpc_libinitializeunits,"x"
.globl	fpc_libinitializeunits
fpc_libinitializeunits:
.globl	FPC_LIBINITIALIZEUNITS
FPC_LIBINITIALIZEUNITS:
.Lc37:
.seh_proc fpc_libinitializeunits
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc39:
.seh_stackalloc 40
.seh_endprologue
	cmpb	$0,TC_$SYSTEM_$$_IN_INITIALIZATION_CODE_DLL(%rip)
	jne	.Lj51
	movb	$1,TC_$SYSTEM_$$_IN_INITIALIZATION_CODE_DLL(%rip)
	call	SYSTEM_$$_ISCONSOLEAPP$$BOOLEAN
	testb	%al,%al
	je	.Lj53
	leaq	.Ld5(%rip),%rcx
	call	_$dll$msvcrt$printf
.Lj53:
	cmpq	$0,INITFINAL(%rip)
	jna	.Lj55
	movl	INITFINAL(%rip),%esi
	cmpl	$1,%esi
	jnae	.Lj57
	xorl	%ebx,%ebx
.Lj58:
	incl	%ebx
	movl	%ebx,%eax
	shlq	$4,%rax
	leaq	INITFINAL(%rip),%rdx
	cmpq	$0,(%rdx,%rax)
	je	.Lj62
	movl	%ebx,%eax
	shlq	$4,%rax
	leaq	INITFINAL(%rip),%rdx
	movq	(%rdx,%rax),%rdx
	movq	%rsp,%rcx
	call	SYSTEM$_$fpc_libinitializeunits_$$_CALLPROCEDURE$TPROCEDURE
.Lj62:
	cmpl	%ebx,%esi
	jnbe	.Lj58
.Lj57:
.Lj55:
.Lj51:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc38:

.section .text.n_system$_$fpc_libinitializeunits_$$_callprocedure$tprocedure,"x"
SYSTEM$_$fpc_libinitializeunits_$$_CALLPROCEDURE$TPROCEDURE:
.Lc40:
.seh_proc SYSTEM$_$fpc_libinitializeunits_$$_CALLPROCEDURE$TPROCEDURE
	leaq	-40(%rsp),%rsp
.Lc42:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,32(%rsp)
	movq	%rdx,%rax
	testq	%rdx,%rdx
	je	.Lj64
	call	*%rax
.Lj64:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc41:

.section .text.n_fpc_finalizeunits,"x"
.globl	fpc_finalizeunits
fpc_finalizeunits:
.globl	FPC_FINALIZEUNITS
FPC_FINALIZEUNITS:
.Lc43:
.seh_proc fpc_finalizeunits
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc45:
.seh_stackalloc 32
.seh_endprologue
	call	SYSTEM_$$_ISCONSOLEAPP$$BOOLEAN
	testb	%al,%al
	je	.Lj70
	leaq	_$SYSTEM$_Ld7(%rip),%rcx
	call	_$dll$msvcrt$printf
.Lj70:
	cmpq	$0,INITFINAL(%rip)
	jna	.Lj72
	movq	INITFINAL(%rip),%rdx
	leaq	_$SYSTEM$_Ld6(%rip),%rcx
	call	_$dll$msvcrt$printf
	movl	INITFINAL(%rip),%eax
	cmpl	$1,%eax
	jnae	.Lj74
	movl	%eax,%ebx
	incl	%ebx
.Lj75:
	decl	%ebx
	movl	%ebx,%eax
	shlq	$4,%rax
	leaq	INITFINAL(%rip),%rdx
	cmpq	$0,8(%rdx,%rax)
	je	.Lj79
	movl	%ebx,%eax
	shlq	$4,%rax
	leaq	INITFINAL(%rip),%rdx
	movq	8(%rdx,%rax),%rdx
	movq	%rsp,%rcx
	call	SYSTEM$_$fpc_finalizeunits_$$_CALLPROCEDURE$TPROCEDURE
.Lj79:
	cmpl	$1,%ebx
	jnbe	.Lj75
.Lj74:
.Lj72:
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc44:

.section .text.n_system$_$fpc_finalizeunits_$$_callprocedure$tprocedure,"x"
SYSTEM$_$fpc_finalizeunits_$$_CALLPROCEDURE$TPROCEDURE:
.Lc46:
.seh_proc SYSTEM$_$fpc_finalizeunits_$$_CALLPROCEDURE$TPROCEDURE
	leaq	-40(%rsp),%rsp
.Lc48:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,32(%rsp)
	movq	%rdx,%rax
	testq	%rdx,%rdx
	je	.Lj81
	call	*%rax
.Lj81:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc47:

.section .text.n_system_$$_sizebyte$$byte,"x"
SYSTEM_$$_SIZEBYTE$$BYTE:
.Lc49:
	movb	$1,%al
	movzbl	%al,%eax
	ret
.Lc50:

.section .text.n_system_$$_sizechar$$byte,"x"
SYSTEM_$$_SIZECHAR$$BYTE:
.Lc51:
	movb	$2,%al
	movzbl	%al,%eax
	ret
.Lc52:

.section .text.n_system_$$_sizeword$$byte,"x"
SYSTEM_$$_SIZEWORD$$BYTE:
.Lc53:
	movb	$4,%al
	movzbl	%al,%eax
	ret
.Lc54:

.section .text.n_system_$$_sizedword$$byte,"x"
SYSTEM_$$_SIZEDWORD$$BYTE:
.Lc55:
	movb	$8,%al
	movzbl	%al,%eax
	ret
.Lc56:

.section .text.n_system_$$_sizeqword$$byte,"x"
SYSTEM_$$_SIZEQWORD$$BYTE:
.Lc57:
	movb	$16,%al
	movzbl	%al,%eax
	ret
.Lc58:

.section .text.n_fpc_doneexception,"x"
.globl	fpc_doneexception
fpc_doneexception:
.globl	FPC_DONEEXCEPTION
FPC_DONEEXCEPTION:
.Lc59:
.seh_proc fpc_doneexception
	leaq	-40(%rsp),%rsp
.Lc61:
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
.Lc60:

.section .text.n_system_$$_fpc_emptymethod,"x"
.globl	SYSTEM_$$_FPC_EMPTYMETHOD
SYSTEM_$$_FPC_EMPTYMETHOD:
.globl	FPC_EMPTYMETHOD
FPC_EMPTYMETHOD:
.Lc62:
	ret
.Lc63:

.section .text.n_fpc_copy_proc,"x"
.globl	fpc_copy_proc
fpc_copy_proc:
.Lc64:
	movq	%rcx,%rax
	ret
.Lc65:

.section .text.n_fpc_emptychar,"x"
.globl	fpc_emptychar
fpc_emptychar:
.globl	FPC_EMPTYCHAR
FPC_EMPTYCHAR:
.Lc66:
.seh_proc fpc_emptychar
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc68:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rbx
	movl	$1,%edx
	call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
	cmpq	$0,(%rbx)
	je	.Lj101
	movq	(%rbx),%rcx
	xorl	%r8d,%r8d
	movl	$1,%edx
	call	SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR
	movq	(%rbx),%rdx
	movq	%rax,%rcx
	movl	$1,%r8d
	call	SYSTEM_$$_MOVE$formal$formal$LONGDWORD
	jmp	.Lj102
.Lj101:
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld10(%rip),%r8
	leaq	_$SYSTEM$_Ld11(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	movl	$1,%ecx
	call	_$dll$kernel32$ExitProcess
.Lj102:
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc67:

.section .text.n_fpc_addref,"x"
.globl	fpc_addref
fpc_addref:
.globl	FPC_ADDREF
FPC_ADDREF:
.Lc69:
	movq	%rcx,%rax
	ret
.Lc70:

.section .text.n_fpc_decref,"x"
.globl	fpc_decref
fpc_decref:
.globl	FPC_DECREF
FPC_DECREF:
.Lc71:
	movq	%rcx,%rax
	ret
.Lc72:

.section .text.n_fpc_ansistr_decr_ref,"x"
.globl	fpc_ansistr_decr_ref
fpc_ansistr_decr_ref:
.globl	FPC_ANSISTR_DECR_REF
FPC_ANSISTR_DECR_REF:
.Lc73:
	movq	%rcx,%rax
	ret
.Lc74:

.section .text.n_fpc_ansistr_incr_ref,"x"
.globl	fpc_ansistr_incr_ref
fpc_ansistr_incr_ref:
.globl	FPC_ANSISTR_INCR_REF
FPC_ANSISTR_INCR_REF:
.Lc75:
	movq	%rcx,%rax
	ret
.Lc76:

.section .text.n_system$_$fpc_char_to_ansistr$char$word$$ansistring_$$_fin$0000021d,"x"
SYSTEM$_$fpc_char_to_ansistr$CHAR$WORD$$ANSISTRING_$$_fin$0000021D:
.Lc77:
.seh_proc SYSTEM$_$fpc_char_to_ansistr$CHAR$WORD$$ANSISTRING_$$_fin$0000021D
	pushq	%rbp
.seh_pushreg %rbp
.Lc79:
.Lc80:
	movq	%rcx,%rbp
.Lc81:
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
.Lc78:

.section .text.n_fpc_char_to_ansistr,"x"
.globl	fpc_char_to_ansistr
fpc_char_to_ansistr:
.Lc82:
.seh_proc fpc_char_to_ansistr
	pushq	%rbp
.seh_pushreg %rbp
.Lc84:
.Lc85:
	movq	%rsp,%rbp
.Lc86:
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
.Lj119:
	nop
.Lj115:
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
.Lj117:
	nop
.Lj116:
	movq	%rbp,%rcx
	call	SYSTEM$_$fpc_char_to_ansistr$CHAR$WORD$$ANSISTRING_$$_fin$0000021D
	movq	-24(%rbp),%rbx
	movq	-16(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj115
	.rva	.Lj116
	.rva	SYSTEM$_$fpc_char_to_ansistr$CHAR$WORD$$ANSISTRING_$$_fin$0000021D

.section .text.n_fpc_char_to_ansistr,"x"
.seh_endproc
.Lc83:

.section .text.n_fpc_ansistr_unique,"x"
.globl	fpc_ansistr_unique
fpc_ansistr_unique:
.Lc87:
	movq	(%rcx),%rax
	cmpq	$0,(%rcx)
	je	.Lj120
	movq	(%rcx),%rax
.Lj120:
	ret
.Lc88:

.section .text.n_system$_$fpc_pchar_to_ansistr$pchar$word$$ansistring_$$_fin$0000021e,"x"
SYSTEM$_$fpc_pchar_to_ansistr$PCHAR$WORD$$ANSISTRING_$$_fin$0000021E:
.Lc89:
.seh_proc SYSTEM$_$fpc_pchar_to_ansistr$PCHAR$WORD$$ANSISTRING_$$_fin$0000021E
	pushq	%rbp
.seh_pushreg %rbp
.Lc91:
.Lc92:
	movq	%rcx,%rbp
.Lc93:
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
.Lc90:

.section .text.n_fpc_pchar_to_ansistr,"x"
.globl	fpc_pchar_to_ansistr
fpc_pchar_to_ansistr:
.Lc94:
.seh_proc fpc_pchar_to_ansistr
	pushq	%rbp
.seh_pushreg %rbp
.Lc96:
.Lc97:
	movq	%rsp,%rbp
.Lc98:
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
.Lj132:
	nop
.Lj128:
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
	jne	.Lj133
	leaq	FPC_EMPTYCHAR(%rip),%rcx
.Lj133:
	movq	%rsi,%rdx
	call	_$dll$ucrtbase$strcpy
	movq	%rbx,%rcx
	movq	-8(%rbp),%rdx
	call	fpc_ansistr_assign
.Lj130:
	nop
.Lj129:
	movq	%rbp,%rcx
	call	SYSTEM$_$fpc_pchar_to_ansistr$PCHAR$WORD$$ANSISTRING_$$_fin$0000021E
	movq	-24(%rbp),%rbx
	movq	-16(%rbp),%rsi
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj128
	.rva	.Lj129
	.rva	SYSTEM$_$fpc_pchar_to_ansistr$PCHAR$WORD$$ANSISTRING_$$_fin$0000021E

.section .text.n_fpc_pchar_to_ansistr,"x"
.seh_endproc
.Lc95:

.section .text.n_fpc_ansistr_assign,"x"
.globl	fpc_ansistr_assign
fpc_ansistr_assign:
.globl	FPC_ANSISTR_ASSIGN
FPC_ANSISTR_ASSIGN:
.Lc99:
.seh_proc fpc_ansistr_assign
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-48(%rsp),%rsp
.Lc101:
.seh_stackalloc 48
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,32(%rsp)
	leaq	32(%rsp),%rcx
	testq	%rcx,%rcx
	jne	.Lj136
	leaq	FPC_EMPTYCHAR(%rip),%rcx
.Lj136:
	call	_$dll$kernel32$lstrlenA
	leal	1(%eax),%ecx
	call	_$dll$ucrtbase$malloc
	movq	%rax,(%rbx)
	movq	%rbx,%rcx
	testq	%rbx,%rbx
	jne	.Lj137
	leaq	FPC_EMPTYCHAR(%rip),%rcx
.Lj137:
	leaq	32(%rsp),%rdx
	testq	%rdx,%rdx
	jne	.Lj138
	leaq	FPC_EMPTYCHAR(%rip),%rdx
.Lj138:
	call	_$dll$ucrtbase$strcpy
	nop
	leaq	48(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc100:

.section .text.n_fpc_ansistr_concat,"x"
.globl	fpc_ansistr_concat
fpc_ansistr_concat:
.Lc102:
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
.Lc104:
.seh_stackalloc 56
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rsi
	movq	%r8,%rdi
	movq	%rsi,%rcx
	testq	%rsi,%rsi
	jne	.Lj141
	leaq	FPC_EMPTYCHAR(%rip),%rcx
.Lj141:
	call	_$dll$kernel32$lstrlenA
	movl	%eax,%r12d
	movq	%rdi,%rcx
	testq	%rdi,%rdi
	jne	.Lj142
	leaq	FPC_EMPTYCHAR(%rip),%rcx
.Lj142:
	call	_$dll$kernel32$lstrlenA
	addl	%r12d,%eax
	leal	1(%eax),%ecx
	call	_$dll$ucrtbase$malloc
	movq	%rax,%rdx
	movq	%rbx,%rcx
	call	fpc_ansistr_assign
	movq	%rsi,%rdx
	testq	%rsi,%rsi
	jne	.Lj143
	leaq	FPC_EMPTYCHAR(%rip),%rdx
.Lj143:
	movq	%rsi,%rcx
	call	_$dll$ucrtbase$strcpy
	movq	%rdi,%rdx
	testq	%rdi,%rdi
	jne	.Lj144
	leaq	FPC_EMPTYCHAR(%rip),%rdx
.Lj144:
	movq	%rsi,%rcx
	call	_$dll$ucrtbase$strcat
	movq	(%rbx),%rcx
	testq	%rcx,%rcx
	jne	.Lj145
	leaq	FPC_EMPTYCHAR(%rip),%rcx
.Lj145:
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
.Lc103:

.section .text.n_fpc_ansistr_concat_multi,"x"
.globl	fpc_ansistr_concat_multi
fpc_ansistr_concat_multi:
.Lc105:
.seh_proc fpc_ansistr_concat_multi
	pushq	%rbp
.seh_pushreg %rbp
.Lc107:
.Lc108:
	movq	%rsp,%rbp
.Lc109:
.seh_endprologue
	movq	%rcx,%rax
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_endproc
.Lc106:

.section .text.n_fpc_ansistr_compare_equal,"x"
.globl	fpc_ansistr_compare_equal
fpc_ansistr_compare_equal:
.globl	FPC_ANSISTR_COMPARE_EQUAL
FPC_ANSISTR_COMPARE_EQUAL:
.Lc110:
.seh_proc fpc_ansistr_compare_equal
	leaq	-40(%rsp),%rsp
.Lc112:
.seh_stackalloc 40
.seh_endprologue
	call	_$dll$msvcrt$strcmp
	testl	%eax,%eax
	jne	.Lj151
	movl	$1,%eax
	jmp	.Lj152
.Lj151:
	xorl	%eax,%eax
.Lj152:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc111:

.section .text.n_system$_$tvmt_$__$$_getvparent$$pvmt,"x"
.globl	SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT
SYSTEM$_$TVMT_$__$$_GETVPARENT$$PVMT:
.Lc113:
	xorl	%eax,%eax
	ret
.Lc114:

.section .text.n_fpc_get_input,"x"
.globl	fpc_get_input
fpc_get_input:
.Lc115:
	xorl	%eax,%eax
	ret
.Lc116:

.section .text.n_fpc_readln_end,"x"
.globl	fpc_readln_end
fpc_readln_end:
.globl	FPC_READLN_END
FPC_READLN_END:
.Lc117:
	movq	%rcx,%rax
	ret
.Lc118:

.section .text.n_fpc_iocheck,"x"
.globl	fpc_iocheck
fpc_iocheck:
.Lc119:
	ret
.Lc120:

.section .text.n_fpc_help_constructor,"x"
.globl	fpc_help_constructor
fpc_help_constructor:
.Lc121:
	xorl	%eax,%eax
	ret
.Lc122:

.section .text.n_fpc_help_destructor,"x"
.globl	fpc_help_destructor
fpc_help_destructor:
.Lc123:
	movq	%rcx,%rax
	ret
.Lc124:

.section .text.n_fpc_help_fail,"x"
.globl	fpc_help_fail
fpc_help_fail:
.Lc125:
	movq	%rcx,%rax
	ret
.Lc126:

.section .text.n_fpc_reraise,"x"
.globl	fpc_reraise
fpc_reraise:
.Lc127:
	ret
.Lc128:

.section .text.n_fpc_finalize,"x"
.globl	fpc_finalize
fpc_finalize:
.Lc129:
	movq	%rcx,%rax
	ret
.Lc130:

.section .text.n_system_$$_move$formal$formal$longdword,"x"
.globl	SYSTEM_$$_MOVE$formal$formal$LONGDWORD
SYSTEM_$$_MOVE$formal$formal$LONGDWORD:
.globl	FPC_move
FPC_move:
.Lc131:
.seh_proc SYSTEM_$$_MOVE$formal$formal$LONGDWORD
	leaq	-40(%rsp),%rsp
.Lc133:
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
.Lc132:

.section .text.n_system_$$_showmessage$pchar,"x"
.globl	SYSTEM_$$_SHOWMESSAGE$PCHAR
SYSTEM_$$_SHOWMESSAGE$PCHAR:
.Lc134:
.seh_proc SYSTEM_$$_SHOWMESSAGE$PCHAR
	leaq	-40(%rsp),%rsp
.Lc136:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rdx
	movl	$64,%r9d
	leaq	_$SYSTEM$_Ld12(%rip),%r8
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc135:

.section .text.n_system_$$_showwarn$pchar,"x"
.globl	SYSTEM_$$_SHOWWARN$PCHAR
SYSTEM_$$_SHOWWARN$PCHAR:
.Lc137:
.seh_proc SYSTEM_$$_SHOWWARN$PCHAR
	leaq	-40(%rsp),%rsp
.Lc139:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rdx
	movl	$48,%r9d
	leaq	_$SYSTEM$_Ld13(%rip),%r8
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc138:

.section .text.n_system_$$_showerror$pchar,"x"
.globl	SYSTEM_$$_SHOWERROR$PCHAR
SYSTEM_$$_SHOWERROR$PCHAR:
.Lc140:
.seh_proc SYSTEM_$$_SHOWERROR$PCHAR
	leaq	-40(%rsp),%rsp
.Lc142:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rdx
	movl	$48,%r9d
	leaq	_$SYSTEM$_Ld10(%rip),%r8
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc141:

.section .text.n_system_$$_showinfo$pchar,"x"
.globl	SYSTEM_$$_SHOWINFO$PCHAR
SYSTEM_$$_SHOWINFO$PCHAR:
.Lc143:
.seh_proc SYSTEM_$$_SHOWINFO$PCHAR
	leaq	-40(%rsp),%rsp
.Lc145:
.seh_stackalloc 40
.seh_endprologue
	call	SYSTEM_$$_SHOWMESSAGE$PCHAR
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc144:

.section .text.n_system_$$_fillchar$formal$qword$char,"x"
.globl	SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR
SYSTEM_$$_FILLCHAR$formal$QWORD$CHAR:
.Lc146:
	leaq	-1(%rdx),%rax
	movq	$-1,%rdx
.Lj183:
	incq	%rdx
	movb	%r8b,(%rcx)
	incq	%rcx
	cmpq	%rdx,%rax
	jnbe	.Lj183
	ret
.Lc147:

.section .text.n_system_$$_freemem$pointer,"x"
.globl	SYSTEM_$$_FREEMEM$POINTER
SYSTEM_$$_FREEMEM$POINTER:
.Lc148:
.seh_proc SYSTEM_$$_FREEMEM$POINTER
	leaq	-40(%rsp),%rsp
.Lc150:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
	cmpq	$0,(%rax)
	je	.Lj189
	movq	(%rax),%rcx
	movl	$32768,%r8d
	xorl	%edx,%edx
	call	_$dll$kernel32$VirtualAlloc
.Lj189:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc149:

.section .text.n_system_$$_getmem$pointer$longdword,"x"
.globl	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
SYSTEM_$$_GETMEM$POINTER$LONGDWORD:
.Lc151:
.seh_proc SYSTEM_$$_GETMEM$POINTER$LONGDWORD
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc153:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rbx
	movl	$4,%r9d
	movl	$12288,%r8d
	xorl	%ecx,%ecx
	call	_$dll$kernel32$VirtualAlloc
	movq	%rax,(%rbx)
	testq	%rax,%rax
	jne	.Lj193
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld10(%rip),%r8
	leaq	_$SYSTEM$_Ld14(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	movl	$1,%ecx
	call	_$dll$kernel32$ExitProcess
.Lj193:
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc152:

.section .text.n_system_$$_lockfile$pointer$$boolean,"x"
.globl	SYSTEM_$$_LOCKFILE$POINTER$$BOOLEAN
SYSTEM_$$_LOCKFILE$POINTER$$BOOLEAN:
.Lc154:
.seh_proc SYSTEM_$$_LOCKFILE$POINTER$$BOOLEAN
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-48(%rsp),%rsp
.Lc156:
.seh_stackalloc 48
.seh_endprologue
	xorb	%bl,%bl
	movl	$0,32(%rsp)
	xorl	%r8d,%r8d
	xorl	%edx,%edx
	call	_$dll$kernel32$LockFile
	testb	%al,%al
	jne	.Lj197
	leaq	_$SYSTEM$_Ld15(%rip),%rcx
	call	SYSTEM_$$_SHOWERROR$PCHAR
	jmp	.Lj194
.Lj197:
	movb	$1,%bl
.Lj194:
	movb	%bl,%al
	nop
	leaq	48(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc155:

.section .text.n_system_$$_writefile$longword$pchar$$qword,"x"
.globl	SYSTEM_$$_WRITEFILE$LONGWORD$PCHAR$$QWORD
SYSTEM_$$_WRITEFILE$LONGWORD$PCHAR$$QWORD:
.Lc157:
.seh_proc SYSTEM_$$_WRITEFILE$LONGWORD$PCHAR$$QWORD
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc159:
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
.Lc158:

.section .text.n_system_$$_writefile$longword$pointer$$qword,"x"
.globl	SYSTEM_$$_WRITEFILE$LONGWORD$POINTER$$QWORD
SYSTEM_$$_WRITEFILE$LONGWORD$POINTER$$QWORD:
.Lc160:
.seh_proc SYSTEM_$$_WRITEFILE$LONGWORD$POINTER$$QWORD
	leaq	-56(%rsp),%rsp
.Lc162:
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
.Lc161:

.section .text.n_system_$$_filecreate$pchar$boolean$$pointer,"x"
.globl	SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER
SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER:
.Lc163:
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
.Lc165:
.seh_stackalloc 64
.seh_endprologue
	movq	%rcx,%rbx
	movb	%dl,%sil
	leaq	_$SYSTEM$_Ld16(%rip),%rcx
	call	SYSTEM_$$_SHOWINFO$PCHAR
	movq	%rbx,%rcx
	call	_$dll$shlwapi$PathFileExistsA
	movq	%rax,%rdi
	cmpl	$1,%edi
	jne	.Lj205
	testb	%sil,%sil
	jne	.Lj207
	xorl	%r12d,%r12d
	leaq	56(%rsp),%rcx
	movl	$255,%edx
	call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
	movq	56(%rsp),%rcx
	leaq	_$SYSTEM$_Ld17(%rip),%rdx
	call	_$dll$ucrtbase$strcpy
	movq	%rbx,%rdx
	movq	56(%rsp),%rcx
	call	_$dll$ucrtbase$strcat
	movq	56(%rsp),%rcx
	leaq	_$SYSTEM$_Ld18(%rip),%rdx
	call	_$dll$ucrtbase$strcat
	movq	56(%rsp),%rcx
	leaq	_$SYSTEM$_Ld19(%rip),%rdx
	call	_$dll$ucrtbase$strcat
	movq	56(%rsp),%rdx
	movl	$4,%r9d
	leaq	_$SYSTEM$_Ld12(%rip),%r8
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	movl	%eax,%edi
	cmpl	$6,%edi
	jne	.Lj209
	movq	%rbx,%rcx
	call	SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN
	movq	%rbx,%rcx
	movb	$1,%dl
	call	SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER
	movq	%rax,%r13
	call	_$dll$kernel32$GetLastError
	movl	%eax,%r12d
.Lj209:
	leaq	56(%rsp),%rcx
	call	SYSTEM_$$_FREEMEM$POINTER
	testl	%r12d,%r12d
	je	.Lj217
	leaq	_$SYSTEM$_Ld20(%rip),%rcx
	call	SYSTEM_$$_SHOWERROR$PCHAR
	jmp	.Lj202
	jmp	.Lj217
.Lj207:
	testb	%sil,%sil
	je	.Lj217
	movq	%rbx,%rcx
	call	_$dll$kernel32$DeleteFileA
	movb	%al,%dl
	testb	%dil,%dil
	jne	.Lj216
	leaq	_$SYSTEM$_Ld21(%rip),%rcx
	call	SYSTEM_$$_SHOWMESSAGE$PCHAR
.Lj216:
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
	jmp	.Lj202
	jmp	.Lj217
.Lj205:
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
	je	.Lj219
	leaq	_$SYSTEM$_Ld20(%rip),%rcx
	call	SYSTEM_$$_SHOWERROR$PCHAR
	jmp	.Lj202
.Lj219:
.Lj217:
	movl	%r13d,%eax
	cmpl	$4294967295,%eax
	jne	.Lj221
	leaq	56(%rsp),%rcx
	movl	$255,%edx
	call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
	movq	56(%rsp),%rcx
	leaq	_$SYSTEM$_Ld17(%rip),%rdx
	call	_$dll$ucrtbase$strcpy
	movq	%rbx,%rdx
	movq	56(%rsp),%rcx
	call	_$dll$ucrtbase$strcat
	movq	56(%rsp),%rcx
	leaq	_$SYSTEM$_Ld22(%rip),%rdx
	call	_$dll$ucrtbase$strcat
	movq	56(%rsp),%rcx
	call	SYSTEM_$$_SHOWERROR$PCHAR
	leaq	56(%rsp),%rcx
	call	SYSTEM_$$_FREEMEM$POINTER
	xorl	%esi,%esi
	jmp	.Lj202
.Lj221:
	movq	%r13,%rsi
.Lj202:
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
.Lc164:

.section .text.n_system_$$_filecreate$rawbytestring$boolean$$pointer,"x"
.globl	SYSTEM_$$_FILECREATE$RAWBYTESTRING$BOOLEAN$$POINTER
SYSTEM_$$_FILECREATE$RAWBYTESTRING$BOOLEAN$$POINTER:
.Lc166:
.seh_proc SYSTEM_$$_FILECREATE$RAWBYTESTRING$BOOLEAN$$POINTER
	leaq	-40(%rsp),%rsp
.Lc168:
.seh_stackalloc 40
.seh_endprologue
	testq	%rcx,%rcx
	jne	.Lj224
	leaq	FPC_EMPTYCHAR(%rip),%rcx
.Lj224:
	call	SYSTEM_$$_FILECREATE$PCHAR$BOOLEAN$$POINTER
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc167:

.section .text.n_system_$$_filedelete$pchar$$boolean,"x"
.globl	SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN
SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN:
.Lc169:
.seh_proc SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN
	leaq	-40(%rsp),%rsp
.Lc171:
.seh_stackalloc 40
.seh_endprologue
	call	_$dll$kernel32$DeleteFileA
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc170:

.section .text.n_system_$$_filedelete$rawbytestring$$boolean,"x"
.globl	SYSTEM_$$_FILEDELETE$RAWBYTESTRING$$BOOLEAN
SYSTEM_$$_FILEDELETE$RAWBYTESTRING$$BOOLEAN:
.Lc172:
.seh_proc SYSTEM_$$_FILEDELETE$RAWBYTESTRING$$BOOLEAN
	leaq	-40(%rsp),%rsp
.Lc174:
.seh_stackalloc 40
.seh_endprologue
	testq	%rcx,%rcx
	jne	.Lj229
	leaq	FPC_EMPTYCHAR(%rip),%rcx
.Lj229:
	call	SYSTEM_$$_FILEDELETE$PCHAR$$BOOLEAN
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc173:

.section .text.n_system_$$_fileseek$longword$longdword$longdword$$longdword,"x"
.globl	SYSTEM_$$_FILESEEK$LONGWORD$LONGDWORD$LONGDWORD$$LONGDWORD
SYSTEM_$$_FILESEEK$LONGWORD$LONGDWORD$LONGDWORD$$LONGDWORD:
.Lc175:
.seh_proc SYSTEM_$$_FILESEEK$LONGWORD$LONGDWORD$LONGDWORD$$LONGDWORD
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc177:
.seh_stackalloc 32
.seh_endprologue
	movl	%r8d,%r9d
	xorq	%r8,%r8
	call	_$dll$kernel32$SetFilePointer
	movl	%eax,%ebx
	call	_$dll$kernel32$GetLastError
	cmpl	$4294967295,%ebx
	jne	.Lj233
	testl	%eax,%eax
	je	.Lj233
	leaq	_$SYSTEM$_Ld23(%rip),%rcx
	call	SYSTEM_$$_SHOWERROR$PCHAR
	movl	$4294967295,%eax
	jmp	.Lj230
.Lj233:
	movl	%ebx,%eax
.Lj230:
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc176:

.section .text.n_system_$$_fileseek$pointer$longdword$longdword$$longdword,"x"
.globl	SYSTEM_$$_FILESEEK$POINTER$LONGDWORD$LONGDWORD$$LONGDWORD
SYSTEM_$$_FILESEEK$POINTER$LONGDWORD$LONGDWORD$$LONGDWORD:
.Lc178:
.seh_proc SYSTEM_$$_FILESEEK$POINTER$LONGDWORD$LONGDWORD$$LONGDWORD
	leaq	-40(%rsp),%rsp
.Lc180:
.seh_stackalloc 40
.seh_endprologue
	call	SYSTEM_$$_FILESEEK$LONGWORD$LONGDWORD$LONGDWORD$$LONGDWORD
	movl	%edx,%eax
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc179:

.section .text.n_system$_$tobject_$__$$_create$$tobject,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT:
.Lc181:
.seh_proc SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
	pushq	%rbp
.seh_pushreg %rbp
.Lc183:
.Lc184:
	movq	%rsp,%rbp
.Lc185:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
	movq	%rcx,-16(%rbp)
	movq	%rdx,-8(%rbp)
	cmpq	$1,%rdx
	jne	.Lj240
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rax,%rcx
	call	*128(%rdx)
	movq	%rax,-16(%rbp)
.Lj240:
	cmpq	$0,-16(%rbp)
	je	.Lj237
.Lj248:
	nop
.Lj247:
	movq	$-1,-24(%rbp)
	movq	-16(%rbp),%rdx
	leaq	VMT_$SYSTEM_$$_TOBJECT(%rip),%rcx
	leaq	VMT_$SYSTEM_$$_TOBJECT(%rip),%rax
	call	*120(%rax)
	movq	$1,-24(%rbp)
	cmpq	$0,-16(%rbp)
	je	.Lj245
	cmpq	$0,-8(%rbp)
	je	.Lj245
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*168(%rax)
	jmp	.Lj245
.Lj244:
	cmpq	$0,-8(%rbp)
	je	.Lj254
	movq	-24(%rbp),%rdx
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*96(%rax)
.Lj254:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj255:
	nop
.Lj245:
.Lj237:
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj247
	.rva	.Lj244
	.rva	.Lj245

.section .text.n_system$_$tobject_$__$$_create$$tobject,"x"
.seh_endproc
.Lc182:

.section .text.n_system$_$tobject_$__$$_destroy,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_DESTROY
SYSTEM$_$TOBJECT_$__$$_DESTROY:
.Lc186:
.seh_proc SYSTEM$_$TOBJECT_$__$$_DESTROY
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc188:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rsi
	testq	%rsi,%rsi
	jng	.Lj259
	movq	%rbx,%rcx
	movq	(%rbx),%rax
	call	*176(%rax)
.Lj259:
	movq	(%rbx),%rcx
	movq	(%rbx),%rax
	call	*136(%rax)
	testq	%rbx,%rbx
	je	.Lj261
	testq	%rsi,%rsi
	je	.Lj261
	movq	(%rbx),%rcx
	movq	(%rbx),%rax
	call	*136(%rax)
.Lj261:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc187:

.section .text.n_system$_$tobject_$__$$_afterconstruction,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION
SYSTEM$_$TOBJECT_$__$$_AFTERCONSTRUCTION:
.Lc189:
	movq	%rcx,%rax
	ret
.Lc190:

.section .text.n_system$_$tobject_$__$$_beforedestruction,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION
SYSTEM$_$TOBJECT_$__$$_BEFOREDESTRUCTION:
.Lc191:
	movq	%rcx,%rax
	ret
.Lc192:

.section .text.n_system$_$tobject_$__$$_classname$$pchar,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$PCHAR
SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$PCHAR:
.Lc193:
	leaq	_$SYSTEM$_Ld24(%rip),%rax
	ret
.Lc194:

.section .text.n_system$_$tobject_$__$$_getinstance$$tobject,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_GETINSTANCE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_GETINSTANCE$$TOBJECT:
.Lc195:
.seh_proc SYSTEM$_$TOBJECT_$__$$_GETINSTANCE$$TOBJECT
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc197:
.seh_stackalloc 32
.seh_endprologue
	xorl	%ebx,%ebx
	cmpq	$0,U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE(%rip)
	jne	.Lj272
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld10(%rip),%r8
	leaq	_$SYSTEM$_Ld25(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	jmp	.Lj269
.Lj272:
	movq	U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE(%rip),%rbx
.Lj269:
	movq	%rbx,%rax
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc196:

.section .text.n_system$_$tobject_$__$$_classparent$$tobject,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT:
.Lc198:
	xorl	%eax,%eax
	ret
.Lc199:

.section .text.n_system$_$tobject_$__$$_free,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_FREE
SYSTEM$_$TOBJECT_$__$$_FREE:
.Lc200:
.seh_proc SYSTEM$_$TOBJECT_$__$$_FREE
	leaq	-40(%rsp),%rsp
.Lc202:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
	testq	%rcx,%rcx
	je	.Lj278
	movq	(%rax),%rcx
	movq	(%rax),%rax
	call	*136(%rax)
.Lj278:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc201:

.section .text.n_system$_$tobject_$__$$_newinstance$$tobject,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT:
.Lc203:
.seh_proc SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
	leaq	-40(%rsp),%rsp
.Lc205:
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
.Lc204:

.section .text.n_system$_$tobject_$__$$_initinstance$pointer,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER:
.Lc206:
	movq	%rcx,(%rdx)
	ret
.Lc207:

.section .text.n_system$_$tobject_$__$$_freeinstance,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE:
.Lc208:
.seh_proc SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	leaq	-40(%rsp),%rsp
.Lc210:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,32(%rsp)
	xorl	%eax,%eax
	leaq	_$SYSTEM$_Ld26(%rip),%r8
	leaq	_$SYSTEM$_Ld27(%rip),%rdx
	xorl	%ecx,%ecx
	movl	%eax,%r9d
	call	_$dll$user32$MessageBoxA
	leaq	U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE(%rip),%rcx
	call	SYSTEM_$$_FREEMEM$POINTER
	cmpq	$0,32(%rsp)
	je	.Lj286
	leaq	32(%rsp),%rcx
	call	SYSTEM_$$_FREEMEM$POINTER
.Lj286:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc209:

.section .text.n_system_$$_safecallexception$pointer$pointer$$shortdword,"x"
SYSTEM_$$_SAFECALLEXCEPTION$POINTER$POINTER$$SHORTDWORD:
.Lc211:
.seh_proc SYSTEM_$$_SAFECALLEXCEPTION$POINTER$POINTER$$SHORTDWORD
	leaq	-40(%rsp),%rsp
.Lc213:
.seh_stackalloc 40
.seh_endprologue
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld26(%rip),%r8
	leaq	_$SYSTEM$_Ld28(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	movl	%edx,%eax
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc212:

.section .text.n_system$_$tobject_$__$$_safecallexception$tobject$pointer$$shortdword,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD:
.Lc214:
.seh_proc SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	leaq	-40(%rsp),%rsp
.Lc216:
.seh_stackalloc 40
.seh_endprologue
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld29(%rip),%r8
	leaq	_$SYSTEM$_Ld30(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	xorl	%eax,%eax
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc215:

.section .text.n_system$_$tobject_$__$$_defaulthandler$formal,"x"
.globl	SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal
SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal:
.Lc217:
.seh_proc SYSTEM$_$TOBJECT_$__$$_DEFAULTHANDLER$formal
	leaq	-40(%rsp),%rsp
.Lc219:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld1(%rip),%r8
	leaq	_$SYSTEM$_Ld31(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc218:

.section .text.n_system$_$tlist_$__$$_create$$tlist,"x"
.globl	SYSTEM$_$TLIST_$__$$_CREATE$$TLIST
SYSTEM$_$TLIST_$__$$_CREATE$$TLIST:
.Lc220:
.seh_proc SYSTEM$_$TLIST_$__$$_CREATE$$TLIST
	pushq	%rbp
.seh_pushreg %rbp
.Lc222:
.Lc223:
	movq	%rsp,%rbp
.Lc224:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
	movq	%rcx,-16(%rbp)
	movq	%rdx,-8(%rbp)
	cmpq	$1,%rdx
	jne	.Lj296
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rax,%rcx
	call	*128(%rdx)
	movq	%rax,-16(%rbp)
.Lj296:
	cmpq	$0,-16(%rbp)
	je	.Lj293
.Lj304:
	nop
.Lj303:
	movq	$-1,-24(%rbp)
	movq	-16(%rbp),%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
	movq	$1,-24(%rbp)
	cmpq	$0,-16(%rbp)
	je	.Lj301
	cmpq	$0,-8(%rbp)
	je	.Lj301
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*168(%rax)
	jmp	.Lj301
.Lj300:
	cmpq	$0,-8(%rbp)
	je	.Lj310
	movq	-24(%rbp),%rdx
	movq	-16(%rbp),%rcx
	call	SYSTEM$_$TLIST_$__$$_DESTROY
.Lj310:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj311:
	nop
.Lj301:
.Lj293:
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj303
	.rva	.Lj300
	.rva	.Lj301

.section .text.n_system$_$tlist_$__$$_create$$tlist,"x"
.seh_endproc
.Lc221:

.section .text.n_system$_$tlist_$__$$_destroy,"x"
.globl	SYSTEM$_$TLIST_$__$$_DESTROY
SYSTEM$_$TLIST_$__$$_DESTROY:
.Lc225:
.seh_proc SYSTEM$_$TLIST_$__$$_DESTROY
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc227:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rsi
	testq	%rsi,%rsi
	jng	.Lj315
	movq	%rbx,%rcx
	movq	(%rbx),%rax
	call	*176(%rax)
.Lj315:
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_DESTROY
	testq	%rbx,%rbx
	je	.Lj317
	testq	%rsi,%rsi
	je	.Lj317
	movq	(%rbx),%rcx
	movq	(%rbx),%rax
	call	*136(%rax)
.Lj317:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc226:

.section .text.n_fpc_raiseexception,"x"
.globl	fpc_raiseexception
fpc_raiseexception:
.Lc228:
.seh_proc fpc_raiseexception
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-48(%rsp),%rsp
.Lc230:
.seh_stackalloc 48
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rsi
	movq	%r8,%rdi
	testq	%r8,%r8
	jne	.Lj322
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld32(%rip),%r8
	leaq	_$SYSTEM$_Ld33(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
.Lj322:
	testq	%rsi,%rsi
	jne	.Lj324
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld34(%rip),%r8
	leaq	_$SYSTEM$_Ld35(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
.Lj324:
	testq	%rbx,%rbx
	jne	.Lj326
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
.Lj326:
	nop
	leaq	48(%rsp),%rsp
	popq	%rsi
	popq	%rdi
	popq	%rbx
	ret
.seh_endproc
.Lc229:

.section .text.n_system$_$exception_$__$$_classname$$pchar,"x"
.globl	SYSTEM$_$EXCEPTION_$__$$_CLASSNAME$$PCHAR
SYSTEM$_$EXCEPTION_$__$$_CLASSNAME$$PCHAR:
.Lc231:
	leaq	_$SYSTEM$_Ld39(%rip),%rax
	ret
.Lc232:

.section .text.n_system$_$exception_$__$$_create$pchar$pointer$pointer$$exception,"x"
.globl	SYSTEM$_$EXCEPTION_$__$$_CREATE$PCHAR$POINTER$POINTER$$EXCEPTION
SYSTEM$_$EXCEPTION_$__$$_CREATE$PCHAR$POINTER$POINTER$$EXCEPTION:
.Lc233:
.seh_proc SYSTEM$_$EXCEPTION_$__$$_CREATE$PCHAR$POINTER$POINTER$$EXCEPTION
	pushq	%rbp
.seh_pushreg %rbp
.Lc235:
.Lc236:
	movq	%rsp,%rbp
.Lc237:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
.seh_endprologue
	movq	%rcx,-32(%rbp)
	movq	%rdx,-24(%rbp)
	movq	%r8,-8(%rbp)
	movq	%r9,-16(%rbp)
	cmpq	$1,-24(%rbp)
	jne	.Lj332
	movq	-32(%rbp),%rax
	movq	-32(%rbp),%rdx
	movq	%rax,%rcx
	call	*128(%rdx)
	movq	%rax,-32(%rbp)
.Lj332:
	cmpq	$0,-32(%rbp)
	je	.Lj329
.Lj340:
	nop
.Lj339:
	movq	$-1,-40(%rbp)
	leaq	_$SYSTEM$_Ld40(%rip),%rcx
	call	_$dll$msvcrt$printf
	movq	-32(%rbp),%rax
	movq	-8(%rbp),%rdx
	movq	%rdx,8(%rax)
	movq	$1,-40(%rbp)
	cmpq	$0,-32(%rbp)
	je	.Lj337
	cmpq	$0,-24(%rbp)
	je	.Lj337
	movq	-32(%rbp),%rcx
	movq	-32(%rbp),%rax
	movq	(%rax),%rax
	call	*168(%rax)
	jmp	.Lj337
.Lj336:
	cmpq	$0,-24(%rbp)
	je	.Lj346
	movq	-40(%rbp),%rdx
	movq	-32(%rbp),%rcx
	movq	-32(%rbp),%rax
	movq	(%rax),%rax
	call	*96(%rax)
.Lj346:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj347:
	nop
.Lj337:
.Lj329:
	movq	-32(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj339
	.rva	.Lj336
	.rva	.Lj337

.section .text.n_system$_$exception_$__$$_create$pchar$pointer$pointer$$exception,"x"
.seh_endproc
.Lc234:

.section .text.n_system_$$_stringlength$ansistring$$longdword,"x"
SYSTEM_$$_STRINGLENGTH$ANSISTRING$$LONGDWORD:
.Lc238:
	xorl	%eax,%eax
	jmp	.Lj351
.Lj350:
	incl	%eax
.Lj351:
	movl	%eax,%edx
	incq	%rdx
	cmpb	$0,-1(%rcx,%rdx,1)
	jne	.Lj350
	ret
.Lc239:

.section .text.n_system_$$_initconsole,"x"
.globl	SYSTEM_$$_INITCONSOLE
SYSTEM_$$_INITCONSOLE:
.Lc240:
.seh_proc SYSTEM_$$_INITCONSOLE
	leaq	-40(%rsp),%rsp
.Lc242:
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
.Lc241:

.section .text.n_system_$$_doneconsole,"x"
.globl	SYSTEM_$$_DONECONSOLE
SYSTEM_$$_DONECONSOLE:
.Lc243:
.seh_proc SYSTEM_$$_DONECONSOLE
	leaq	-40(%rsp),%rsp
.Lc245:
.seh_stackalloc 40
.seh_endprologue
	cmpq	$0,TC_$SYSTEM_$$_DOS(%rip)
	je	.Lj358
	movq	TC_$SYSTEM_$$_DOS(%rip),%rax
	movq	TC_$SYSTEM_$$_DOS(%rip),%rdx
	movq	(%rdx),%rdx
	movq	%rax,%rcx
	call	*184(%rdx)
.Lj358:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc244:

.section .text.n_system$_$tdoscmd_$__$$_create$$tdoscmd,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_CREATE$$TDOSCMD
SYSTEM$_$TDOSCMD_$__$$_CREATE$$TDOSCMD:
.Lc246:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_CREATE$$TDOSCMD
	pushq	%rbp
.seh_pushreg %rbp
.Lc248:
.Lc249:
	movq	%rsp,%rbp
.Lc250:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
	movq	%rcx,-16(%rbp)
	movq	%rdx,-8(%rbp)
	cmpq	$1,%rdx
	jne	.Lj362
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rax,%rcx
	call	*128(%rdx)
	movq	%rax,-16(%rbp)
.Lj362:
	cmpq	$0,-16(%rbp)
	je	.Lj359
.Lj370:
	nop
.Lj369:
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
	leaq	.Ld41(%rip),%rdx
	call	fpc_ansistr_assign
	movl	$65001,%ecx
	call	_$dll$kernel32$SetConsoleOutputCP
	movl	$65001,%ecx
	call	_$dll$kernel32$SetConsoleCP
	movq	-16(%rbp),%rcx
	leaq	_$SYSTEM$_Ld42(%rip),%rdx
	call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
	movq	$1,-24(%rbp)
	cmpq	$0,-16(%rbp)
	je	.Lj367
	cmpq	$0,-8(%rbp)
	je	.Lj367
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*168(%rax)
	jmp	.Lj367
.Lj366:
	cmpq	$0,-8(%rbp)
	je	.Lj376
	movq	-24(%rbp),%rdx
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*96(%rax)
.Lj376:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj377:
	nop
.Lj367:
.Lj359:
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj369
	.rva	.Lj366
	.rva	.Lj367

.section .text.n_system$_$tdoscmd_$__$$_create$$tdoscmd,"x"
.seh_endproc
.Lc247:

.section .text.n_system$_$tdoscmd_$__$$_destroy,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_DESTROY
SYSTEM$_$TDOSCMD_$__$$_DESTROY:
.Lc251:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_DESTROY
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc253:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rsi
	testq	%rsi,%rsi
	jng	.Lj381
	movq	%rbx,%rcx
	movq	(%rbx),%rax
	call	*176(%rax)
.Lj381:
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_DESTROY
	testq	%rbx,%rbx
	je	.Lj383
	testq	%rsi,%rsi
	je	.Lj383
	movq	(%rbx),%rcx
	movq	(%rbx),%rax
	call	*136(%rax)
.Lj383:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc252:

.section .text.n_system$_$tdoscmd_$__$$_free,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_FREE
SYSTEM$_$TDOSCMD_$__$$_FREE:
.Lc254:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_FREE
	leaq	-40(%rsp),%rsp
.Lc256:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
	testq	%rcx,%rcx
	je	.Lj388
	movq	%rax,%rcx
	movl	$1,%edx
	movq	(%rax),%rax
	call	*96(%rax)
.Lj388:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc255:

.section .text.n_system$_$tdoscmd_$__$$_cls,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_CLS
SYSTEM$_$TDOSCMD_$__$$_CLS:
.Lc257:
	movq	%rcx,%rax
	ret
.Lc258:

.section .text.n_system$_$tdoscmd_$__$$_clrscr,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_CLRSCR
SYSTEM$_$TDOSCMD_$__$$_CLRSCR:
.Lc259:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_CLRSCR
	leaq	-40(%rsp),%rsp
.Lc261:
.seh_stackalloc 40
.seh_endprologue
	call	SYSTEM$_$TDOSCMD_$__$$_CLS
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc260:

.section .text.n_system$_$tdoscmd_$__$$_clearscreen,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_CLEARSCREEN
SYSTEM$_$TDOSCMD_$__$$_CLEARSCREEN:
.Lc262:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_CLEARSCREEN
	leaq	-40(%rsp),%rsp
.Lc264:
.seh_stackalloc 40
.seh_endprologue
	call	SYSTEM$_$TDOSCMD_$__$$_CLS
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc263:

.section .text.n_system$_$tdoscmd_$__$$_messagebox$pchar$pchar$$longdword,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_MESSAGEBOX$PCHAR$PCHAR$$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_MESSAGEBOX$PCHAR$PCHAR$$LONGDWORD:
.Lc265:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_MESSAGEBOX$PCHAR$PCHAR$$LONGDWORD
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc267:
.seh_stackalloc 32
.seh_endprologue
	movq	%r8,%rbx
	leaq	_$SYSTEM$_Ld43(%rip),%rcx
	call	_$dll$msvcrt$printf
	movq	%rbx,%rdx
	leaq	_$SYSTEM$_Ld44(%rip),%rcx
	call	_$dll$msvcrt$printf
	xorl	%eax,%eax
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc266:

.section .text.n_system$_$tdoscmd_$__$$_write$pchar,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_WRITE$PCHAR
SYSTEM$_$TDOSCMD_$__$$_WRITE$PCHAR:
.Lc268:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_WRITE$PCHAR
	leaq	-40(%rsp),%rsp
.Lc270:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
	leaq	_$SYSTEM$_Ld45(%rip),%rcx
	call	_$dll$msvcrt$printf
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc269:

.section .text.n_system$_$tdoscmd_$__$$_writeln$pchar,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR:
.Lc271:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
	leaq	-40(%rsp),%rsp
.Lc273:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
	leaq	_$SYSTEM$_Ld46(%rip),%rcx
	call	_$dll$msvcrt$printf
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc272:

.section .text.n_system$_$tdoscmd_$__$$_readln$pchar$pchar,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_READLN$PCHAR$PCHAR
SYSTEM$_$TDOSCMD_$__$$_READLN$PCHAR$PCHAR:
.Lc274:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_READLN$PCHAR$PCHAR
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc276:
.seh_stackalloc 32
.seh_endprologue
	movq	%rcx,%rax
	movq	%rdx,%rbx
	movq	TC_$SYSTEM_$$_DOS(%rip),%rcx
	leaq	_$SYSTEM$_Ld47(%rip),%rdx
	call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
	movq	%rbx,%rdx
	leaq	_$SYSTEM$_Ld45(%rip),%rcx
	call	_$dll$msvcrt$scanf
	nop
	leaq	32(%rsp),%rsp
	popq	%rbx
	ret
.seh_endproc
.Lc275:

.section .text.n_system$_$tdoscmd_$__$$_readln$pchar,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_READLN$PCHAR
SYSTEM$_$TDOSCMD_$__$$_READLN$PCHAR:
.Lc277:
	movq	%rcx,%rax
	ret
.Lc278:

.section .text.n_system$_$tdoscmd_$_read$pchar$pchar_$$_fin$00000220,"x"
SYSTEM$_$TDOSCMD_$_READ$PCHAR$PCHAR_$$_fin$00000220:
.Lc279:
.seh_proc SYSTEM$_$TDOSCMD_$_READ$PCHAR$PCHAR_$$_fin$00000220
	pushq	%rbp
.seh_pushreg %rbp
.Lc281:
.Lc282:
	movq	%rcx,%rbp
.Lc283:
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
.Lc280:

.section .text.n_system$_$tdoscmd_$__$$_read$pchar$pchar,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_READ$PCHAR$PCHAR
SYSTEM$_$TDOSCMD_$__$$_READ$PCHAR$PCHAR:
.Lc284:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_READ$PCHAR$PCHAR
	pushq	%rbp
.seh_pushreg %rbp
.Lc286:
.Lc287:
	movq	%rsp,%rbp
.Lc288:
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
.Lj413:
	nop
.Lj409:
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
	leaq	_$SYSTEM$_Ld48(%rip),%rcx
	call	_$dll$msvcrt$printf
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_decr_ref
	movq	(%rbx),%rdx
	xorl	%r8d,%r8d
	leaq	-16(%rbp),%rcx
	call	fpc_pchar_to_ansistr
	movq	-16(%rbp),%r8
	xorl	%r9d,%r9d
	leaq	.Ld49(%rip),%rdx
	leaq	-8(%rbp),%rcx
	call	fpc_ansistr_concat
	movq	-8(%rbp),%rdx
	testq	%rdx,%rdx
	jne	.Lj414
	leaq	FPC_EMPTYCHAR(%rip),%rdx
.Lj414:
	movq	TC_$SYSTEM_$$_DOS(%rip),%rcx
	call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
.Lj411:
	nop
.Lj410:
	movq	%rbp,%rcx
	call	SYSTEM$_$TDOSCMD_$_READ$PCHAR$PCHAR_$$_fin$00000220
	movq	-24(%rbp),%rbx
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj409
	.rva	.Lj410
	.rva	SYSTEM$_$TDOSCMD_$_READ$PCHAR$PCHAR_$$_fin$00000220

.section .text.n_system$_$tdoscmd_$__$$_read$pchar$pchar,"x"
.seh_endproc
.Lc285:

.section .text.n_system$_$tdoscmd_$__$$_read$pchar,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_READ$PCHAR
SYSTEM$_$TDOSCMD_$__$$_READ$PCHAR:
.Lc289:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_READ$PCHAR
	leaq	-40(%rsp),%rsp
.Lc291:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
	movq	TC_$SYSTEM_$$_DOS(%rip),%rcx
	leaq	_$SYSTEM$_Ld50(%rip),%rdx
	call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc290:

.section .text.n_system$_$tdoscmd_$__$$_get_stdin$$longdword,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_GET_STDIN$$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_GET_STDIN$$LONGDWORD:
.Lc292:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_GET_STDIN$$LONGDWORD
	leaq	-40(%rsp),%rsp
.Lc294:
.seh_stackalloc 40
.seh_endprologue
	movl	$4294967286,%ecx
	call	_$dll$kernel32$GetStdHandle
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc293:

.section .text.n_system$_$tdoscmd_$__$$_get_stderr$$longdword,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_GET_STDERR$$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_GET_STDERR$$LONGDWORD:
.Lc295:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_GET_STDERR$$LONGDWORD
	leaq	-40(%rsp),%rsp
.Lc297:
.seh_stackalloc 40
.seh_endprologue
	movl	$4294967284,%ecx
	call	_$dll$kernel32$GetStdHandle
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc296:

.section .text.n_system$_$tdoscmd_$__$$_get_stdout$$longdword,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_GET_STDOUT$$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_GET_STDOUT$$LONGDWORD:
.Lc298:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_GET_STDOUT$$LONGDWORD
	leaq	-40(%rsp),%rsp
.Lc300:
.seh_stackalloc 40
.seh_endprologue
	movl	$4294967285,%ecx
	call	_$dll$kernel32$GetStdHandle
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc299:

.section .text.n_system$_$tdoscmd_$__$$_set_stdin$longdword$longdword,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_SET_STDIN$LONGDWORD$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_SET_STDIN$LONGDWORD$LONGDWORD:
.Lc301:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_SET_STDIN$LONGDWORD$LONGDWORD
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc303:
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
.Lc302:

.section .text.n_system$_$tdoscmd_$__$$_set_stdout$longdword$longdword,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_SET_STDOUT$LONGDWORD$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_SET_STDOUT$LONGDWORD$LONGDWORD:
.Lc304:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_SET_STDOUT$LONGDWORD$LONGDWORD
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc306:
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
.Lc305:

.section .text.n_system$_$tdoscmd_$__$$_set_stderr$longdword$longdword,"x"
.globl	SYSTEM$_$TDOSCMD_$__$$_SET_STDERR$LONGDWORD$LONGDWORD
SYSTEM$_$TDOSCMD_$__$$_SET_STDERR$LONGDWORD$LONGDWORD:
.Lc307:
.seh_proc SYSTEM$_$TDOSCMD_$__$$_SET_STDERR$LONGDWORD$LONGDWORD
	pushq	%rbx
.seh_pushreg %rbx
	leaq	-32(%rsp),%rsp
.Lc309:
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
.Lc308:

.section .text.n_system_$$_initwindows,"x"
.globl	SYSTEM_$$_INITWINDOWS
SYSTEM_$$_INITWINDOWS:
.Lc310:
.seh_proc SYSTEM_$$_INITWINDOWS
	leaq	-40(%rsp),%rsp
.Lc312:
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
.Lc311:

.section .text.n_system_$$_donewindows,"x"
.globl	SYSTEM_$$_DONEWINDOWS
SYSTEM_$$_DONEWINDOWS:
.Lc313:
.seh_proc SYSTEM_$$_DONEWINDOWS
	leaq	-40(%rsp),%rsp
.Lc315:
.seh_stackalloc 40
.seh_endprologue
	cmpq	$0,U_$SYSTEM_$$_WINDOWS(%rip)
	je	.Lj434
	movq	U_$SYSTEM_$$_WINDOWS(%rip),%rax
	movq	U_$SYSTEM_$$_WINDOWS(%rip),%rdx
	movq	(%rdx),%rdx
	movq	%rax,%rcx
	call	*184(%rdx)
.Lj434:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc314:

.section .text.n_system$_$windows_class_$__$$_create$$windows_class,"x"
.globl	SYSTEM$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS
SYSTEM$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS:
.Lc316:
.seh_proc SYSTEM$_$WINDOWS_CLASS_$__$$_CREATE$$WINDOWS_CLASS
	pushq	%rbp
.seh_pushreg %rbp
.Lc318:
.Lc319:
	movq	%rsp,%rbp
.Lc320:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
	movq	%rcx,-16(%rbp)
	movq	%rdx,-8(%rbp)
	cmpq	$1,%rdx
	jne	.Lj438
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rax,%rcx
	call	*128(%rdx)
	movq	%rax,-16(%rbp)
.Lj438:
	cmpq	$0,-16(%rbp)
	je	.Lj435
.Lj446:
	nop
.Lj445:
	movq	$-1,-24(%rbp)
	movq	-16(%rbp),%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
	movq	$1,-24(%rbp)
	cmpq	$0,-16(%rbp)
	je	.Lj443
	cmpq	$0,-8(%rbp)
	je	.Lj443
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*168(%rax)
	jmp	.Lj443
.Lj442:
	cmpq	$0,-8(%rbp)
	je	.Lj452
	movq	-24(%rbp),%rdx
	movq	-16(%rbp),%rcx
	call	SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY
.Lj452:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj453:
	nop
.Lj443:
.Lj435:
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj445
	.rva	.Lj442
	.rva	.Lj443

.section .text.n_system$_$windows_class_$__$$_create$$windows_class,"x"
.seh_endproc
.Lc317:

.section .text.n_system$_$windows_class_$__$$_destroy,"x"
.globl	SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY
SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY:
.Lc321:
.seh_proc SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc323:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rsi
	testq	%rsi,%rsi
	jng	.Lj457
	movq	%rbx,%rcx
	movq	(%rbx),%rax
	call	*176(%rax)
.Lj457:
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_DESTROY
	testq	%rbx,%rbx
	je	.Lj459
	testq	%rsi,%rsi
	je	.Lj459
	movq	(%rbx),%rcx
	movq	(%rbx),%rax
	call	*136(%rax)
.Lj459:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc322:

.section .text.n_system$_$windows_class_$__$$_free,"x"
.globl	SYSTEM$_$WINDOWS_CLASS_$__$$_FREE
SYSTEM$_$WINDOWS_CLASS_$__$$_FREE:
.Lc324:
.seh_proc SYSTEM$_$WINDOWS_CLASS_$__$$_FREE
	leaq	-40(%rsp),%rsp
.Lc326:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
	testq	%rcx,%rcx
	je	.Lj464
	movq	%rax,%rcx
	movl	$1,%edx
	call	SYSTEM$_$WINDOWS_CLASS_$__$$_DESTROY
.Lj464:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc325:

.section .text.n_system$_$windows_class_$_messagebox$ansistring$ansistring$$longdword_$$_fin$00000221,"x"
SYSTEM$_$WINDOWS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$00000221:
.Lc327:
.seh_proc SYSTEM$_$WINDOWS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$00000221
	pushq	%rbp
.seh_pushreg %rbp
.Lc329:
.Lc330:
	movq	%rcx,%rbp
.Lc331:
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
.Lc328:

.section .text.n_system$_$windows_class_$__$$_messagebox$ansistring$ansistring$$longdword,"x"
.globl	SYSTEM$_$WINDOWS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD
SYSTEM$_$WINDOWS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD:
.Lc332:
.seh_proc SYSTEM$_$WINDOWS_CLASS_$__$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD
	pushq	%rbp
.seh_pushreg %rbp
.Lc334:
.Lc335:
	movq	%rsp,%rbp
.Lc336:
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
.Lj473:
	nop
.Lj469:
	movq	-16(%rbp),%r8
	testq	%r8,%r8
	jne	.Lj474
	leaq	FPC_EMPTYCHAR(%rip),%r8
.Lj474:
	movq	-8(%rbp),%rdx
	testq	%rdx,%rdx
	jne	.Lj475
	leaq	FPC_EMPTYCHAR(%rip),%rdx
.Lj475:
	xorl	%r9d,%r9d
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	xorl	%ebx,%ebx
.Lj471:
	nop
.Lj470:
	movq	%rbp,%rcx
	call	SYSTEM$_$WINDOWS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$00000221
	movl	%ebx,%eax
	movq	-24(%rbp),%rbx
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@unwind
.seh_handlerdata
	.long	1
	.long	0
	.rva	.Lj469
	.rva	.Lj470
	.rva	SYSTEM$_$WINDOWS_CLASS_$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD_$$_fin$00000221

.section .text.n_system$_$windows_class_$__$$_messagebox$ansistring$ansistring$$longdword,"x"
.seh_endproc
.Lc333:

.section .text.n_system$_$tvgaio_$__$$_$lower$tvgaio$ansistring$$boolean,"x"
.globl	SYSTEM$_$TVGAIO_$__$$_$lower$TVGAIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TVGAIO_$__$$_$lower$TVGAIO$ANSISTRING$$BOOLEAN:
.Lc337:
.seh_proc SYSTEM$_$TVGAIO_$__$$_$lower$TVGAIO$ANSISTRING$$BOOLEAN
	pushq	%rbp
.seh_pushreg %rbp
.Lc339:
.Lc340:
	movq	%rsp,%rbp
.Lc341:
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
.Lc338:

.section .text.n_system$_$tvgaio_$__$$_$greater$tvgaio$ansistring$$boolean,"x"
.globl	SYSTEM$_$TVGAIO_$__$$_$greater$TVGAIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TVGAIO_$__$$_$greater$TVGAIO$ANSISTRING$$BOOLEAN:
.Lc342:
.seh_proc SYSTEM$_$TVGAIO_$__$$_$greater$TVGAIO$ANSISTRING$$BOOLEAN
	pushq	%rbp
.seh_pushreg %rbp
.Lc344:
.Lc345:
	movq	%rsp,%rbp
.Lc346:
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
.Lc343:

.section .text.n_system$_$tsystemio_$_lower$tsystemio$ansistring$$boolean_$$_fin$00000224,"x"
SYSTEM$_$TSYSTEMIO_$_lower$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$00000224:
.Lc347:
.seh_proc SYSTEM$_$TSYSTEMIO_$_lower$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$00000224
	pushq	%rbp
.seh_pushreg %rbp
.Lc349:
.Lc350:
	movq	%rcx,%rbp
.Lc351:
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
.Lc348:

.section .text.n_system$_$tsystemio_$__$$_$lower$tsystemio$ansistring$$boolean,"x"
.globl	SYSTEM$_$TSYSTEMIO_$__$$_$lower$TSYSTEMIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TSYSTEMIO_$__$$_$lower$TSYSTEMIO$ANSISTRING$$BOOLEAN:
.Lc352:
.seh_proc SYSTEM$_$TSYSTEMIO_$__$$_$lower$TSYSTEMIO$ANSISTRING$$BOOLEAN
	pushq	%rbp
.seh_pushreg %rbp
.Lc354:
.Lc355:
	movq	%rsp,%rbp
.Lc356:
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
.Lj492:
	nop
.Lj488:
	movq	-8(%rbp),%rdx
	testq	%rdx,%rdx
	jne	.Lj493
	leaq	FPC_EMPTYCHAR(%rip),%rdx
.Lj493:
	movq	TC_$SYSTEM_$$_DOS(%rip),%rcx
	call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
.Lj490:
	nop
.Lj489:
	movq	%rbp,%rcx
	call	SYSTEM$_$TSYSTEMIO_$_lower$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$00000224
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
	.rva	.Lj488
	.rva	.Lj489
	.rva	SYSTEM$_$TSYSTEMIO_$_lower$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$00000224

.section .text.n_system$_$tsystemio_$__$$_$lower$tsystemio$ansistring$$boolean,"x"
.seh_endproc
.Lc353:

.section .text.n_system$_$tsystemio_$_greater$tsystemio$ansistring$$boolean_$$_fin$00000225,"x"
SYSTEM$_$TSYSTEMIO_$_greater$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$00000225:
.Lc357:
.seh_proc SYSTEM$_$TSYSTEMIO_$_greater$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$00000225
	pushq	%rbp
.seh_pushreg %rbp
.Lc359:
.Lc360:
	movq	%rcx,%rbp
.Lc361:
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
.Lc358:

.section .text.n_system$_$tsystemio_$__$$_$greater$tsystemio$ansistring$$boolean,"x"
.globl	SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$ANSISTRING$$BOOLEAN
SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$ANSISTRING$$BOOLEAN:
.Lc362:
.seh_proc SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$ANSISTRING$$BOOLEAN
	pushq	%rbp
.seh_pushreg %rbp
.Lc364:
.Lc365:
	movq	%rsp,%rbp
.Lc366:
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
.Lj502:
	nop
.Lj498:
	movb	$1,%bl
.Lj500:
	nop
.Lj499:
	movq	%rbp,%rcx
	call	SYSTEM$_$TSYSTEMIO_$_greater$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$00000225
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
	.rva	.Lj498
	.rva	.Lj499
	.rva	SYSTEM$_$TSYSTEMIO_$_greater$TSYSTEMIO$ANSISTRING$$BOOLEAN_$$_fin$00000225

.section .text.n_system$_$tsystemio_$__$$_$greater$tsystemio$ansistring$$boolean,"x"
.seh_endproc
.Lc363:

.section .text.n_system$_$tsystemio_$__$$_$greater$tsystemio$longdword$$qword,"x"
.globl	SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$LONGDWORD$$QWORD
SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$LONGDWORD$$QWORD:
.Lc367:
.seh_proc SYSTEM$_$TSYSTEMIO_$__$$_$greater$TSYSTEMIO$LONGDWORD$$QWORD
	pushq	%rdi
.seh_pushreg %rdi
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-8(%rsp),%rsp
.Lc369:
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
.Lc368:

.section .text.n_system$_$tcpu_$__$$_create$$tcpu,"x"
.globl	SYSTEM$_$TCPU_$__$$_CREATE$$TCPU
SYSTEM$_$TCPU_$__$$_CREATE$$TCPU:
.Lc370:
.seh_proc SYSTEM$_$TCPU_$__$$_CREATE$$TCPU
	pushq	%rbp
.seh_pushreg %rbp
.Lc372:
.Lc373:
	movq	%rsp,%rbp
.Lc374:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
	movq	%rcx,-16(%rbp)
	movq	%rdx,-8(%rbp)
	cmpq	$1,%rdx
	jne	.Lj508
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rax,%rcx
	call	*128(%rdx)
	movq	%rax,-16(%rbp)
.Lj508:
	cmpq	$0,-16(%rbp)
	je	.Lj505
.Lj516:
	nop
.Lj515:
	movq	$-1,-24(%rbp)
	movq	-16(%rbp),%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
	movq	$1,-24(%rbp)
	cmpq	$0,-16(%rbp)
	je	.Lj513
	cmpq	$0,-8(%rbp)
	je	.Lj513
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*168(%rax)
	jmp	.Lj513
.Lj512:
	cmpq	$0,-8(%rbp)
	je	.Lj522
	movq	-24(%rbp),%rdx
	movq	-16(%rbp),%rcx
	call	SYSTEM$_$TCPU_$__$$_DESTROY
.Lj522:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj523:
	nop
.Lj513:
.Lj505:
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj515
	.rva	.Lj512
	.rva	.Lj513

.section .text.n_system$_$tcpu_$__$$_create$$tcpu,"x"
.seh_endproc
.Lc371:

.section .text.n_system$_$tcpu_$__$$_destroy,"x"
.globl	SYSTEM$_$TCPU_$__$$_DESTROY
SYSTEM$_$TCPU_$__$$_DESTROY:
.Lc375:
.seh_proc SYSTEM$_$TCPU_$__$$_DESTROY
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc377:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rsi
	testq	%rsi,%rsi
	jng	.Lj527
	movq	%rbx,%rcx
	movq	(%rbx),%rax
	call	*176(%rax)
.Lj527:
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_DESTROY
	testq	%rbx,%rbx
	je	.Lj529
	testq	%rsi,%rsi
	je	.Lj529
	movq	(%rbx),%rcx
	movq	(%rbx),%rax
	call	*136(%rax)
.Lj529:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc376:

.section .text.n_system$_$tcpu_$__$$_classname$$ansistring,"x"
.globl	SYSTEM$_$TCPU_$__$$_CLASSNAME$$ANSISTRING
SYSTEM$_$TCPU_$__$$_CLASSNAME$$ANSISTRING:
.Lc378:
.seh_proc SYSTEM$_$TCPU_$__$$_CLASSNAME$$ANSISTRING
	leaq	-40(%rsp),%rsp
.Lc380:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
	movq	%rdx,%rcx
	leaq	.Ld51(%rip),%rdx
	call	fpc_ansistr_assign
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc379:

.section .text.n_system$_$tcpu_$__$$_classparent$$tobject,"x"
.globl	SYSTEM$_$TCPU_$__$$_CLASSPARENT$$TOBJECT
SYSTEM$_$TCPU_$__$$_CLASSPARENT$$TOBJECT:
.Lc381:
.seh_proc SYSTEM$_$TCPU_$__$$_CLASSPARENT$$TOBJECT
	leaq	-40(%rsp),%rsp
.Lc383:
.seh_stackalloc 40
.seh_endprologue
	call	SYSTEM$_$TCPU_$__$$_GETPARENT$$TOBJECT
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc382:

.section .text.n_system$_$tcpu_$__$$_getparent$$tobject,"x"
.globl	SYSTEM$_$TCPU_$__$$_GETPARENT$$TOBJECT
SYSTEM$_$TCPU_$__$$_GETPARENT$$TOBJECT:
.Lc384:
	movq	U_$SYSTEM_$$__static_tcpu_FCLASSPARENT(%rip),%rax
	ret
.Lc385:

.section .text.n_system_$$_initmemory,"x"
.globl	SYSTEM_$$_INITMEMORY
SYSTEM_$$_INITMEMORY:
.Lc386:
.seh_proc SYSTEM_$$_INITMEMORY
	leaq	-40(%rsp),%rsp
.Lc388:
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
.Lc387:

.section .text.n_system_$$_donememory,"x"
.globl	SYSTEM_$$_DONEMEMORY
SYSTEM_$$_DONEMEMORY:
.Lc389:
.seh_proc SYSTEM_$$_DONEMEMORY
	leaq	-40(%rsp),%rsp
.Lc391:
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
.Lc390:

.section .text.n_system$_$tmemory_$__$$_create$$tmemory,"x"
.globl	SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY
SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY:
.Lc392:
.seh_proc SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY
	pushq	%rbp
.seh_pushreg %rbp
.Lc394:
.Lc395:
	movq	%rsp,%rbp
.Lc396:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
	movq	%rcx,-16(%rbp)
	movq	%rdx,-8(%rbp)
	cmpq	$1,%rdx
	jne	.Lj544
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rax,%rcx
	call	*128(%rdx)
	movq	%rax,-16(%rbp)
.Lj544:
	cmpq	$0,-16(%rbp)
	je	.Lj541
.Lj552:
	nop
.Lj551:
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
	je	.Lj549
	cmpq	$0,-8(%rbp)
	je	.Lj549
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*168(%rax)
	jmp	.Lj549
.Lj548:
	cmpq	$0,-8(%rbp)
	je	.Lj558
	movq	-24(%rbp),%rdx
	movq	-16(%rbp),%rcx
	call	SYSTEM$_$TMEMORY_$__$$_DESTROY
.Lj558:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj559:
	nop
.Lj549:
.Lj541:
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj551
	.rva	.Lj548
	.rva	.Lj549

.section .text.n_system$_$tmemory_$__$$_create$$tmemory,"x"
.seh_endproc
.Lc393:

.section .text.n_system$_$tmemory_$__$$_create$longdword$$tmemory,"x"
.globl	SYSTEM$_$TMEMORY_$__$$_CREATE$LONGDWORD$$TMEMORY
SYSTEM$_$TMEMORY_$__$$_CREATE$LONGDWORD$$TMEMORY:
.Lc397:
.seh_proc SYSTEM$_$TMEMORY_$__$$_CREATE$LONGDWORD$$TMEMORY
	pushq	%rbp
.seh_pushreg %rbp
.Lc399:
.Lc400:
	movq	%rsp,%rbp
.Lc401:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
	movq	%rcx,-24(%rbp)
	movq	%rdx,-16(%rbp)
	movl	%r8d,-8(%rbp)
	cmpq	$1,-16(%rbp)
	jne	.Lj563
	movq	-24(%rbp),%rax
	movq	-24(%rbp),%rdx
	movq	%rax,%rcx
	call	*128(%rdx)
	movq	%rax,-24(%rbp)
.Lj563:
	cmpq	$0,-24(%rbp)
	je	.Lj560
.Lj571:
	nop
.Lj570:
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
	je	.Lj568
	cmpq	$0,-16(%rbp)
	je	.Lj568
	movq	-24(%rbp),%rcx
	movq	-24(%rbp),%rax
	movq	(%rax),%rax
	call	*168(%rax)
	jmp	.Lj568
.Lj567:
	cmpq	$0,-16(%rbp)
	je	.Lj577
	movq	-32(%rbp),%rdx
	movq	-24(%rbp),%rcx
	call	SYSTEM$_$TMEMORY_$__$$_DESTROY
.Lj577:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj578:
	nop
.Lj568:
.Lj560:
	movq	-24(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj570
	.rva	.Lj567
	.rva	.Lj568

.section .text.n_system$_$tmemory_$__$$_create$longdword$$tmemory,"x"
.seh_endproc
.Lc398:

.section .text.n_system$_$tmemory_$__$$_create$tobject$longdword$$tmemory,"x"
.globl	SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$LONGDWORD$$TMEMORY
SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$LONGDWORD$$TMEMORY:
.Lc402:
.seh_proc SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$LONGDWORD$$TMEMORY
	pushq	%rbp
.seh_pushreg %rbp
.Lc404:
.Lc405:
	movq	%rsp,%rbp
.Lc406:
	leaq	-80(%rsp),%rsp
.seh_stackalloc 80
.seh_endprologue
	movq	%rcx,-32(%rbp)
	movq	%rdx,-24(%rbp)
	movq	%r8,-8(%rbp)
	movl	%r9d,-16(%rbp)
	cmpq	$1,-24(%rbp)
	jne	.Lj582
	movq	-32(%rbp),%rax
	movq	-32(%rbp),%rdx
	movq	%rax,%rcx
	call	*128(%rdx)
	movq	%rax,-32(%rbp)
.Lj582:
	cmpq	$0,-32(%rbp)
	je	.Lj579
.Lj590:
	nop
.Lj589:
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
	je	.Lj587
	cmpq	$0,-24(%rbp)
	je	.Lj587
	movq	-32(%rbp),%rcx
	movq	-32(%rbp),%rax
	movq	(%rax),%rax
	call	*168(%rax)
	jmp	.Lj587
.Lj586:
	cmpq	$0,-24(%rbp)
	je	.Lj596
	movq	-40(%rbp),%rdx
	movq	-32(%rbp),%rcx
	call	SYSTEM$_$TMEMORY_$__$$_DESTROY
.Lj596:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj597:
	nop
.Lj587:
.Lj579:
	movq	-32(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj589
	.rva	.Lj586
	.rva	.Lj587

.section .text.n_system$_$tmemory_$__$$_create$tobject$longdword$$tmemory,"x"
.seh_endproc
.Lc403:

.section .text.n_system$_$tmemory_$__$$_create$tobject$$tmemory,"x"
.globl	SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$$TMEMORY
SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$$TMEMORY:
.Lc407:
.seh_proc SYSTEM$_$TMEMORY_$__$$_CREATE$TOBJECT$$TMEMORY
	pushq	%rbp
.seh_pushreg %rbp
.Lc409:
.Lc410:
	movq	%rsp,%rbp
.Lc411:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
	movq	%rcx,-24(%rbp)
	movq	%rdx,-16(%rbp)
	movq	%r8,-8(%rbp)
	cmpq	$1,-16(%rbp)
	jne	.Lj601
	movq	-24(%rbp),%rax
	movq	-24(%rbp),%rdx
	movq	%rax,%rcx
	call	*128(%rdx)
	movq	%rax,-24(%rbp)
.Lj601:
	cmpq	$0,-24(%rbp)
	je	.Lj598
.Lj609:
	nop
.Lj608:
	movq	$-1,-32(%rbp)
	movq	-24(%rbp),%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_CREATE$$TOBJECT
	xorl	%r9d,%r9d
	leaq	_$SYSTEM$_Ld1(%rip),%r8
	leaq	_$SYSTEM$_Ld52(%rip),%rdx
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	cmpq	$0,-8(%rbp)
	jne	.Lj612
	movl	$8,%edx
	movl	%edx,U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE(%rip)
	leaq	U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY(%rip),%rcx
	call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
	jmp	.Lj613
.Lj612:
	movq	-8(%rbp),%rax
	movq	%rax,U_$SYSTEM_$$__static_tmemory_FCLASSPARENT(%rip)
	movq	-24(%rbp),%rcx
	movl	$8,%edx
	call	SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER
	movq	%rax,U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY(%rip)
.Lj613:
	movq	$1,-32(%rbp)
	cmpq	$0,-24(%rbp)
	je	.Lj606
	cmpq	$0,-16(%rbp)
	je	.Lj606
	movq	-24(%rbp),%rcx
	movq	-24(%rbp),%rax
	movq	(%rax),%rax
	call	*168(%rax)
	jmp	.Lj606
.Lj605:
	cmpq	$0,-16(%rbp)
	je	.Lj618
	movq	-32(%rbp),%rdx
	movq	-24(%rbp),%rcx
	call	SYSTEM$_$TMEMORY_$__$$_DESTROY
.Lj618:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj619:
	nop
.Lj606:
.Lj598:
	movq	-24(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj608
	.rva	.Lj605
	.rva	.Lj606

.section .text.n_system$_$tmemory_$__$$_create$tobject$$tmemory,"x"
.seh_endproc
.Lc408:

.section .text.n_system$_$tmemory_$__$$_destroy,"x"
.globl	SYSTEM$_$TMEMORY_$__$$_DESTROY
SYSTEM$_$TMEMORY_$__$$_DESTROY:
.Lc412:
.seh_proc SYSTEM$_$TMEMORY_$__$$_DESTROY
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc414:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rsi
	testq	%rsi,%rsi
	jng	.Lj623
	movq	%rbx,%rcx
	movq	(%rbx),%rax
	call	*176(%rax)
.Lj623:
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_DESTROY
	testq	%rbx,%rbx
	je	.Lj625
	testq	%rsi,%rsi
	je	.Lj625
	movq	(%rbx),%rcx
	movq	(%rbx),%rax
	call	*136(%rax)
.Lj625:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc413:

.section .text.n_system$_$tmemory_$__$$_classname$$ansistring,"x"
.globl	SYSTEM$_$TMEMORY_$__$$_CLASSNAME$$ANSISTRING
SYSTEM$_$TMEMORY_$__$$_CLASSNAME$$ANSISTRING:
.Lc415:
.seh_proc SYSTEM$_$TMEMORY_$__$$_CLASSNAME$$ANSISTRING
	leaq	-40(%rsp),%rsp
.Lc417:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
	movq	%rdx,%rcx
	leaq	.Ld53(%rip),%rdx
	call	fpc_ansistr_assign
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc416:

.section .text.n_system$_$tmemory_$__$$_alloc$longdword$$pointer,"x"
.globl	SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER
SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER:
.Lc418:
.seh_proc SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc420:
.seh_stackalloc 40
.seh_endprologue
	movl	%edx,%ebx
	xorl	%esi,%esi
	cmpl	U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE(%rip),%ebx
	je	.Lj629
	cmpl	$0,U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE(%rip)
	jne	.Lj635
	movl	%ebx,%edx
	leaq	U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY(%rip),%rcx
	call	SYSTEM_$$_GETMEM$POINTER$LONGDWORD
	movl	%ebx,U_$SYSTEM_$$__static_tmemory_FCLASSMEMSIZE(%rip)
.Lj635:
	movq	U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY(%rip),%rsi
.Lj629:
	movq	%rsi,%rax
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc419:

.section .text.n_system$_$tmemory_$__$$_alloc,"x"
.globl	SYSTEM$_$TMEMORY_$__$$_ALLOC
SYSTEM$_$TMEMORY_$__$$_ALLOC:
.Lc421:
.seh_proc SYSTEM$_$TMEMORY_$__$$_ALLOC
	leaq	-40(%rsp),%rsp
.Lc423:
.seh_stackalloc 40
.seh_endprologue
	movl	$512,%edx
	call	SYSTEM$_$TMEMORY_$__$$_ALLOC$LONGDWORD$$POINTER
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc422:

.section .text.n_system$_$tmemory_$__$$_free,"x"
.globl	SYSTEM$_$TMEMORY_$__$$_FREE
SYSTEM$_$TMEMORY_$__$$_FREE:
.Lc424:
.seh_proc SYSTEM$_$TMEMORY_$__$$_FREE
	leaq	-40(%rsp),%rsp
.Lc426:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
	leaq	U_$SYSTEM_$$__static_tmemory_FCLASSMEMORY(%rip),%rcx
	call	SYSTEM_$$_FREEMEM$POINTER
	cmpq	$0,U_$SYSTEM_$$__static_tmemory_FCLASSPARENT(%rip)
	je	.Lj641
	movq	U_$SYSTEM_$$__static_tmemory_FCLASSPARENT(%rip),%rcx
	movq	U_$SYSTEM_$$__static_tmemory_FCLASSPARENT(%rip),%rax
	movq	(%rax),%rax
	call	*160(%rax)
.Lj641:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc425:

.section .text.n_system_$$_initsystem,"x"
.globl	SYSTEM_$$_INITSYSTEM
SYSTEM_$$_INITSYSTEM:
.Lc427:
.seh_proc SYSTEM_$$_INITSYSTEM
	leaq	-40(%rsp),%rsp
.Lc429:
.seh_stackalloc 40
.seh_endprologue
	call	_$dll$kernel32$GetConsoleWindow
	testl	%eax,%eax
	je	.Lj645
	call	SYSTEM_$$_INITCONSOLE
.Lj645:
	movl	$1,%edx
	leaq	VMT_$SYSTEM_$$_TSYSTEM(%rip),%rcx
	call	SYSTEM$_$TSYSTEM_$__$$_CREATE$$TSYSTEM
	movq	%rax,TC_$SYSTEM_$$_SYS(%rip)
	movl	$1,%edx
	leaq	VMT_$SYSTEM_$$_TMEMORY(%rip),%rcx
	call	SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY
	movq	%rax,TC_$SYSTEM_$$_MEM(%rip)
	movq	TC_$SYSTEM_$$_DOS(%rip),%rcx
	leaq	_$SYSTEM$_Ld54(%rip),%rdx
	call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc428:

.section .text.n_system_$$_donesystem,"x"
.globl	SYSTEM_$$_DONESYSTEM
SYSTEM_$$_DONESYSTEM:
.Lc430:
.seh_proc SYSTEM_$$_DONESYSTEM
	leaq	-40(%rsp),%rsp
.Lc432:
.seh_stackalloc 40
.seh_endprologue
	call	_$dll$kernel32$GetConsoleWindow
	testl	%eax,%eax
	je	.Lj649
	call	SYSTEM_$$_DONECONSOLE
.Lj649:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc431:

.section .text.n_system$_$tsystem_$__$$_create$$tsystem,"x"
.globl	SYSTEM$_$TSYSTEM_$__$$_CREATE$$TSYSTEM
SYSTEM$_$TSYSTEM_$__$$_CREATE$$TSYSTEM:
.Lc433:
.seh_proc SYSTEM$_$TSYSTEM_$__$$_CREATE$$TSYSTEM
	pushq	%rbp
.seh_pushreg %rbp
.Lc435:
.Lc436:
	movq	%rsp,%rbp
.Lc437:
	leaq	-64(%rsp),%rsp
.seh_stackalloc 64
.seh_endprologue
	movq	%rcx,-16(%rbp)
	movq	%rdx,-8(%rbp)
	cmpq	$1,%rdx
	jne	.Lj653
	movq	-16(%rbp),%rax
	movq	-16(%rbp),%rdx
	movq	%rax,%rcx
	call	*128(%rdx)
	movq	%rax,-16(%rbp)
.Lj653:
	cmpq	$0,-16(%rbp)
	je	.Lj650
.Lj661:
	nop
.Lj660:
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
	je	.Lj658
	cmpq	$0,-8(%rbp)
	je	.Lj658
	movq	-16(%rbp),%rcx
	movq	-16(%rbp),%rax
	movq	(%rax),%rax
	call	*168(%rax)
	jmp	.Lj658
.Lj657:
	cmpq	$0,-8(%rbp)
	je	.Lj667
	movq	-24(%rbp),%rdx
	movq	-16(%rbp),%rcx
	call	SYSTEM$_$TSYSTEM_$__$$_DESTROY
.Lj667:
	call	fpc_reraise
	call	FPC_DONEEXCEPTION
.Lj668:
	nop
.Lj658:
.Lj650:
	movq	-16(%rbp),%rax
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj660
	.rva	.Lj657
	.rva	.Lj658

.section .text.n_system$_$tsystem_$__$$_create$$tsystem,"x"
.seh_endproc
.Lc434:

.section .text.n_system$_$tsystem_$__$$_destroy,"x"
.globl	SYSTEM$_$TSYSTEM_$__$$_DESTROY
SYSTEM$_$TSYSTEM_$__$$_DESTROY:
.Lc438:
.seh_proc SYSTEM$_$TSYSTEM_$__$$_DESTROY
	pushq	%rbx
.seh_pushreg %rbx
	pushq	%rsi
.seh_pushreg %rsi
	leaq	-40(%rsp),%rsp
.Lc440:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rbx
	movq	%rdx,%rsi
	testq	%rsi,%rsi
	jng	.Lj672
	movq	%rbx,%rcx
	movq	(%rbx),%rax
	call	*176(%rax)
.Lj672:
	cmpq	$0,U_$SYSTEM_$$__static_tsystem_FMEMCLASS(%rip)
	je	.Lj674
	movq	U_$SYSTEM_$$__static_tsystem_FMEMCLASS(%rip),%rcx
	movq	U_$SYSTEM_$$__static_tsystem_FMEMCLASS(%rip),%rax
	movq	(%rax),%rax
	call	*184(%rax)
	movq	$0,U_$SYSTEM_$$__static_tsystem_FMEMCLASS(%rip)
.Lj674:
	movq	%rbx,%rcx
	xorl	%edx,%edx
	call	SYSTEM$_$TOBJECT_$__$$_DESTROY
	testq	%rbx,%rbx
	je	.Lj676
	testq	%rsi,%rsi
	je	.Lj676
	movq	(%rbx),%rcx
	movq	(%rbx),%rax
	call	*136(%rax)
.Lj676:
	nop
	leaq	40(%rsp),%rsp
	popq	%rsi
	popq	%rbx
	ret
.seh_endproc
.Lc439:

.section .text.n_system$_$tsystem_$__$$_getmemory$$tmemory,"x"
.globl	SYSTEM$_$TSYSTEM_$__$$_GETMEMORY$$TMEMORY
SYSTEM$_$TSYSTEM_$__$$_GETMEMORY$$TMEMORY:
.Lc441:
.seh_proc SYSTEM$_$TSYSTEM_$__$$_GETMEMORY$$TMEMORY
	leaq	-40(%rsp),%rsp
.Lc443:
.seh_stackalloc 40
.seh_endprologue
	cmpq	$0,U_$SYSTEM_$$__static_tsystem_FMEMCLASS(%rip)
	jne	.Lj681
	movl	$1,%edx
	leaq	VMT_$SYSTEM_$$_TMEMORY(%rip),%rcx
	call	SYSTEM$_$TMEMORY_$__$$_CREATE$$TMEMORY
	movq	%rax,U_$SYSTEM_$$__static_tsystem_FMEMCLASS(%rip)
.Lj681:
	movq	U_$SYSTEM_$$__static_tsystem_FMEMCLASS(%rip),%rax
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc442:

.section .text.n_system$_$tsystem_$__$$_classname$$ansistring,"x"
.globl	SYSTEM$_$TSYSTEM_$__$$_CLASSNAME$$ANSISTRING
SYSTEM$_$TSYSTEM_$__$$_CLASSNAME$$ANSISTRING:
.Lc444:
.seh_proc SYSTEM$_$TSYSTEM_$__$$_CLASSNAME$$ANSISTRING
	leaq	-40(%rsp),%rsp
.Lc446:
.seh_stackalloc 40
.seh_endprologue
	movq	%rcx,%rax
	movq	%rdx,%rcx
	leaq	.Ld55(%rip),%rdx
	call	fpc_ansistr_assign
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc445:

.section .text.n_system_$$_init$,"x"
.globl	INIT$_$SYSTEM
INIT$_$SYSTEM:
.globl	SYSTEM_$$_init$
SYSTEM_$$_init$:
.Lc447:
.seh_proc SYSTEM_$$_init$
	leaq	-40(%rsp),%rsp
.Lc449:
.seh_stackalloc 40
.seh_endprologue
	call	SYSTEM_$$_INITSYSTEM
	call	SYSTEM_$$_ISCONSOLEAPP$$BOOLEAN
	testb	%al,%al
	je	.Lj687
	leaq	_$SYSTEM$_Ld64(%rip),%rcx
	call	_$dll$msvcrt$printf
.Lj687:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc448:

.section .text.n_system_$$_finalize$,"x"
.globl	FINALIZE$_$SYSTEM
FINALIZE$_$SYSTEM:
.globl	SYSTEM_$$_finalize$
SYSTEM_$$_finalize$:
.Lc450:
.seh_proc SYSTEM_$$_finalize$
	leaq	-40(%rsp),%rsp
.Lc452:
.seh_stackalloc 40
.seh_endprologue
	call	SYSTEM_$$_DONESYSTEM
	call	SYSTEM_$$_ISCONSOLEAPP$$BOOLEAN
	testb	%al,%al
	je	.Lj689
	leaq	_$SYSTEM$_Ld65(%rip),%rcx
	call	_$dll$msvcrt$printf
.Lj689:
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc451:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.balign 8
	.globl U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE
U_$SYSTEM_$$__static_tobject_FCLASSINSTANCE:
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
	.quad	.Ld56
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
	.quad	.Ld57
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
	.quad	.Ld58
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

.section .rodata.n_VMT_$SYSTEM_$$_TDOSCMD,"d"
	.balign 8
.globl	VMT_$SYSTEM_$$_TDOSCMD
VMT_$SYSTEM_$$_TDOSCMD:
	.quad	40,-40
	.quad	VMT_$SYSTEM_$$_TOBJECT$indirect
	.quad	.Ld59
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
	.quad	.Ld60
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
	.quad	.Ld61
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
	.quad	.Ld62
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
	.quad	.Ld63
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
.Ld56:
	.byte	7
	.ascii	"TObject"

.section .rodata.n_VMT_$SYSTEM_$$_TLIST,"d"
	.balign 8
.Ld57:
	.byte	5
	.ascii	"TList"

.section .rodata.n_VMT_$SYSTEM_$$_EXCEPTION,"d"
	.balign 8
.Ld58:
	.byte	9
	.ascii	"Exception"

.section .rodata.n_VMT_$SYSTEM_$$_TDOSCMD,"d"
	.balign 8
.Ld59:
	.byte	7
	.ascii	"TDosCmd"

.section .rodata.n_VMT_$SYSTEM_$$_WINDOWS_CLASS,"d"
	.balign 8
.Ld60:
	.byte	13
	.ascii	"Windows_Class"

.section .rodata.n_VMT_$SYSTEM_$$_TCPU,"d"
	.balign 8
.Ld61:
	.byte	4
	.ascii	"TCPU"

.section .rodata.n_VMT_$SYSTEM_$$_TMEMORY,"d"
	.balign 8
.Ld62:
	.byte	7
	.ascii	"TMemory"

.section .rodata.n_VMT_$SYSTEM_$$_TSYSTEM,"d"
	.balign 8
.Ld63:
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

.section .rodata.n__$SYSTEM$_Ld1,"d"
.globl	_$SYSTEM$_Ld1
_$SYSTEM$_Ld1:
	.ascii	"info\000"

.section .rodata.n__$SYSTEM$_Ld2,"d"
.globl	_$SYSTEM$_Ld2
_$SYSTEM$_Ld2:
	.ascii	"spec\000"

.section .rodata.n__$SYSTEM$_Ld3,"d"
.globl	_$SYSTEM$_Ld3
_$SYSTEM$_Ld3:
	.ascii	"spec 222222\000"

.section .rodata.n__$SYSTEM$_Ld4,"d"
.globl	_$SYSTEM$_Ld4
_$SYSTEM$_Ld4:
	.ascii	"DEFAULTERS 2333\000"

.section .rodata.n_.Ld5,"d"
.Ld5$strlab:
	.short	0,1
	.long	0
	.quad	-1,1
.Ld5:
	.ascii	"\000\000"

.section .rodata.n__$SYSTEM$_Ld6,"d"
.globl	_$SYSTEM$_Ld6
_$SYSTEM$_Ld6:
	.ascii	"init: %d\015\012\000"

.section .rodata.n__$SYSTEM$_Ld7,"d"
.globl	_$SYSTEM$_Ld7
_$SYSTEM$_Ld7:
	.ascii	"finalize...\015\012\000"

.section .rodata.n__$SYSTEM$_Ld8,"d"
.globl	_$SYSTEM$_Ld8
_$SYSTEM$_Ld8:
	.ascii	"system.pas\000"

.section .rodata.n__$SYSTEM$_Ld9,"d"
.globl	_$SYSTEM$_Ld9
_$SYSTEM$_Ld9:
	.ascii	"fpc_doneexceptions\000"

.section .rodata.n__$SYSTEM$_Ld10,"d"
.globl	_$SYSTEM$_Ld10
_$SYSTEM$_Ld10:
	.ascii	"Error\000"

.section .rodata.n__$SYSTEM$_Ld11,"d"
.globl	_$SYSTEM$_Ld11
_$SYSTEM$_Ld11:
	.ascii	"Error: fpc_AnsiStr_EmptyChar memory allocation fail"
	.ascii	".\000"

.section .rodata.n__$SYSTEM$_Ld12,"d"
.globl	_$SYSTEM$_Ld12
_$SYSTEM$_Ld12:
	.ascii	"Information\000"

.section .rodata.n__$SYSTEM$_Ld13,"d"
.globl	_$SYSTEM$_Ld13
_$SYSTEM$_Ld13:
	.ascii	"Warning\000"

.section .rodata.n__$SYSTEM$_Ld14,"d"
.globl	_$SYSTEM$_Ld14
_$SYSTEM$_Ld14:
	.ascii	"Error: could not allocate memory.\000"

.section .rodata.n__$SYSTEM$_Ld15,"d"
.globl	_$SYSTEM$_Ld15
_$SYSTEM$_Ld15:
	.ascii	"File can not be lock.\000"

.section .rodata.n__$SYSTEM$_Ld16,"d"
.globl	_$SYSTEM$_Ld16
_$SYSTEM$_Ld16:
	.ascii	"pacher\000"

.section .rodata.n__$SYSTEM$_Ld17,"d"
.globl	_$SYSTEM$_Ld17
_$SYSTEM$_Ld17:
	.ascii	"File: \"\000"

.section .rodata.n__$SYSTEM$_Ld18,"d"
.globl	_$SYSTEM$_Ld18
_$SYSTEM$_Ld18:
	.ascii	"\" already exists.\\n\000"

.section .rodata.n__$SYSTEM$_Ld19,"d"
.globl	_$SYSTEM$_Ld19
_$SYSTEM$_Ld19:
	.ascii	"Would you like override it ?\000"

.section .rodata.n__$SYSTEM$_Ld20,"d"
.globl	_$SYSTEM$_Ld20
_$SYSTEM$_Ld20:
	.ascii	"file could not be created !\000"

.section .rodata.n__$SYSTEM$_Ld21,"d"
.globl	_$SYSTEM$_Ld21
_$SYSTEM$_Ld21:
	.ascii	"file not delete\000"

.section .rodata.n__$SYSTEM$_Ld22,"d"
.globl	_$SYSTEM$_Ld22
_$SYSTEM$_Ld22:
	.ascii	"\" could not be open.\000"

.section .rodata.n__$SYSTEM$_Ld23,"d"
.globl	_$SYSTEM$_Ld23
_$SYSTEM$_Ld23:
	.ascii	"SetFilePointer() failed.\000"

.section .rodata.n__$SYSTEM$_Ld24,"d"
.globl	_$SYSTEM$_Ld24
_$SYSTEM$_Ld24:
	.ascii	"TObject\000"

.section .rodata.n__$SYSTEM$_Ld25,"d"
.globl	_$SYSTEM$_Ld25
_$SYSTEM$_Ld25:
	.ascii	"Error: instance is not allocated.\000"

.section .rodata.n__$SYSTEM$_Ld26,"d"
.globl	_$SYSTEM$_Ld26
_$SYSTEM$_Ld26:
	.ascii	"iiffdddd\000"

.section .rodata.n__$SYSTEM$_Ld27,"d"
.globl	_$SYSTEM$_Ld27
_$SYSTEM$_Ld27:
	.ascii	"free instance\000"

.section .rodata.n__$SYSTEM$_Ld28,"d"
.globl	_$SYSTEM$_Ld28
_$SYSTEM$_Ld28:
	.ascii	"safecallexc\000"

.section .rodata.n__$SYSTEM$_Ld29,"d"
.globl	_$SYSTEM$_Ld29
_$SYSTEM$_Ld29:
	.ascii	"iiff dddd\000"

.section .rodata.n__$SYSTEM$_Ld30,"d"
.globl	_$SYSTEM$_Ld30
_$SYSTEM$_Ld30:
	.ascii	"sa feca ll exc\000"

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
	.ascii	"fpc_raiseexception\000"

.section .rodata.n__$SYSTEM$_Ld38,"d"
.globl	_$SYSTEM$_Ld38
_$SYSTEM$_Ld38:
	.ascii	"execp\000"

.section .rodata.n__$SYSTEM$_Ld39,"d"
.globl	_$SYSTEM$_Ld39
_$SYSTEM$_Ld39:
	.ascii	"Exception\000"

.section .rodata.n__$SYSTEM$_Ld40,"d"
.globl	_$SYSTEM$_Ld40
_$SYSTEM$_Ld40:
	.ascii	"woooopsss\015\012\000"

.section .rodata.n_.Ld41,"d"
.Ld41$strlab:
	.short	0,1
	.long	0
	.quad	-1,2
.Ld41:
	.ascii	"\015\012\000"

.section .rodata.n__$SYSTEM$_Ld42,"d"
.globl	_$SYSTEM$_Ld42
_$SYSTEM$_Ld42:
	.ascii	"xxxxx\000"

.section .rodata.n__$SYSTEM$_Ld43,"d"
.globl	_$SYSTEM$_Ld43
_$SYSTEM$_Ld43:
	.ascii	"Message: %s\000"

.section .rodata.n__$SYSTEM$_Ld44,"d"
.globl	_$SYSTEM$_Ld44
_$SYSTEM$_Ld44:
	.ascii	"Title  : %s\000"

.section .rodata.n__$SYSTEM$_Ld45,"d"
.globl	_$SYSTEM$_Ld45
_$SYSTEM$_Ld45:
	.ascii	"%s\000"

.section .rodata.n__$SYSTEM$_Ld46,"d"
.globl	_$SYSTEM$_Ld46
_$SYSTEM$_Ld46:
	.ascii	"%s\015\012\000"

.section .rodata.n__$SYSTEM$_Ld47,"d"
.globl	_$SYSTEM$_Ld47
_$SYSTEM$_Ld47:
	.ascii	"PChar(AString)\000"

.section .rodata.n__$SYSTEM$_Ld48,"d"
.globl	_$SYSTEM$_Ld48
_$SYSTEM$_Ld48:
	.ascii	">>----->>> %s\000"

.section .rodata.n_.Ld49,"d"
.Ld49$strlab:
	.short	0,1
	.long	0
	.quad	-1,13
.Ld49:
	.ascii	"-----------> \000"

.section .rodata.n__$SYSTEM$_Ld50,"d"
.globl	_$SYSTEM$_Ld50
_$SYSTEM$_Ld50:
	.ascii	"uhuhuhuhu\000"

.section .rodata.n_.Ld51,"d"
.Ld51$strlab:
	.short	0,1
	.long	0
	.quad	-1,4
.Ld51:
	.ascii	"TCPU\000"

.section .rodata.n__$SYSTEM$_Ld52,"d"
.globl	_$SYSTEM$_Ld52
_$SYSTEM$_Ld52:
	.ascii	"memory 5555\000"

.section .rodata.n_.Ld53,"d"
.Ld53$strlab:
	.short	0,1
	.long	0
	.quad	-1,7
.Ld53:
	.ascii	"TMemory\000"

.section .rodata.n__$SYSTEM$_Ld54,"d"
.globl	_$SYSTEM$_Ld54
_$SYSTEM$_Ld54:
	.ascii	"start...\000"

.section .rodata.n_.Ld55,"d"
.Ld55$strlab:
	.short	0,1
	.long	0
	.quad	-1,7
.Ld55:
	.ascii	"TSystem\000"

.section .rodata.n__$SYSTEM$_Ld64,"d"
.globl	_$SYSTEM$_Ld64
_$SYSTEM$_Ld64:
	.ascii	"---< hocus pocus >-----\015\012\000"

.section .rodata.n__$SYSTEM$_Ld65,"d"
.globl	_$SYSTEM$_Ld65
_$SYSTEM$_Ld65:
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

.section .rodata.n_RTTI_$SYSTEM_$$_def00000051,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000051
RTTI_$SYSTEM_$$_def00000051:
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
	.quad	RTTI_$SYSTEM_$$_def00000051$indirect
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

.section .rodata.n_RTTI_$SYSTEM_$$_def00000056,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000056
RTTI_$SYSTEM_$$_def00000056:
	.byte	12,0
	.quad	8,8
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.byte	1
	.quad	RTTI_$SYSTEM_$$_SHORTINT$indirect

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
	.quad	RTTI_$SYSTEM_$$_def00000056$indirect
	.quad	8
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
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.quad	8
	.quad	RTTI_$SYSTEM_$$_BYTE$indirect
	.quad	9
	.quad	RTTI_$SYSTEM_$$_def00000058$indirect
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

.section .rodata.n_RTTI_$SYSTEM_$$_def0000005E,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def0000005E
RTTI_$SYSTEM_$$_def0000005E:
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
	.quad	RTTI_$SYSTEM_$$_def0000005E$indirect
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

.section .rodata.n_RTTI_$SYSTEM_$$_def000000AC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000000AC
RTTI_$SYSTEM_$$_def000000AC:
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

.section .rodata.n_RTTI_$SYSTEM_$$_def000000C3,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000000C3
RTTI_$SYSTEM_$$_def000000C3:
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
	.quad	RTTI_$SYSTEM_$$_def000000C3$indirect
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

.section .rodata.n_RTTI_$SYSTEM_$$_def000001A0,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000001A0
RTTI_$SYSTEM_$$_def000001A0:
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
	.quad	RTTI_$SYSTEM_$$_def000001A0$indirect
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

.section .rodata.n_RTTI_$SYSTEM_$$_def00000051,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000051$indirect
RTTI_$SYSTEM_$$_def00000051$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000051

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

.section .rodata.n_RTTI_$SYSTEM_$$_def00000056,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def00000056$indirect
RTTI_$SYSTEM_$$_def00000056$indirect:
	.quad	RTTI_$SYSTEM_$$_def00000056

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

.section .rodata.n_RTTI_$SYSTEM_$$_def0000005E,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def0000005E$indirect
RTTI_$SYSTEM_$$_def0000005E$indirect:
	.quad	RTTI_$SYSTEM_$$_def0000005E

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

.section .rodata.n_RTTI_$SYSTEM_$$_def000000AC,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000000AC$indirect
RTTI_$SYSTEM_$$_def000000AC$indirect:
	.quad	RTTI_$SYSTEM_$$_def000000AC

.section .rodata.n_INIT_$SYSTEM_$$_TENTRYINFORMATION,"d"
	.balign 8
.globl	INIT_$SYSTEM_$$_TENTRYINFORMATION$indirect
INIT_$SYSTEM_$$_TENTRYINFORMATION$indirect:
	.quad	INIT_$SYSTEM_$$_TENTRYINFORMATION

.section .rodata.n_RTTI_$SYSTEM_$$_def000000C3,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000000C3$indirect
RTTI_$SYSTEM_$$_def000000C3$indirect:
	.quad	RTTI_$SYSTEM_$$_def000000C3

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

.section .rodata.n_RTTI_$SYSTEM_$$_def000001A0,"d"
	.balign 8
.globl	RTTI_$SYSTEM_$$_def000001A0$indirect
RTTI_$SYSTEM_$$_def000001A0$indirect:
	.quad	RTTI_$SYSTEM_$$_def000001A0

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
.Lc453:
	.long	.Lc455-.Lc454
.Lc454:
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
.Lc455:
	.long	.Lc457-.Lc456
.Lc456:
	.secrel32	.Lc453
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.byte	4
	.long	.Lc3-.Lc1
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc457:
	.long	.Lc459-.Lc458
.Lc458:
	.secrel32	.Lc453
	.quad	.Lc4
	.quad	.Lc5-.Lc4
	.byte	4
	.long	.Lc6-.Lc4
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc459:
	.long	.Lc461-.Lc460
.Lc460:
	.secrel32	.Lc453
	.quad	.Lc7
	.quad	.Lc8-.Lc7
	.byte	4
	.long	.Lc9-.Lc7
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc461:
	.long	.Lc463-.Lc462
.Lc462:
	.secrel32	.Lc453
	.quad	.Lc10
	.quad	.Lc11-.Lc10
	.byte	4
	.long	.Lc12-.Lc10
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc463:
	.long	.Lc465-.Lc464
.Lc464:
	.secrel32	.Lc453
	.quad	.Lc13
	.quad	.Lc14-.Lc13
	.byte	4
	.long	.Lc15-.Lc13
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc465:
	.long	.Lc467-.Lc466
.Lc466:
	.secrel32	.Lc453
	.quad	.Lc16
	.quad	.Lc17-.Lc16
	.byte	4
	.long	.Lc18-.Lc16
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc467:
	.long	.Lc469-.Lc468
.Lc468:
	.secrel32	.Lc453
	.quad	.Lc19
	.quad	.Lc20-.Lc19
	.byte	4
	.long	.Lc21-.Lc19
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc469:
	.long	.Lc471-.Lc470
.Lc470:
	.secrel32	.Lc453
	.quad	.Lc22
	.quad	.Lc23-.Lc22
	.byte	4
	.long	.Lc24-.Lc22
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc471:
	.long	.Lc473-.Lc472
.Lc472:
	.secrel32	.Lc453
	.quad	.Lc25
	.quad	.Lc26-.Lc25
	.byte	4
	.long	.Lc27-.Lc25
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc473:
	.long	.Lc475-.Lc474
.Lc474:
	.secrel32	.Lc453
	.quad	.Lc28
	.quad	.Lc29-.Lc28
	.byte	4
	.long	.Lc30-.Lc28
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc475:
	.long	.Lc477-.Lc476
.Lc476:
	.secrel32	.Lc453
	.quad	.Lc31
	.quad	.Lc32-.Lc31
	.byte	4
	.long	.Lc33-.Lc31
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc477:
	.long	.Lc479-.Lc478
.Lc478:
	.secrel32	.Lc453
	.quad	.Lc34
	.quad	.Lc35-.Lc34
	.byte	4
	.long	.Lc36-.Lc34
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc479:
	.long	.Lc481-.Lc480
.Lc480:
	.secrel32	.Lc453
	.quad	.Lc37
	.quad	.Lc38-.Lc37
	.byte	4
	.long	.Lc39-.Lc37
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc481:
	.long	.Lc483-.Lc482
.Lc482:
	.secrel32	.Lc453
	.quad	.Lc40
	.quad	.Lc41-.Lc40
	.byte	4
	.long	.Lc42-.Lc40
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc483:
	.long	.Lc485-.Lc484
.Lc484:
	.secrel32	.Lc453
	.quad	.Lc43
	.quad	.Lc44-.Lc43
	.byte	4
	.long	.Lc45-.Lc43
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc485:
	.long	.Lc487-.Lc486
.Lc486:
	.secrel32	.Lc453
	.quad	.Lc46
	.quad	.Lc47-.Lc46
	.byte	4
	.long	.Lc48-.Lc46
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc487:
	.long	.Lc489-.Lc488
.Lc488:
	.secrel32	.Lc453
	.quad	.Lc49
	.quad	.Lc50-.Lc49
	.balign 4,0
.Lc489:
	.long	.Lc491-.Lc490
.Lc490:
	.secrel32	.Lc453
	.quad	.Lc51
	.quad	.Lc52-.Lc51
	.balign 4,0
.Lc491:
	.long	.Lc493-.Lc492
.Lc492:
	.secrel32	.Lc453
	.quad	.Lc53
	.quad	.Lc54-.Lc53
	.balign 4,0
.Lc493:
	.long	.Lc495-.Lc494
.Lc494:
	.secrel32	.Lc453
	.quad	.Lc55
	.quad	.Lc56-.Lc55
	.balign 4,0
.Lc495:
	.long	.Lc497-.Lc496
.Lc496:
	.secrel32	.Lc453
	.quad	.Lc57
	.quad	.Lc58-.Lc57
	.balign 4,0
.Lc497:
	.long	.Lc499-.Lc498
.Lc498:
	.secrel32	.Lc453
	.quad	.Lc59
	.quad	.Lc60-.Lc59
	.byte	4
	.long	.Lc61-.Lc59
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc499:
	.long	.Lc501-.Lc500
.Lc500:
	.secrel32	.Lc453
	.quad	.Lc62
	.quad	.Lc63-.Lc62
	.balign 4,0
.Lc501:
	.long	.Lc503-.Lc502
.Lc502:
	.secrel32	.Lc453
	.quad	.Lc64
	.quad	.Lc65-.Lc64
	.balign 4,0
.Lc503:
	.long	.Lc505-.Lc504
.Lc504:
	.secrel32	.Lc453
	.quad	.Lc66
	.quad	.Lc67-.Lc66
	.byte	4
	.long	.Lc68-.Lc66
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc505:
	.long	.Lc507-.Lc506
.Lc506:
	.secrel32	.Lc453
	.quad	.Lc69
	.quad	.Lc70-.Lc69
	.balign 4,0
.Lc507:
	.long	.Lc509-.Lc508
.Lc508:
	.secrel32	.Lc453
	.quad	.Lc71
	.quad	.Lc72-.Lc71
	.balign 4,0
.Lc509:
	.long	.Lc511-.Lc510
.Lc510:
	.secrel32	.Lc453
	.quad	.Lc73
	.quad	.Lc74-.Lc73
	.balign 4,0
.Lc511:
	.long	.Lc513-.Lc512
.Lc512:
	.secrel32	.Lc453
	.quad	.Lc75
	.quad	.Lc76-.Lc75
	.balign 4,0
.Lc513:
	.long	.Lc515-.Lc514
.Lc514:
	.secrel32	.Lc453
	.quad	.Lc77
	.quad	.Lc78-.Lc77
	.byte	4
	.long	.Lc79-.Lc77
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc80-.Lc79
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc81-.Lc80
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc515:
	.long	.Lc517-.Lc516
.Lc516:
	.secrel32	.Lc453
	.quad	.Lc82
	.quad	.Lc83-.Lc82
	.byte	4
	.long	.Lc84-.Lc82
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc85-.Lc84
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc86-.Lc85
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc517:
	.long	.Lc519-.Lc518
.Lc518:
	.secrel32	.Lc453
	.quad	.Lc87
	.quad	.Lc88-.Lc87
	.balign 4,0
.Lc519:
	.long	.Lc521-.Lc520
.Lc520:
	.secrel32	.Lc453
	.quad	.Lc89
	.quad	.Lc90-.Lc89
	.byte	4
	.long	.Lc91-.Lc89
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc92-.Lc91
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc93-.Lc92
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc521:
	.long	.Lc523-.Lc522
.Lc522:
	.secrel32	.Lc453
	.quad	.Lc94
	.quad	.Lc95-.Lc94
	.byte	4
	.long	.Lc96-.Lc94
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc97-.Lc96
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc98-.Lc97
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc523:
	.long	.Lc525-.Lc524
.Lc524:
	.secrel32	.Lc453
	.quad	.Lc99
	.quad	.Lc100-.Lc99
	.byte	4
	.long	.Lc101-.Lc99
	.byte	14
	.uleb128	56
	.balign 4,0
.Lc525:
	.long	.Lc527-.Lc526
.Lc526:
	.secrel32	.Lc453
	.quad	.Lc102
	.quad	.Lc103-.Lc102
	.byte	4
	.long	.Lc104-.Lc102
	.byte	14
	.uleb128	64
	.balign 4,0
.Lc527:
	.long	.Lc529-.Lc528
.Lc528:
	.secrel32	.Lc453
	.quad	.Lc105
	.quad	.Lc106-.Lc105
	.byte	4
	.long	.Lc107-.Lc105
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc108-.Lc107
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc109-.Lc108
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc529:
	.long	.Lc531-.Lc530
.Lc530:
	.secrel32	.Lc453
	.quad	.Lc110
	.quad	.Lc111-.Lc110
	.byte	4
	.long	.Lc112-.Lc110
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc531:
	.long	.Lc533-.Lc532
.Lc532:
	.secrel32	.Lc453
	.quad	.Lc113
	.quad	.Lc114-.Lc113
	.balign 4,0
.Lc533:
	.long	.Lc535-.Lc534
.Lc534:
	.secrel32	.Lc453
	.quad	.Lc115
	.quad	.Lc116-.Lc115
	.balign 4,0
.Lc535:
	.long	.Lc537-.Lc536
.Lc536:
	.secrel32	.Lc453
	.quad	.Lc117
	.quad	.Lc118-.Lc117
	.balign 4,0
.Lc537:
	.long	.Lc539-.Lc538
.Lc538:
	.secrel32	.Lc453
	.quad	.Lc119
	.quad	.Lc120-.Lc119
	.balign 4,0
.Lc539:
	.long	.Lc541-.Lc540
.Lc540:
	.secrel32	.Lc453
	.quad	.Lc121
	.quad	.Lc122-.Lc121
	.balign 4,0
.Lc541:
	.long	.Lc543-.Lc542
.Lc542:
	.secrel32	.Lc453
	.quad	.Lc123
	.quad	.Lc124-.Lc123
	.balign 4,0
.Lc543:
	.long	.Lc545-.Lc544
.Lc544:
	.secrel32	.Lc453
	.quad	.Lc125
	.quad	.Lc126-.Lc125
	.balign 4,0
.Lc545:
	.long	.Lc547-.Lc546
.Lc546:
	.secrel32	.Lc453
	.quad	.Lc127
	.quad	.Lc128-.Lc127
	.balign 4,0
.Lc547:
	.long	.Lc549-.Lc548
.Lc548:
	.secrel32	.Lc453
	.quad	.Lc129
	.quad	.Lc130-.Lc129
	.balign 4,0
.Lc549:
	.long	.Lc551-.Lc550
.Lc550:
	.secrel32	.Lc453
	.quad	.Lc131
	.quad	.Lc132-.Lc131
	.byte	4
	.long	.Lc133-.Lc131
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc551:
	.long	.Lc553-.Lc552
.Lc552:
	.secrel32	.Lc453
	.quad	.Lc134
	.quad	.Lc135-.Lc134
	.byte	4
	.long	.Lc136-.Lc134
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc553:
	.long	.Lc555-.Lc554
.Lc554:
	.secrel32	.Lc453
	.quad	.Lc137
	.quad	.Lc138-.Lc137
	.byte	4
	.long	.Lc139-.Lc137
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc555:
	.long	.Lc557-.Lc556
.Lc556:
	.secrel32	.Lc453
	.quad	.Lc140
	.quad	.Lc141-.Lc140
	.byte	4
	.long	.Lc142-.Lc140
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc557:
	.long	.Lc559-.Lc558
.Lc558:
	.secrel32	.Lc453
	.quad	.Lc143
	.quad	.Lc144-.Lc143
	.byte	4
	.long	.Lc145-.Lc143
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc559:
	.long	.Lc561-.Lc560
.Lc560:
	.secrel32	.Lc453
	.quad	.Lc146
	.quad	.Lc147-.Lc146
	.balign 4,0
.Lc561:
	.long	.Lc563-.Lc562
.Lc562:
	.secrel32	.Lc453
	.quad	.Lc148
	.quad	.Lc149-.Lc148
	.byte	4
	.long	.Lc150-.Lc148
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc563:
	.long	.Lc565-.Lc564
.Lc564:
	.secrel32	.Lc453
	.quad	.Lc151
	.quad	.Lc152-.Lc151
	.byte	4
	.long	.Lc153-.Lc151
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc565:
	.long	.Lc567-.Lc566
.Lc566:
	.secrel32	.Lc453
	.quad	.Lc154
	.quad	.Lc155-.Lc154
	.byte	4
	.long	.Lc156-.Lc154
	.byte	14
	.uleb128	56
	.balign 4,0
.Lc567:
	.long	.Lc569-.Lc568
.Lc568:
	.secrel32	.Lc453
	.quad	.Lc157
	.quad	.Lc158-.Lc157
	.byte	4
	.long	.Lc159-.Lc157
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc569:
	.long	.Lc571-.Lc570
.Lc570:
	.secrel32	.Lc453
	.quad	.Lc160
	.quad	.Lc161-.Lc160
	.byte	4
	.long	.Lc162-.Lc160
	.byte	14
	.uleb128	64
	.balign 4,0
.Lc571:
	.long	.Lc573-.Lc572
.Lc572:
	.secrel32	.Lc453
	.quad	.Lc163
	.quad	.Lc164-.Lc163
	.byte	4
	.long	.Lc165-.Lc163
	.byte	14
	.uleb128	72
	.balign 4,0
.Lc573:
	.long	.Lc575-.Lc574
.Lc574:
	.secrel32	.Lc453
	.quad	.Lc166
	.quad	.Lc167-.Lc166
	.byte	4
	.long	.Lc168-.Lc166
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc575:
	.long	.Lc577-.Lc576
.Lc576:
	.secrel32	.Lc453
	.quad	.Lc169
	.quad	.Lc170-.Lc169
	.byte	4
	.long	.Lc171-.Lc169
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc577:
	.long	.Lc579-.Lc578
.Lc578:
	.secrel32	.Lc453
	.quad	.Lc172
	.quad	.Lc173-.Lc172
	.byte	4
	.long	.Lc174-.Lc172
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc579:
	.long	.Lc581-.Lc580
.Lc580:
	.secrel32	.Lc453
	.quad	.Lc175
	.quad	.Lc176-.Lc175
	.byte	4
	.long	.Lc177-.Lc175
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc581:
	.long	.Lc583-.Lc582
.Lc582:
	.secrel32	.Lc453
	.quad	.Lc178
	.quad	.Lc179-.Lc178
	.byte	4
	.long	.Lc180-.Lc178
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc583:
	.long	.Lc585-.Lc584
.Lc584:
	.secrel32	.Lc453
	.quad	.Lc181
	.quad	.Lc182-.Lc181
	.byte	4
	.long	.Lc183-.Lc181
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc184-.Lc183
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc185-.Lc184
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc585:
	.long	.Lc587-.Lc586
.Lc586:
	.secrel32	.Lc453
	.quad	.Lc186
	.quad	.Lc187-.Lc186
	.byte	4
	.long	.Lc188-.Lc186
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc587:
	.long	.Lc589-.Lc588
.Lc588:
	.secrel32	.Lc453
	.quad	.Lc189
	.quad	.Lc190-.Lc189
	.balign 4,0
.Lc589:
	.long	.Lc591-.Lc590
.Lc590:
	.secrel32	.Lc453
	.quad	.Lc191
	.quad	.Lc192-.Lc191
	.balign 4,0
.Lc591:
	.long	.Lc593-.Lc592
.Lc592:
	.secrel32	.Lc453
	.quad	.Lc193
	.quad	.Lc194-.Lc193
	.balign 4,0
.Lc593:
	.long	.Lc595-.Lc594
.Lc594:
	.secrel32	.Lc453
	.quad	.Lc195
	.quad	.Lc196-.Lc195
	.byte	4
	.long	.Lc197-.Lc195
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc595:
	.long	.Lc597-.Lc596
.Lc596:
	.secrel32	.Lc453
	.quad	.Lc198
	.quad	.Lc199-.Lc198
	.balign 4,0
.Lc597:
	.long	.Lc599-.Lc598
.Lc598:
	.secrel32	.Lc453
	.quad	.Lc200
	.quad	.Lc201-.Lc200
	.byte	4
	.long	.Lc202-.Lc200
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc599:
	.long	.Lc601-.Lc600
.Lc600:
	.secrel32	.Lc453
	.quad	.Lc203
	.quad	.Lc204-.Lc203
	.byte	4
	.long	.Lc205-.Lc203
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc601:
	.long	.Lc603-.Lc602
.Lc602:
	.secrel32	.Lc453
	.quad	.Lc206
	.quad	.Lc207-.Lc206
	.balign 4,0
.Lc603:
	.long	.Lc605-.Lc604
.Lc604:
	.secrel32	.Lc453
	.quad	.Lc208
	.quad	.Lc209-.Lc208
	.byte	4
	.long	.Lc210-.Lc208
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc605:
	.long	.Lc607-.Lc606
.Lc606:
	.secrel32	.Lc453
	.quad	.Lc211
	.quad	.Lc212-.Lc211
	.byte	4
	.long	.Lc213-.Lc211
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc607:
	.long	.Lc609-.Lc608
.Lc608:
	.secrel32	.Lc453
	.quad	.Lc214
	.quad	.Lc215-.Lc214
	.byte	4
	.long	.Lc216-.Lc214
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc609:
	.long	.Lc611-.Lc610
.Lc610:
	.secrel32	.Lc453
	.quad	.Lc217
	.quad	.Lc218-.Lc217
	.byte	4
	.long	.Lc219-.Lc217
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc611:
	.long	.Lc613-.Lc612
.Lc612:
	.secrel32	.Lc453
	.quad	.Lc220
	.quad	.Lc221-.Lc220
	.byte	4
	.long	.Lc222-.Lc220
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc223-.Lc222
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc224-.Lc223
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc613:
	.long	.Lc615-.Lc614
.Lc614:
	.secrel32	.Lc453
	.quad	.Lc225
	.quad	.Lc226-.Lc225
	.byte	4
	.long	.Lc227-.Lc225
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc615:
	.long	.Lc617-.Lc616
.Lc616:
	.secrel32	.Lc453
	.quad	.Lc228
	.quad	.Lc229-.Lc228
	.byte	4
	.long	.Lc230-.Lc228
	.byte	14
	.uleb128	56
	.balign 4,0
.Lc617:
	.long	.Lc619-.Lc618
.Lc618:
	.secrel32	.Lc453
	.quad	.Lc231
	.quad	.Lc232-.Lc231
	.balign 4,0
.Lc619:
	.long	.Lc621-.Lc620
.Lc620:
	.secrel32	.Lc453
	.quad	.Lc233
	.quad	.Lc234-.Lc233
	.byte	4
	.long	.Lc235-.Lc233
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc236-.Lc235
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc237-.Lc236
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc621:
	.long	.Lc623-.Lc622
.Lc622:
	.secrel32	.Lc453
	.quad	.Lc238
	.quad	.Lc239-.Lc238
	.balign 4,0
.Lc623:
	.long	.Lc625-.Lc624
.Lc624:
	.secrel32	.Lc453
	.quad	.Lc240
	.quad	.Lc241-.Lc240
	.byte	4
	.long	.Lc242-.Lc240
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc625:
	.long	.Lc627-.Lc626
.Lc626:
	.secrel32	.Lc453
	.quad	.Lc243
	.quad	.Lc244-.Lc243
	.byte	4
	.long	.Lc245-.Lc243
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc627:
	.long	.Lc629-.Lc628
.Lc628:
	.secrel32	.Lc453
	.quad	.Lc246
	.quad	.Lc247-.Lc246
	.byte	4
	.long	.Lc248-.Lc246
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc249-.Lc248
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc250-.Lc249
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc629:
	.long	.Lc631-.Lc630
.Lc630:
	.secrel32	.Lc453
	.quad	.Lc251
	.quad	.Lc252-.Lc251
	.byte	4
	.long	.Lc253-.Lc251
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc631:
	.long	.Lc633-.Lc632
.Lc632:
	.secrel32	.Lc453
	.quad	.Lc254
	.quad	.Lc255-.Lc254
	.byte	4
	.long	.Lc256-.Lc254
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc633:
	.long	.Lc635-.Lc634
.Lc634:
	.secrel32	.Lc453
	.quad	.Lc257
	.quad	.Lc258-.Lc257
	.balign 4,0
.Lc635:
	.long	.Lc637-.Lc636
.Lc636:
	.secrel32	.Lc453
	.quad	.Lc259
	.quad	.Lc260-.Lc259
	.byte	4
	.long	.Lc261-.Lc259
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc637:
	.long	.Lc639-.Lc638
.Lc638:
	.secrel32	.Lc453
	.quad	.Lc262
	.quad	.Lc263-.Lc262
	.byte	4
	.long	.Lc264-.Lc262
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc639:
	.long	.Lc641-.Lc640
.Lc640:
	.secrel32	.Lc453
	.quad	.Lc265
	.quad	.Lc266-.Lc265
	.byte	4
	.long	.Lc267-.Lc265
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc641:
	.long	.Lc643-.Lc642
.Lc642:
	.secrel32	.Lc453
	.quad	.Lc268
	.quad	.Lc269-.Lc268
	.byte	4
	.long	.Lc270-.Lc268
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc643:
	.long	.Lc645-.Lc644
.Lc644:
	.secrel32	.Lc453
	.quad	.Lc271
	.quad	.Lc272-.Lc271
	.byte	4
	.long	.Lc273-.Lc271
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc645:
	.long	.Lc647-.Lc646
.Lc646:
	.secrel32	.Lc453
	.quad	.Lc274
	.quad	.Lc275-.Lc274
	.byte	4
	.long	.Lc276-.Lc274
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc647:
	.long	.Lc649-.Lc648
.Lc648:
	.secrel32	.Lc453
	.quad	.Lc277
	.quad	.Lc278-.Lc277
	.balign 4,0
.Lc649:
	.long	.Lc651-.Lc650
.Lc650:
	.secrel32	.Lc453
	.quad	.Lc279
	.quad	.Lc280-.Lc279
	.byte	4
	.long	.Lc281-.Lc279
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc282-.Lc281
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc283-.Lc282
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc651:
	.long	.Lc653-.Lc652
.Lc652:
	.secrel32	.Lc453
	.quad	.Lc284
	.quad	.Lc285-.Lc284
	.byte	4
	.long	.Lc286-.Lc284
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc287-.Lc286
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc288-.Lc287
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc653:
	.long	.Lc655-.Lc654
.Lc654:
	.secrel32	.Lc453
	.quad	.Lc289
	.quad	.Lc290-.Lc289
	.byte	4
	.long	.Lc291-.Lc289
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc655:
	.long	.Lc657-.Lc656
.Lc656:
	.secrel32	.Lc453
	.quad	.Lc292
	.quad	.Lc293-.Lc292
	.byte	4
	.long	.Lc294-.Lc292
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc657:
	.long	.Lc659-.Lc658
.Lc658:
	.secrel32	.Lc453
	.quad	.Lc295
	.quad	.Lc296-.Lc295
	.byte	4
	.long	.Lc297-.Lc295
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc659:
	.long	.Lc661-.Lc660
.Lc660:
	.secrel32	.Lc453
	.quad	.Lc298
	.quad	.Lc299-.Lc298
	.byte	4
	.long	.Lc300-.Lc298
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc661:
	.long	.Lc663-.Lc662
.Lc662:
	.secrel32	.Lc453
	.quad	.Lc301
	.quad	.Lc302-.Lc301
	.byte	4
	.long	.Lc303-.Lc301
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc663:
	.long	.Lc665-.Lc664
.Lc664:
	.secrel32	.Lc453
	.quad	.Lc304
	.quad	.Lc305-.Lc304
	.byte	4
	.long	.Lc306-.Lc304
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc665:
	.long	.Lc667-.Lc666
.Lc666:
	.secrel32	.Lc453
	.quad	.Lc307
	.quad	.Lc308-.Lc307
	.byte	4
	.long	.Lc309-.Lc307
	.byte	14
	.uleb128	40
	.balign 4,0
.Lc667:
	.long	.Lc669-.Lc668
.Lc668:
	.secrel32	.Lc453
	.quad	.Lc310
	.quad	.Lc311-.Lc310
	.byte	4
	.long	.Lc312-.Lc310
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc669:
	.long	.Lc671-.Lc670
.Lc670:
	.secrel32	.Lc453
	.quad	.Lc313
	.quad	.Lc314-.Lc313
	.byte	4
	.long	.Lc315-.Lc313
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc671:
	.long	.Lc673-.Lc672
.Lc672:
	.secrel32	.Lc453
	.quad	.Lc316
	.quad	.Lc317-.Lc316
	.byte	4
	.long	.Lc318-.Lc316
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc319-.Lc318
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc320-.Lc319
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc673:
	.long	.Lc675-.Lc674
.Lc674:
	.secrel32	.Lc453
	.quad	.Lc321
	.quad	.Lc322-.Lc321
	.byte	4
	.long	.Lc323-.Lc321
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc675:
	.long	.Lc677-.Lc676
.Lc676:
	.secrel32	.Lc453
	.quad	.Lc324
	.quad	.Lc325-.Lc324
	.byte	4
	.long	.Lc326-.Lc324
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc677:
	.long	.Lc679-.Lc678
.Lc678:
	.secrel32	.Lc453
	.quad	.Lc327
	.quad	.Lc328-.Lc327
	.byte	4
	.long	.Lc329-.Lc327
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc330-.Lc329
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc331-.Lc330
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc679:
	.long	.Lc681-.Lc680
.Lc680:
	.secrel32	.Lc453
	.quad	.Lc332
	.quad	.Lc333-.Lc332
	.byte	4
	.long	.Lc334-.Lc332
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc335-.Lc334
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc336-.Lc335
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc681:
	.long	.Lc683-.Lc682
.Lc682:
	.secrel32	.Lc453
	.quad	.Lc337
	.quad	.Lc338-.Lc337
	.byte	4
	.long	.Lc339-.Lc337
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc340-.Lc339
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc341-.Lc340
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc683:
	.long	.Lc685-.Lc684
.Lc684:
	.secrel32	.Lc453
	.quad	.Lc342
	.quad	.Lc343-.Lc342
	.byte	4
	.long	.Lc344-.Lc342
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc345-.Lc344
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc346-.Lc345
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc685:
	.long	.Lc687-.Lc686
.Lc686:
	.secrel32	.Lc453
	.quad	.Lc347
	.quad	.Lc348-.Lc347
	.byte	4
	.long	.Lc349-.Lc347
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc350-.Lc349
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc351-.Lc350
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc687:
	.long	.Lc689-.Lc688
.Lc688:
	.secrel32	.Lc453
	.quad	.Lc352
	.quad	.Lc353-.Lc352
	.byte	4
	.long	.Lc354-.Lc352
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc355-.Lc354
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc356-.Lc355
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc689:
	.long	.Lc691-.Lc690
.Lc690:
	.secrel32	.Lc453
	.quad	.Lc357
	.quad	.Lc358-.Lc357
	.byte	4
	.long	.Lc359-.Lc357
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc360-.Lc359
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc361-.Lc360
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc691:
	.long	.Lc693-.Lc692
.Lc692:
	.secrel32	.Lc453
	.quad	.Lc362
	.quad	.Lc363-.Lc362
	.byte	4
	.long	.Lc364-.Lc362
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc365-.Lc364
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc366-.Lc365
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc693:
	.long	.Lc695-.Lc694
.Lc694:
	.secrel32	.Lc453
	.quad	.Lc367
	.quad	.Lc368-.Lc367
	.byte	4
	.long	.Lc369-.Lc367
	.byte	14
	.uleb128	16
	.balign 4,0
.Lc695:
	.long	.Lc697-.Lc696
.Lc696:
	.secrel32	.Lc453
	.quad	.Lc370
	.quad	.Lc371-.Lc370
	.byte	4
	.long	.Lc372-.Lc370
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc373-.Lc372
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc374-.Lc373
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc697:
	.long	.Lc699-.Lc698
.Lc698:
	.secrel32	.Lc453
	.quad	.Lc375
	.quad	.Lc376-.Lc375
	.byte	4
	.long	.Lc377-.Lc375
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc699:
	.long	.Lc701-.Lc700
.Lc700:
	.secrel32	.Lc453
	.quad	.Lc378
	.quad	.Lc379-.Lc378
	.byte	4
	.long	.Lc380-.Lc378
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc701:
	.long	.Lc703-.Lc702
.Lc702:
	.secrel32	.Lc453
	.quad	.Lc381
	.quad	.Lc382-.Lc381
	.byte	4
	.long	.Lc383-.Lc381
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc703:
	.long	.Lc705-.Lc704
.Lc704:
	.secrel32	.Lc453
	.quad	.Lc384
	.quad	.Lc385-.Lc384
	.balign 4,0
.Lc705:
	.long	.Lc707-.Lc706
.Lc706:
	.secrel32	.Lc453
	.quad	.Lc386
	.quad	.Lc387-.Lc386
	.byte	4
	.long	.Lc388-.Lc386
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc707:
	.long	.Lc709-.Lc708
.Lc708:
	.secrel32	.Lc453
	.quad	.Lc389
	.quad	.Lc390-.Lc389
	.byte	4
	.long	.Lc391-.Lc389
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc709:
	.long	.Lc711-.Lc710
.Lc710:
	.secrel32	.Lc453
	.quad	.Lc392
	.quad	.Lc393-.Lc392
	.byte	4
	.long	.Lc394-.Lc392
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc395-.Lc394
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc396-.Lc395
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc711:
	.long	.Lc713-.Lc712
.Lc712:
	.secrel32	.Lc453
	.quad	.Lc397
	.quad	.Lc398-.Lc397
	.byte	4
	.long	.Lc399-.Lc397
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc400-.Lc399
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc401-.Lc400
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc713:
	.long	.Lc715-.Lc714
.Lc714:
	.secrel32	.Lc453
	.quad	.Lc402
	.quad	.Lc403-.Lc402
	.byte	4
	.long	.Lc404-.Lc402
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc405-.Lc404
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc406-.Lc405
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc715:
	.long	.Lc717-.Lc716
.Lc716:
	.secrel32	.Lc453
	.quad	.Lc407
	.quad	.Lc408-.Lc407
	.byte	4
	.long	.Lc409-.Lc407
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc410-.Lc409
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc411-.Lc410
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc717:
	.long	.Lc719-.Lc718
.Lc718:
	.secrel32	.Lc453
	.quad	.Lc412
	.quad	.Lc413-.Lc412
	.byte	4
	.long	.Lc414-.Lc412
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc719:
	.long	.Lc721-.Lc720
.Lc720:
	.secrel32	.Lc453
	.quad	.Lc415
	.quad	.Lc416-.Lc415
	.byte	4
	.long	.Lc417-.Lc415
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc721:
	.long	.Lc723-.Lc722
.Lc722:
	.secrel32	.Lc453
	.quad	.Lc418
	.quad	.Lc419-.Lc418
	.byte	4
	.long	.Lc420-.Lc418
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc723:
	.long	.Lc725-.Lc724
.Lc724:
	.secrel32	.Lc453
	.quad	.Lc421
	.quad	.Lc422-.Lc421
	.byte	4
	.long	.Lc423-.Lc421
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc725:
	.long	.Lc727-.Lc726
.Lc726:
	.secrel32	.Lc453
	.quad	.Lc424
	.quad	.Lc425-.Lc424
	.byte	4
	.long	.Lc426-.Lc424
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc727:
	.long	.Lc729-.Lc728
.Lc728:
	.secrel32	.Lc453
	.quad	.Lc427
	.quad	.Lc428-.Lc427
	.byte	4
	.long	.Lc429-.Lc427
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc729:
	.long	.Lc731-.Lc730
.Lc730:
	.secrel32	.Lc453
	.quad	.Lc430
	.quad	.Lc431-.Lc430
	.byte	4
	.long	.Lc432-.Lc430
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc731:
	.long	.Lc733-.Lc732
.Lc732:
	.secrel32	.Lc453
	.quad	.Lc433
	.quad	.Lc434-.Lc433
	.byte	4
	.long	.Lc435-.Lc433
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc436-.Lc435
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc437-.Lc436
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc733:
	.long	.Lc735-.Lc734
.Lc734:
	.secrel32	.Lc453
	.quad	.Lc438
	.quad	.Lc439-.Lc438
	.byte	4
	.long	.Lc440-.Lc438
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc735:
	.long	.Lc737-.Lc736
.Lc736:
	.secrel32	.Lc453
	.quad	.Lc441
	.quad	.Lc442-.Lc441
	.byte	4
	.long	.Lc443-.Lc441
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc737:
	.long	.Lc739-.Lc738
.Lc738:
	.secrel32	.Lc453
	.quad	.Lc444
	.quad	.Lc445-.Lc444
	.byte	4
	.long	.Lc446-.Lc444
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc739:
	.long	.Lc741-.Lc740
.Lc740:
	.secrel32	.Lc453
	.quad	.Lc447
	.quad	.Lc448-.Lc447
	.byte	4
	.long	.Lc449-.Lc447
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc741:
	.long	.Lc743-.Lc742
.Lc742:
	.secrel32	.Lc453
	.quad	.Lc450
	.quad	.Lc451-.Lc450
	.byte	4
	.long	.Lc452-.Lc450
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc743:
# End asmlist al_dwarf_frame

