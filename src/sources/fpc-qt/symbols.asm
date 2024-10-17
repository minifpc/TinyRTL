; ---------------------------------------------------------------------------
; File:   symbols.asm
; Author: Jens Kallup - paule32
;
; This file is part of Qt RTL.
;
; (c) Copyright 2024 Jens Kallup - paule32
; only for non-profit usage !!!
; ---------------------------------------------------------------------------

extern QString_Create_PChar

global VMT_$SYSTEM_$$_QSTRING
VMT_$SYSTEM_$$_QSTRING:
    dq 0
global VMT_$QT_STRING_$$_QSTRING
VMT_$QT_STRING_$$_QSTRING:
    dq 0

section .code
    global SYSTEM$_$QSTRING_$__$$_CREATE$PCHAR$$QSTRING
SYSTEM$_$QSTRING_$__$$_CREATE$PCHAR$$QSTRING:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 8 * 3

    mov     rcx, r8
    call    QString_Create_PChar
    mov     rcx, rax

    add     rsp, 8 * 3
    mov     rsp, rbp
    pop     rbp
    ret

section .code
    global SYSTEM_$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD
SYSTEM_$$_MESSAGEBOX$ANSISTRING$ANSISTRING$$LONGDWORD:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 8 * 3

    mov     rcx, r8
    call    QString_Create_PChar
    mov     rcx, rax

    add     rsp, 8 * 3
    mov     rsp, rbp
    pop     rbp
    ret
