; ----------------------------------------------------------------------------
; file:   fpcdll.asm
; author: (c) 2024 Jens Kallup - paule32
; all rights reserved
;
; only for education, and non-profit usage !
; ----------------------------------------------------------------------------
extern PASCALMAIN
section .text
global _DLLMainCRTStartup
_DLLMainCRTStartup:
call PASCALMAIN
ret
