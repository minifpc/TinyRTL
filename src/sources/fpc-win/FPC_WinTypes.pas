// ---------------------------------------------------------------------------
// File:   FPC_WinTypes.pas
// Author: (c) 2024 Jens Kallup - paule32
// All rights reserved
//
// only for education, and non-profit usage !
// ---------------------------------------------------------------------------
{$ifdef windows_header}
{$M-}
// ---------------------------------------------------------------------------
// win32api constants, and variables ...
// ---------------------------------------------------------------------------
{$ifndef __WINDOWS_TYPES_HDR__}
{$define __WINDOWS_TYPES_HDR__}
type BOOL      = Boolean;       // true or false

type PVOID     = Pointer;
type LPVOID    = ^PVOID;
type LPCVOID   = ^LPVOID;

type HANDLE    = PVOID;
type FARPROC   = PVOID;

type THANDLE   =  DWORD;       // onject handle: Uint64
type PHandle   = ^THANDLE;

type LCID      = LongDWord;     // a local identifier
type LANGID    = LongDWord;     // a language identifier

type WPARAM    = LongDWord;     // 32-bit message parameter
type LPARAM    = LongDWord;     // 32-bit message parameter

type LRESULT   = LongDWord;     // 32-bit unsigned return value
type HRESULT   = ShortDWord;    // 32-bit signed   return value

type HINSTANCE = HANDLE;        // a handle to an instance
type HLOCAL    = HANDLE;        // a handle to a local memory block
type HMODULE   = HINSTANCE;     // a handle to a module (.dll)

type HWND      = LongDWord;     // a handle to a window
type ATOM      = LongDWord;     // local/global atom index for a string

type HGLOBAL   = THandle;       // a globally memory allocated handle

type LPCSTR    = PAnsiString;
type LPCWSTR   = PAnsiString;

type FARPROC   = Pointer;

{$ifdef UNICODE}
type LPCTSTR   = LPCWSTR;
{$else}
type LPCTSTR   = LPCSTR;
{$endif}

type LONG_PTR  = UInt64;
type PLONC_PTR = ^LONG_PTR;

type WPARAM = UINT;
type LPARAM = LONG;

{$if declared(POINT) = false}
type
    PPoint = ^POINT;
    POINT = record
        x: LONG;
        y: LONG;
    end;
{$endif}
{$if declared(TMessage) = false}
type
    PMessage = ^TMessage;
    TMessage = record
        hwnd     : HWND;
        _message : DWORD;
        wParam   : WPARAM;
        lParam   : LPARAM;
        time     : DWORD;
        pt       : POINT;
        lPrivate : DWORD;
    end;
{$endif}
// ---------------------------------------------------------------------------
// security structures ...
// ---------------------------------------------------------------------------
type
    POverlapped = ^TOverlapped;
    _OVERLAPPED = record
        Internal      : ULONG_PTR;
        InternalHigh  : ULONG_PTR;
        Offset        : DWORD    ;
        OffsetHigh    : DWORD    ;
        hEvent        : THandle  ;
    end;
    TOverlapped = _OVERLAPPED;

    PSECURITY_ATTRIBUTES  = ^TSECURITY_ATTRIBUTES;
    LPSECURITY_ATTRIBUTES = ^TSECURITY_ATTRIBUTES;
    PSecurityAttributes   = ^TSecurityAttributes;
    _SECURITY_ATTRIBUTES  = record
        nLength              : DWORD  ;
        lpSecurityDescriptor : Pointer;
        bInheritHandle       : BOOL   ;
    end;
    TSecurityAttributes = _SECURITY_ATTRIBUTES;

{$endif}    // __WINDOWS_TYPES_HDR__
{$endif}    // windows_header
