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
type BOOL      = Integer;       // true or false

type PVOID     = Pointer;

type HANDLE    = PVOID;
type FARPROC   = PVOID;

type THANDLE   =  LongWord;     // onject handle
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

type LPCSTR    = String;
type LPCWSTR   = String;

{$ifdef UNICODE}
type LPCTSTR   = LPCWSTR;
{$else}
type LPCTSTR   = LPCSTR;
{$endif}

// ---------------------------------------------------------------------------
// win32api dynamic link libraries:
// ---------------------------------------------------------------------------
const DLL_STR_kernel32 = 'kernel32.dll';
const DLL_STR_user32   = 'user32.dll';

{$endif}
