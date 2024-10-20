BITS 64
default rel
CPU x64

EXTERN	fpc_reraise
EXTERN	FPC_DONEEXCEPTION
EXTERN	VMT_$SYSTEM_$$_QOBJECT$indirect
EXTERN	SYSTEM$_$TOBJECT_$__$$_DESTROY
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
EXTERN	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT
EXTERN	SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
EXTERN	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
EXTERN	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
EXTERN	FPC_EMPTYMETHOD
EXTERN	SYSTEM$_$TOBJECT_$__$$_FREE
EXTERN	SYSTEM$_$QOBJECT_$__$$_DESTROY
EXTERN	RTTI_$SYSTEM_$$_QOBJECT$indirect
; Begin asmlist al_pure_assembler

SECTION .text
	GLOBAL QT_STRING$_$QSTRING_$__$$_CREATE$$QSTRING
QT_STRING$_$QSTRING_$__$$_CREATE$$QSTRING:
..@c1:
		push	rbp
..@c3:
..@c4:
		mov	rbp,rsp
..@c5:
		lea	rsp,[rsp-48]
		cmp	rdx,1
		je	..@j5
		jmp	..@j6
..@j5:
		mov	rax,rcx
		mov	rcx,rax
		call	[rcx+128]
		mov	rcx,rax
..@j6:
		test	rcx,rcx
		je	..@j7
		jmp	..@j8
..@j7:
		jmp	..@j3
..@j8:
..@j14:
		nop
..@j13:
		mov	qword [rbp-8],-1
CPU x64

		nop
		ret
CPU x64

		mov	qword [rbp-8],1
		test	rcx,rcx
		jne	..@j15
		jmp	..@j16
..@j15:
		test	rdx,rdx
		jne	..@j17
		jmp	..@j16
..@j17:
		mov	rax,qword [rcx]
		call	[rax+168]
..@j16:
		jmp	..@j11
..@j10:
		test	rdx,rdx
		jne	..@j18
		jmp	..@j19
..@j18:
		mov	rdx,qword [rbp-8]
		mov	rax,qword [rcx]
		call	[rax+192]
..@j19:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j20:
		nop
..@j11:
..@j3:
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c2:

SECTION .text
	GLOBAL QT_STRING$_$QSTRING_$__$$_CREATE$PCHAR$$QSTRING
QT_STRING$_$QSTRING_$__$$_CREATE$PCHAR$$QSTRING:
..@c6:
		push	rbp
..@c8:
..@c9:
		mov	rbp,rsp
..@c10:
		lea	rsp,[rsp-48]
		cmp	rdx,1
		je	..@j23
		jmp	..@j24
..@j23:
		mov	rax,rcx
		mov	rcx,rax
		call	[rcx+128]
		mov	rcx,rax
..@j24:
		test	rcx,rcx
		je	..@j25
		jmp	..@j26
..@j25:
		jmp	..@j21
..@j26:
..@j32:
		nop
..@j31:
		mov	qword [rbp-8],-1
CPU x64

		nop
		ret
CPU x64

		mov	qword [rbp-8],1
		test	rcx,rcx
		jne	..@j33
		jmp	..@j34
..@j33:
		test	rdx,rdx
		jne	..@j35
		jmp	..@j34
..@j35:
		mov	rax,qword [rcx]
		call	[rax+168]
..@j34:
		jmp	..@j29
..@j28:
		test	rdx,rdx
		jne	..@j36
		jmp	..@j37
..@j36:
		mov	rdx,qword [rbp-8]
		mov	rax,qword [rcx]
		call	[rax+192]
..@j37:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j38:
		nop
..@j29:
..@j21:
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c7:

SECTION .text
	GLOBAL QT_STRING$_$QSTRING_$__$$_CREATE$QSTRING$$QSTRING
QT_STRING$_$QSTRING_$__$$_CREATE$QSTRING$$QSTRING:
..@c11:
		push	rbp
..@c13:
..@c14:
		mov	rbp,rsp
..@c15:
		lea	rsp,[rsp-48]
		cmp	rdx,1
		je	..@j41
		jmp	..@j42
..@j41:
		mov	rax,rcx
		mov	rcx,rax
		call	[rcx+128]
		mov	rcx,rax
..@j42:
		test	rcx,rcx
		je	..@j43
		jmp	..@j44
..@j43:
		jmp	..@j39
..@j44:
..@j50:
		nop
..@j49:
		mov	qword [rbp-8],-1
CPU x64

