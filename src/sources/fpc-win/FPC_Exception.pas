// ---------------------------------------------------------------------------
// File:   RTL_Exception.pas
// Author: (c) 2024 Jens Kallup - paule32
// All rights reserved
//
// only for education, and non-profit usage !
// ---------------------------------------------------------------------------
{$ifdef windows_header}
{$M-}
{$ifndef __RTL_EXCEPTION__PAS_}
{$define __RTL_EXCEPTION__PAS_}

type
    Exception = class(TObject)
        Message: string;
        Code: integer;
        constructor Create(const msg: string; const errcode: integer);
    end;

    EDivByZero       = class(Exception) end;  
    EOutOfMemory     = class(Exception) end;
    EAccessViolation = class(Exception) end;

const
    exception_classes: array[200..236] of TClass = (
        { 0   DivByZero           RangeError         StackOverflow     OutOfMemory/HeapOverflow InvalidPointerOperation  }
        EDivByZero, nil, nil, EOutOfMemory, nil,
        
        { 5   Overflow            Underflow          InvalidOp         ZeroDivide               209                      }
        nil, nil, nil, nil, nil,
        
        { 10  ObjectCheckError    AbstractError      ExternalException 213                      BusError                 }
        nil, nil, nil, nil, nil,               
        
        { 15  IntOverflow         AccessViolation    ControlC          Privilege                InvalidCast              }
        nil, EAccessViolation, nil, nil, nil,  
        
        { 20  InvalidVarCast      InvalidVarOp       DispatchError     VarArrayCreate           VarNotArray              }
        nil, nil, nil, nil, nil, 
        
        { 25  VarArrayBounds      226                AssertionFailed   IntfCastError            SafecallException        }
        nil, nil, nil, nil, nil,    
        
        { 30  230                 iconvError         NoThreadSupport   SigQuit                  MissingWStringManager    }
        nil, nil, nil, nil, nil,    
        
        { 35  NoDynLibsSupport    ThreadError                                                                            }
        nil, nil
    );

{$endif}
{$endif}

{$ifdef windows_source}
{$M-}
{$ifndef __RTL_EXCEPTION__PAS_}
{$define __RTL_EXCEPTION__PAS_}

constructor Exception.Create(
    const msg    : string;
    const errcode: integer);
begin
    Message := msg;
    Code := errcode;
end;

function default_ExceptObjProc(
    code: LongInt;
    const rec: EXCEPTION_RECORD
):  Pointer;
begin
    result := TTestException.Create('@@todo');
end;

function default_ExceptClsProc(
    code: LongInt
):  Pointer;
begin
    if  (code >= low(exception_classes))
    and (code <= high(exception_classes)) then
    result := exception_classes[code] else
    result := nil;
end;

procedure default_ErrorProc(
    code : Longint;
    addr : Pointer;
    frame: Pointer);
begin
    raise TTestException.Create('@@todo');
end;

{$endif}
{$endif}
