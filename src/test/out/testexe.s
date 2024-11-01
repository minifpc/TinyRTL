	.file "testexe.pas"
# Begin asmlist al_procedures

.section .text.n_p$testexe_$$_fin$00000002,"x"
P$TESTEXE_$$_fin$00000002:
.Lc1:
.seh_proc P$TESTEXE_$$_fin$00000002
	pushq	%rbp
.seh_pushreg %rbp
.Lc3:
.Lc4:
	movq	%rcx,%rbp
.Lc5:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
.Lj23:
	nop
.Lj22:
.Lj24:
	movq	$177,32(%rsp)
	movl	$161,%eax
	leaq	_$TESTEXE$_Ld7(%rip),%r8
	movl	$1,%edx
	leaq	VMT_$SYSTEM_$$_EXCEPTION(%rip),%rcx
	movq	%rax,%r9
	call	SYSTEM$_$EXCEPTION_$__$$_CREATE$PCHAR$POINTER$POINTER$$EXCEPTION
	movq	%rax,%rcx
	leaq	.Lj24(%rip),%rdx
	movq	%rbp,%r8
	call	fpc_raiseexception
	jmp	.Lj20
.Lj19:
	movq	TC_$SYSTEM_$$_DOS(%rip),%rcx
	leaq	_$TESTEXE$_Ld8(%rip),%rdx
	call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
	call	FPC_DONEEXCEPTION
.Lj25:
	nop