CPU x64

		mov	qword [rbp-8],1
		test	rcx,rcx
		jne	..@j51
		jmp	..@j52
..@j51:
		test	rdx,rdx
		jne	..@j53
		jmp	..@j52
..@j53:
		mov	rax,qword [rcx]
		call	[rax+168]
..@j52:
		jmp	..@j47
..@j46:
		test	rdx,rdx
		jne	..@j54
		jmp	..@j55
..@j54:
		mov	rdx,qword [rbp-8]
		mov	rax,qword [rcx]
		call	[rax+192]
..@j55:
		call	fpc_reraise
		call	FPC_DONEEXCEPTION
..@j56:
		nop
..@j47:
..@j39:
		nop
		lea	rsp,[rbp]
		pop	rbp
		ret
	DD	1,1

SECTION .text
..@c12:

SECTION .text
	GLOBAL QT_STRING$_$QSTRING_$__$$_DESTROY
QT_STRING$_$QSTRING_$__$$_DESTROY:
..@c16:
		lea	rsp,[rsp-8]
..@c18:
		cmp	rdx,0
		jg	..@j59
		jmp	..@j60
..@j59:
		mov	rax,rcx
		mov	rdx,qword [rcx]
		mov	rcx,rax
		call	[rdx+176]
..@j60:
CPU x64

CPU x64

		test	rcx,rcx
		jne	..@j61
		jmp	..@j62
..@j61:
		test	rdx,rdx
		jne	..@j63
		jmp	..@j62
..@j63:
		mov	rcx,qword [rcx]
		mov	rax,qword [rcx]
		call	[rax+136]
..@j62:
		nop
		lea	rsp,[rsp+8]
		ret
..@c17:
; End asmlist al_pure_assembler
; Begin asmlist al_procedures

SECTION .text
	GLOBAL QT_STRING$_$QSTRING_$__$$_APPEND$QSTRING$$QSTRING
QT_STRING$_$QSTRING_$__$$_APPEND$QSTRING$$QSTRING:
..@c19:
		mov	rax,rdx
		ret
..@c20:

SECTION .text
	GLOBAL QT_STRING$_$QSTRING_$__$$_APPEND$PCHAR$$QSTRING
QT_STRING$_$QSTRING_$__$$_APPEND$PCHAR$$QSTRING:
..@c21:
		mov	rax,rdx
		ret
..@c22:

SECTION .text
	GLOBAL QT_STRING$_$QSTRING_$__$$_GETTEXT$$PCHAR
QT_STRING$_$QSTRING_$__$$_GETTEXT$$PCHAR:
..@c23:
		mov	rax,qword [rcx+8]
		ret
..@c24:

SECTION .text
	GLOBAL QT_STRING$_$QSTRING_$__$$_SETTEXT$PCHAR
QT_STRING$_$QSTRING_$__$$_SETTEXT$PCHAR:
..@c25:
		mov	rax,rcx
		mov	qword [rax+8],rdx
		ret
..@c26:

SECTION .text
	GLOBAL QT_STRING$_$QSTRING_$__$$_SETTEXT$QSTRING
QT_STRING$_$QSTRING_$__$$_SETTEXT$QSTRING:
..@c27:
		lea	rsp,[rsp-40]
..@c29:
		mov	rax,rcx
		mov	rdx,qword [rdx+8]
		mov	rcx,rax
		call	QT_STRING$_$QSTRING_$__$$_SETTEXT$PCHAR
		nop
		lea	rsp,[rsp+40]
		ret
..@c28:

SECTION .text
	GLOBAL QT_STRING_$$_QSTRING_CREATE_PCHAR$POINTER$PCHAR
QT_STRING_$$_QSTRING_CREATE_PCHAR$POINTER$PCHAR:
	GLOBAL QString_Create_PChar
QString_Create_PChar:
..@c30:
		mov	rax,rcx
		mov	qword [rax+8],rdx
		ret
