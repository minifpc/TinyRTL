BITS 64
default rel
CPU x64


EXTERN	RTL_MEMORY_$$_MOVE$formal$formal$LONGDWORD
EXTERN	_$dll$user32$MessageBoxA
EXTERN	_$dll$kernel32$ExitProcess

SECTION .text
	GLOBAL P$TEST1_$$_ENTRY
P$TEST1_$$_ENTRY:
..@c1:

..@c3:
		mov	qword [rsp+32],rax
		lea	rdx,[rsp+32]
		lea	rcx,[rsp+32]
		mov	r8d,4
		call	RTL_MEMORY_$$_MOVE$formal$formal$LONGDWORD
		xor	r9d,r9d
		lea	r8,[_$TEST1$_Ld2]
		lea	rdx,[_$TEST1$_Ld3]
		xor	ecx,ecx
		call	_$dll$user32$MessageBoxA
		xor	ecx,ecx
		call	_$dll$kernel32$ExitProcess

		ret
..@c2:

SECTION .text
	GLOBAL PASCALMAIN
GLOBAL _mainCRTStartup
	_mainCRTStartup:
PASCALMAIN:
	GLOBAL main
	global _mainCRTStartup
_mainCRTStartup:
main:
..@c4:

..@c6:
		
		call	P$TEST1_$$_ENTRY
		
xor ecx, ecx
call _$dll$kernel32$ExitProcess

		ret
..@c5:

SECTION .rodata
_$TEST1$_Ld1:
		DB	"one string",0

SECTION .rodata
_$TEST1$_Ld2:
		DB	"Information",0

SECTION .rodata
_$TEST1$_Ld3:
		DB	"qs",0

