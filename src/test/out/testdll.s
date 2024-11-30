	.file "testdll.pas"
# Begin asmlist al_procedures

.section .text.n_p$testdll_$$_test1dll,"x"
.globl	P$TESTDLL_$$_TEST1DLL
P$TESTDLL_$$_TEST1DLL:
.Lc1:
.seh_proc P$TESTDLL_$$_TEST1DLL
	leaq	-40(%rsp),%rsp
.Lc3:
.seh_stackalloc 40
.seh_endprologue
	xorl	%eax,%eax
	leaq	_$TESTDLL$_Ld1(%rip),%r8
	leaq	_$TESTDLL$_Ld2(%rip),%rdx
	xorl	%ecx,%ecx
	movl	%eax,%r9d
	call	_$dll$user32$MessageBoxA
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc2:

.section .text.n_p$testdll_$$_main,"x"
.globl	PASCALMAIN
PASCALMAIN:
.globl	P$TESTDLL_$$_main
P$TESTDLL_$$_main:
.Lc4:
.seh_proc P$TESTDLL_$$_main
	leaq	-40(%rsp),%rsp
.Lc6:
.seh_stackalloc 40
.seh_endprologue
	call	fpc_libinitializeunits
	nop
	leaq	40(%rsp),%rsp
	ret
.seh_endproc
.Lc5:
# End asmlist al_procedures
# Begin asmlist al_globals

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
	.ascii	"FPC 3.2.2-r0d122c49 [2024/11/15] for x86_64 - Win64"

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

.section .rodata.n__$TESTDLL$_Ld1,"d"
.globl	_$TESTDLL$_Ld1
_$TESTDLL$_Ld1:
	.ascii	"info\000"

.section .rodata.n__$TESTDLL$_Ld2,"d"
.globl	_$TESTDLL$_Ld2
_$TESTDLL$_Ld2:
	.ascii	"lulu\000"
# End asmlist al_typedconsts
# Begin asmlist al_exports

.section .edata
.globl	EDATA_$P$TESTDLL
EDATA_$P$TESTDLL:
	.long	0
	.long	0
	.short	0
	.short	0
	.rva	.Lj5
	.long	1
	.long	1
	.long	1
	.rva	.Lj6
	.rva	.Lj7
	.rva	.Lj8
.Lj5:
	.ascii	"TESTDLL.dll\000"
	.balign 4,0
.Lj6:
	.rva	P$TESTDLL_$$_TEST1DLL
	.balign 4,0
.Lj7:
	.rva	.Lj9
	.balign 4,0
.Lj8:
	.short	0
	.balign 4,0
	.balign 2,0
.Lj9:
	.ascii	"test1dll\000"
# End asmlist al_exports
# Begin asmlist al_dwarf_frame

.section .debug_frame
.Lc7:
	.long	.Lc9-.Lc8
.Lc8:
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
.Lc9:
	.long	.Lc11-.Lc10
.Lc10:
	.secrel32	.Lc7
	.quad	.Lc1
	.quad	.Lc2-.Lc1
	.byte	4
	.long	.Lc3-.Lc1
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc11:
	.long	.Lc13-.Lc12
.Lc12:
	.secrel32	.Lc7
	.quad	.Lc4
	.quad	.Lc5-.Lc4
	.byte	4
	.long	.Lc6-.Lc4
	.byte	14
	.uleb128	48
	.balign 4,0
.Lc13:
# End asmlist al_dwarf_frame

