; -------------------------------------------------------------------------------------------
; (c) 2024 by Jens Kallup <kallup-dev@web.de>
; all rights reserved.
; -------------------------------------------------------------------------------------------

extern PASCALMAIN

    global FINALIZE$_$OBJPAS
    
    global INIT$_$FPINTRES
    global INIT$_$SYSTEM
    
    global SYSTEM$_$TOBJECT_$__$$_DISPATCH$formal
    global SYSTEM$_$TOBJECT_$__$$_DISPATCHSTR$formal
    global SYSTEM$_$TOBJECT_$__$$_EQUALS$TOBJECT$$BOOLEAN
    global SYSTEM$_$TOBJECT_$__$$_GETHASHCODE$$INT64
    global SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT
    GLOBAL SYSTEM$_$TOBJECT_$__$$_TOSTRING$$ANSISTRING
    
    global RTTI_$QT_OBJECT_$$_QOBJECT
    
    global THREADVARLIST_$SYSTEM$indirect

    global VMT_$QT_OBJECT_$$_QOBJECT
    
    section .text

SYSTEM$_$TOBJECT_$__$$_DISPATCH$formal:
SYSTEM$_$TOBJECT_$__$$_DISPATCHSTR$formal:

SYSTEM$_$TOBJECT_$__$$_EQUALS$TOBJECT$$BOOLEAN:

SYSTEM$_$TOBJECT_$__$$_GETHASHCODE$$INT64:

INIT$_$FPINTRES:
INIT$_$SYSTEM:

SYSTEM$_$TOBJECT_$__$$_SAFECALLEXCEPTION$TOBJECT$POINTER$$HRESULT:
SYSTEM$_$TOBJECT_$__$$_TOSTRING$$ANSISTRING:

RTTI_$QT_OBJECT_$$_QOBJECT:

FINALIZE$_$OBJPAS:

THREADVARLIST_$SYSTEM$indirect:

VMT_$QT_OBJECT_$$_QOBJECT:
    ret
 
global VMT_$SYSTEM_$$_QSTRING
VMT_$SYSTEM_$$_QSTRING:
    ret

;;global U_$SYSTEM_$$_TQUEUE_MEM_TEMP
;;U_$SYSTEM_$$_TQUEUE_MEM_TEMP:
;;dq 1

;;global VMT_$SYSTEM_$$_TQUEUE
;;VMT_$SYSTEM_$$_TQUEUE:
;;dq 0