..@c31:
; End asmlist al_procedures
; Begin asmlist al_globals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$QT_STRING_$$_QSTRING
VMT_$QT_STRING_$$_QSTRING	DQ	16,-16,VMT_$SYSTEM_$$_QOBJECT$indirect,..@d1,0,0,0,RTTI_$QT_STRING_$$_QSTRING
	DQ	0,0,0,0,SYSTEM$_$TOBJECT_$__$$_DESTROY,SYSTEM$_$TOBJECT_$__$$_CLASSNAME$$ANSISTRING
	DQ	SYSTEM$_$TOBJECT_$__$$_CLASSPARENT$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_INITINSTANCE$POINTER
	DQ	SYSTEM$_$TOBJECT_$__$$_NEWINSTANCE$$TOBJECT,SYSTEM$_$TOBJECT_$__$$_FREEINSTANCE
	DQ	SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$SHORTDWORD
	DQ	FPC_EMPTYMETHOD,SYSTEM$_$TOBJECT_$__$$_FREE,FPC_EMPTYMETHOD,FPC_EMPTYMETHOD
	DQ	SYSTEM$_$QOBJECT_$__$$_DESTROY,QT_STRING$_$QSTRING_$__$$_DESTROY,0
; End asmlist al_globals
; Begin asmlist al_const

SECTION .data
	ALIGN 8,DB 0
..@d1:
	DB	7
		DB	"QString"
; End asmlist al_const
; Begin asmlist al_rtti

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$QT_STRING_$$_QSTRING
INIT_$QT_STRING_$$_QSTRING	DB	15,7
		DB	"QString"
	DQ	0
	DD	8
	DQ	0,0
	DD	0

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$QT_STRING_$$_QSTRING
RTTI_$QT_STRING_$$_QSTRING	DB	15,7
		DB	"QString"
	DQ	VMT_$QT_STRING_$$_QSTRING,RTTI_$SYSTEM_$$_QOBJECT$indirect
	DW	0
	DB	9
		DB	"Qt_String"
	DW	0
; End asmlist al_rtti
; Begin asmlist al_indirectglobals

SECTION .data
	ALIGN 8,DB 0
	GLOBAL VMT_$QT_STRING_$$_QSTRING$indirect
VMT_$QT_STRING_$$_QSTRING$indirect	DQ	VMT_$QT_STRING_$$_QSTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL INIT_$QT_STRING_$$_QSTRING$indirect
INIT_$QT_STRING_$$_QSTRING$indirect	DQ	INIT_$QT_STRING_$$_QSTRING

SECTION .data
	ALIGN 8,DB 0
	GLOBAL RTTI_$QT_STRING_$$_QSTRING$indirect
RTTI_$QT_STRING_$$_QSTRING$indirect	DQ	RTTI_$QT_STRING_$$_QSTRING
; End asmlist al_indirectglobals
; Begin asmlist al_dwarf_frame

SECTION .debug_frame
..@c32:
	DD	..@c34-..@c33
..@c33:
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
..@c34:
	DD	..@c36-..@c35
..@c35:
	DQ	..@c1,..@c2-..@c1
	DB	4
	DD	..@c3-..@c1
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c4-..@c3
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c5-..@c4
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c36:
	DD	..@c38-..@c37
..@c37:
	DQ	..@c6,..@c7-..@c6
	DB	4
	DD	..@c8-..@c6
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c9-..@c8
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c10-..@c9
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c38:
	DD	..@c40-..@c39
..@c39:
	DQ	..@c11,..@c12-..@c11
	DB	4
	DD	..@c13-..@c11
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c14-..@c13
	DB	5
; Unsupported const type 	FIXME_ULEB128BIT	
; Unsupported const type 	FIXME_ULEB128BIT	
	DB	4
	DD	..@c15-..@c14
	DB	13
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c40:
	DD	..@c42-..@c41
..@c41:
	DQ	..@c16,..@c17-..@c16
	DB	4
	DD	..@c18-..@c16
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c42:
	DD	..@c44-..@c43
..@c43:
	DQ	..@c19,..@c20-..@c19
	ALIGN 4,DB 0
..@c44:
	DD	..@c46-..@c45
..@c45:
	DQ	..@c21,..@c22-..@c21
	ALIGN 4,DB 0
..@c46:
	DD	..@c48-..@c47
..@c47:
	DQ	..@c23,..@c24-..@c23
	ALIGN 4,DB 0
..@c48:
	DD	..@c50-..@c49
..@c49:
	DQ	..@c25,..@c26-..@c25
	ALIGN 4,DB 0
..@c50:
	DD	..@c52-..@c51
..@c51:
	DQ	..@c27,..@c28-..@c27
	DB	4
	DD	..@c29-..@c27
	DB	14
; Unsupported const type 	FIXME_ULEB128BIT	
	ALIGN 4,DB 0
..@c52:
	DD	..@c54-..@c53
..@c53:
	DQ	..@c30,..@c31-..@c30
	ALIGN 4,DB 0
..@c54:
; End asmlist al_dwarf_frame

