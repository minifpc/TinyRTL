; ---------------------------------------------------------------------------
; File:   symbols.asm
; Author: Jens Kallup - paule32
;
; This file is part of Qt RTL.
;
; (c) Copyright 2024 Jens Kallup - paule32
; only for non-profit usage !!!
; ---------------------------------------------------------------------------
extern MessageBox_QString_PChar

extern QString_Create_PChar
extern QString_Create_QString
extern QString_Append_QString

section .data
global VMT_$SYSTEM_$$_QSTRING
VMT_$SYSTEM_$$_QSTRING:
dq 0

section .code
    global  YSTEM$_$QSTRING_$__$$_CREATE$$QSTRING
YSTEM$_$QSTRING_$__$$_CREATE$$QSTRING:
    push    rbp                     ; save current stack value
    mov     rbp, rsp                ; update rbp to show to new function body
    sub     rsp, 8 * 3              ; reserve 24 (8 * 3) Bytes
    
    mov     qword [rsp     ], rcx   ; save first parameter on stack
    mov     qword [rsp +  8], rdx   ; save second ...
    mov     qword [rsp + 16], r8    ; save third  ...
    
    add     rsp, 24                 ; reset the stack
    mov     rsp, rbp                ; set rsp value to rbp to reset stack
    pop     rbp                     ; get the last value of rbp
    ret                             ; return to caller

section .code
    global SYSTEM$_$QSTRING_$__$$_CREATE$PCHAR$$QSTRING
SYSTEM$_$QSTRING_$__$$_CREATE$PCHAR$$QSTRING:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 8 * 3

    mov     rcx, r8
    call    QString_Create_PChar
    mov     rcx, rax
    call    QString_Create_PChar
    mov     rcx, rax

    add     rsp, 8 * 3
    mov     rsp, rbp
    pop     rbp
    ret

section .code
    global SYSTEM$_$QSTRING_$__$$_CREATE$$QSTRING
SYSTEM$_$QSTRING_$__$$_CREATE$$QSTRING:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 8 * 3

    mov     qword [rsp], rcx
    mov     rcx, qword [rsp]
    call    QString_Create_QString

    add     rsp, 8 * 3
    mov     rsp, rbp
    pop     rbp
    ret

section .code
    global SYSTEM$_$QSTRING_$__$$_APPEND$PCHAR$$QSTRING
SYSTEM$_$QSTRING_$__$$_APPEND$PCHAR$$QSTRING:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 8 * 3

    mov     qword [rsp], rcx
    mov     rcx, qword [rsp]
    call    QString_Append_QString

    add     rsp, 8 * 3
    mov     rsp, rbp
    pop     rbp
    ret

section .code
global SYSTEM_$$_MESSAGEBOX$QSTRING$PCHAR$$LONGDWORD
SYSTEM_$$_MESSAGEBOX$QSTRING$PCHAR$$LONGDWORD:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 8 * 8
    
    mov     rcx, rax
    call    MessageBox_QString_PChar

    add     rsp, 8 * 8
    mov     rsp, rbp
    pop     rbp
    ret