.Lj20:
	movq	U_$P$TESTEXE_$$_S1(%rip),%rdx
	xorl	%r9d,%r9d
	leaq	_$TESTEXE$_Ld9(%rip),%r8
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	nop
	leaq	48(%rsp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	1
	.long	1
	.rva	.Lj22
	.rva	.Lj19
	.rva	.Lj20

.section .text.n_p$testexe_$$_fin$00000002,"x"
.seh_endproc
.Lc2:

.section .text.n_main,"x"
.globl	PASCALMAIN
PASCALMAIN:
.globl	main
main:
.Lc6:
.seh_proc main
	pushq	%rbp
.seh_pushreg %rbp
.Lc8:
.Lc9:
	movq	%rsp,%rbp
.Lc10:
	leaq	-48(%rsp),%rsp
.seh_stackalloc 48
.seh_endprologue
	call	fpc_initializeunits
.Lj9:
	nop
.Lj5:
.Lj15:
	nop
.Lj14:
	movq	TC_$SYSTEM_$$_DOS(%rip),%rax
	leaq	_$TESTEXE$_Ld1(%rip),%rdx
	movq	%rax,%rcx
	call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
	movq	TC_$SYSTEM_$$_DOS(%rip),%rcx
	leaq	_$TESTEXE$_Ld2(%rip),%rdx
	call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
	call	_$dll$testdll$test1dll
.Lj16:
	movq	$177,32(%rsp)
	movl	$161,%r9d
	leaq	_$TESTEXE$_Ld3(%rip),%r8
	movl	$1,%edx
	leaq	VMT_$SYSTEM_$$_EXCEPTION(%rip),%rcx
	call	SYSTEM$_$EXCEPTION_$__$$_CREATE$PCHAR$POINTER$POINTER$$EXCEPTION
	movq	%rax,%rcx
	leaq	.Lj16(%rip),%rdx
	movq	%rbp,%r8
	call	fpc_raiseexception
	leaq	U_$P$TESTEXE_$$_S1(%rip),%rdx
	movq	TC_$SYSTEM_$$_DOS(%rip),%rcx
	leaq	_$TESTEXE$_Ld4(%rip),%r8
	call	SYSTEM$_$TDOSCMD_$__$$_READ$PCHAR$PCHAR
	movq	TC_$SYSTEM_$$_DOS(%rip),%rcx
	leaq	_$TESTEXE$_Ld5(%rip),%rdx
	call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
	movq	U_$P$TESTEXE_$$_S1(%rip),%rdx
	movq	TC_$SYSTEM_$$_DOS(%rip),%rcx
	call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
	jmp	.Lj12
.Lj11:
	movq	TC_$SYSTEM_$$_DOS(%rip),%rcx
	leaq	_$TESTEXE$_Ld6(%rip),%rdx
	call	SYSTEM$_$TDOSCMD_$__$$_WRITELN$PCHAR
	call	FPC_DONEEXCEPTION
.Lj17:
	nop
.Lj12:
.Lj7:
	nop
.Lj6:
	movq	%rbp,%rcx
	call	P$TESTEXE_$$_fin$00000002
	leaq	.Ld10(%rip),%rax
	movq	%rax,U_$P$TESTEXE_$$_S1(%rip)
	movq	%rax,%rdx
	xorl	%r9d,%r9d
	leaq	_$TESTEXE$_Ld11(%rip),%r8
	xorl	%ecx,%ecx
	call	_$dll$user32$MessageBoxA
	call	fpc_do_exit
	nop
	leaq	(%rbp),%rsp
	popq	%rbp
	ret
.seh_handler __FPC_specific_handler,@except,@unwind
.seh_handlerdata
	.long	2
	.long	1
	.rva	.Lj14
	.rva	.Lj11
	.rva	.Lj12
	.long	0
	.rva	.Lj5
	.rva	.Lj6
	.rva	P$TESTEXE_$$_fin$00000002

.section .text.n_main,"x"
.seh_endproc
.Lc7:
# End asmlist al_procedures
# Begin asmlist al_globals

.section .bss
	.balign 8
U_$P$TESTEXE_$$_S1:
	.zero 8

.section .data.n_INITFINAL,"d"
	.balign 8
.globl	INITFINAL
INITFINAL:
	.quad	1,0
	.quad	INIT$_$SYSTEM
	.quad	FINALIZE$_$SYSTEM

.section .data.n_FPC_THREADVARTABLES,"d"
	.balign 8
.globl	FPC_THREADVARTABLES
FPC_THREADVARTABLES:
	.long	0

.section .rodata.n_FPC_RESOURCESTRINGTABLES,"d"
	.balign 8
.globl	FPC_RESOURCESTRINGTABLES
FPC_RESOURCESTRINGTABLES:
	.quad	0

.section .data.n_FPC_WIDEINITTABLES,"d"
	.balign 8
.globl	FPC_WIDEINITTABLES
FPC_WIDEINITTABLES:
	.quad	0

.section .data.n_FPC_RESSTRINITTABLES,"d"
	.balign 8
.globl	FPC_RESSTRINITTABLES
FPC_RESSTRINITTABLES:
	.quad	0

.section .fpc.n_version
__fpc_ident:
	.ascii	"FPC 3.2.2 [2021/05/15] for x86_64 - Win64"

.section .data.n___heapsize,"d"
	.balign 8
.globl	__heapsize
__heapsize:
	.quad	0

.section .data.n___fpc_valgrind,"d"
	.balign 8
.globl	__fpc_valgrind
__fpc_valgrind:
	.byte	0
# End asmlist al_globals
# Begin asmlist al_typedconsts

.section .rodata.n__$TESTEXE$_Ld1,"d"
.globl	_$TESTEXE$_Ld1
_$TESTEXE$_Ld1:
	.ascii	"next String\000"

.section .rodata.n__$TESTEXE$_Ld2,"d"
.globl	_$TESTEXE$_Ld2
_$TESTEXE$_Ld2:
	.ascii	"dos string\000"

.section .rodata.n__$TESTEXE$_Ld3,"d"
.globl	_$TESTEXE$_Ld3
_$TESTEXE$_Ld3:
	.ascii	"wooops\000"

.section .rodata.n__$TESTEXE$_Ld4,"d"
.globl	_$TESTEXE$_Ld4
_$TESTEXE$_Ld4:
	.ascii	"Input: \000"

.section .rodata.n__$TESTEXE$_Ld5,"d"
.globl	_$TESTEXE$_Ld5
_$TESTEXE$_Ld5:
	.ascii	"--------\000"

.section .rodata.n__$TESTEXE$_Ld6,"d"
.globl	_$TESTEXE$_Ld6
_$TESTEXE$_Ld6:
	.ascii	"in exeception block\000"

.section .rodata.n__$TESTEXE$_Ld7,"d"
.globl	_$TESTEXE$_Ld7
_$TESTEXE$_Ld7:
	.ascii	"lila\000"

.section .rodata.n__$TESTEXE$_Ld8,"d"
.globl	_$TESTEXE$_Ld8
_$TESTEXE$_Ld8:
	.ascii	"mupf\000"

.section .rodata.n__$TESTEXE$_Ld9,"d"
.globl	_$TESTEXE$_Ld9
_$TESTEXE$_Ld9:
	.ascii	"Information\000"

.section .rodata.n_.Ld10,"d"
.Ld10$strlab:
	.short	0,1
	.long	0
	.quad	-1,45
.Ld10:
	.ascii	"    HELLO MINI TEAM !!!\015\012\015\012Have a nice "
	.ascii	"Day...\000"

.section .rodata.n__$TESTEXE$_Ld11,"d"
.globl	_$TESTEXE$_Ld11
_$TESTEXE$_Ld11:
	.ascii	"done\000"
# End asmlist al_typedconsts
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc11:
	.long	.Lc13-.Lc12
.Lc12:
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
.Lc13:
	.long	.Lc15-.Lc14
.Lc14:
	.secrel32	.Lc11
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.byte	4
	.long	.Lc3-.Lc1
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc4-.Lc3
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc5-.Lc4
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc15:
	.long	.Lc17-.Lc16
.Lc16:
	.secrel32	.Lc11
	.quad	.Lc6
	.quad	.Lc7-.Lc6
	.byte	4
	.long	.Lc8-.Lc6
	.byte	14
	.uleb128	16
	.byte	4
	.long	.Lc9-.Lc8
	.byte	5
	.uleb128	6
	.uleb128	4
	.byte	4
	.long	.Lc10-.Lc9
	.byte	13
	.uleb128	6
	.balign 4,0
.Lc17:
# End asmlist al_dwarf_frame

