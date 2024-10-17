; ---------------------------------------------------------------------------
; File:   vmt.asm
; Author: Jens Kallup - paule32
;
; This file is part of Qt RTL.
;
; (c) Copyright 2024 Jens Kallup - paule32
; only for non-profit usage !!!
; ---------------------------------------------------------------------------

section .data

;global VMT_$SYSTEM_$$_TLIST
;VMT_$SYSTEM_$$_TLIST:
;    dq 0

global VMT_$QT_STRING_$$_QSTRING
VMT_$QT_STRING_$$_QSTRING:
    dq 0
    
;global VMT_$SYSTEM_$$_TANSISTRINGMEMORYMANAGER
;VMT_$SYSTEM_$$_TANSISTRINGMEMORYMANAGER:
;    dq 0


section .code
global QT_STRING$_$QSTRING_$__$$_CREATE$PCHAR$$QSTRING
QT_STRING$_$QSTRING_$__$$_CREATE$PCHAR$$QSTRING:
    ret
    
;global SYSTEM$_$TANSISTRINGMEMORYMANAGER_$__$$_CREATE$$TANSISTRINGMEMORYMANAGER
;SYSTEM$_$TANSISTRINGMEMORYMANAGER_$__$$_CREATE$$TANSISTRINGMEMORYMANAGER:
;    ret
