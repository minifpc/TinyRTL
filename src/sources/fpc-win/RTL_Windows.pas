// ---------------------------------------------------------------------------
// File:   RTL_Windows.pas
// Author: (c) 2024 Jens Kallup - paule32
// All rights reserved
//
// only for education, and non-profit usage !
// ---------------------------------------------------------------------------
{$ifdef windows_header}
{$M-}
{$ifndef __RTL_WINDOWS__PAS_}
{$define __RTL_WINDOWS__PAS_}
{$if declared(PVOID) = false}
type PVOID     = Pointer;
{$endif}
{$if declared(LPVOID) = false}
type LPVOID    = ^PVOID;
type LPCVOID   = ^LPVOID;
{$endif}
{$if declared(LPCTSTR) = false}
    {$ifdef UNICODE}
    type LPCTSTR   = LPCWSTR;
    {$else}
    type LPCTSTR   = LPCSTR;
    {$endif}
{$endif}

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
        message  : DWORD;
        wParam   : WPARAM;
        lParam   : LPARAM;
        time     : DWORD;
        pt       : POINT;
        lPrivate : DWORD;
    end;
{$endif}

// ---------------------------------------------------------------------------
// win32api - Console:
// ---------------------------------------------------------------------------
const STD_INPUT_HANDLE  = DWORD(-10);
const STD_OUTPUT_HANDLE = DWORD(-11);
const STD_ERROR_HANDLE  = DWORD(-12);

type
    STD_HANDLES  = (
        shInput  = STD_INPUT_HANDLE ,
        shOutput = STD_OUTPUT_HANDLE,
        shError  = STD_ERROR_HANDLE
    );

const ATTACH_PARENT_PROCESS = DWORD(-1);

{$if declared(COORD) = false}
type
    PCORD = ^COORD;
    COORD = record
        X: Smallint;
        Y: Smallint;
    end;
{$endif}
{$if declared(SMALL_RECT) = false}
type
    PSMALL_RECT = ^SMALL_RECT;
    SMALL_RECT = record
        Left: Smallint;
        Top: Smallint;
        Right: Smallint;
        Bottom: Smallint;
    end;
{$endif}
{$if declared(CONSOLE_SCREEN_BUFFER_INFO) = false}
type
    PCONSOLE_SCREEN_BUFFER_INFO = ^CONSOLE_SCREEN_BUFFER_INFO;
    CONSOLE_SCREEN_BUFFER_INFO = record
        dwSize: COORD;
        dwCursorPosition: COORD;
        wAttributes: WORD;
        srWindow: SMALL_RECT;
        dwMaximumWindowSize: COORD;
    end;
{$endif}
// ---------------------------------------------------------------------------
// some selected code page codes ...
// ---------------------------------------------------------------------------
const CP_UTF32be = 12001;  // Unicode 32-bit big endian
const CP_UTF32   = 12000;  // Unicode 32-bit little endian
const CP_UTF16   =  1200;  // Unicode 16-bit
const CP_UTF8    = 65001;  // Unicode  8-bit
const CP_UTF7    = 65000;
const CP_IBM273  = 20273;  // DE
const CP_UsAscii = 20127;  // 7-bit US Ascii
const CP_Win1250 =  1250;  // Windows Ansi European

function AllocConsole
:   DWORD; stdcall;
    external 'kernel32.dll' name 'AllocConsole';

function AttachConsole(
    dwProcessId: DWORD
):  DWORD; stdcall;
    external 'kernel32.dll' name 'AttachConsole';
    
function GetConsoleScreenBufferInfo(
    hConsoleOutput: DWORD;
    var lpConsoleScreenBufferInfo: CONSOLE_SCREEN_BUFFER_INFO
):  DWORD; stdcall;
    external 'kernel32.dll' name 'GetConsoleScreenBufferInfo';

function GetStdHandle(
    nStdHandle: DWORD
):  DWORD; stdcall;
    external 'kernel32.dll' name 'GetStdHandle';

function SetStdHandle(
    nStdHandle: DWORD;
    hHandle: DWORD
):  Boolean; stdcall;
    external 'kernel32.dll' name 'SetStdHandle';

function FillConsoleOutputCharacter(
    hConsoleOutput: DWORD;
    cCharacter: Char;
    nLength: DWORD;
    dwWriteCoord: COORD;
    var lpNumberOfCharsWritten: DWORD
):  DWORD; stdcall;
    external 'kernel32.dll' name 'FillConsoleOutputCharacterA';

function FillConsoleOutputAttribute(
    hConsoleOutput: DWORD;
    wAttribute: WORD;
    nLength: DWORD;
    dwWriteCoord: COORD;
    var lpNumberOfAttrsWritten: DWORD
):  DWORD; stdcall;
    external 'kernel32.dll' name 'FillConsoleOutputAttribute';

function SetConsoleCursorPosition(
    hConsoleOutput: DWORD;
    dwCursorPosition: COORD
):  DWORD; stdcall;
    external 'kernel32.dll' name 'SetConsoleCursorPosition';

function SetConsoleOutputCP(
    wCodePageID: DWORD
):  BOOL; stdcall;
    external 'kernel32.dll';

function SetConsoleCP(
    wCodePageID: UINT
):  BOOL; stdcall;
    external 'kernel32.dll';

function WriteConsoleA(
    hConsoleOutput: DWORD;
    lpBuffer: Pointer;
    nNumberOfCharsToWrite: DWORD;
    var lpNumberOfCharsWritten: DWORD;
    lpReserved: Pointer
):  DWORD; stdcall;
    external 'kernel32.dll' name 'WriteConsoleA';

function printf(
    format: PChar
):  Integer; cdecl; varargs;
    external 'msvcrt.dll'
    name 'printf';

function scanf(
    format: PChar;
    args: Pointer
):  DWORD; cdecl;
    external 'msvcrt'
    name 'scanf';

function memset(
    ptr: Pointer;
    value: DWORD;
    num: DWORD
):  Pointer; cdecl;
    external 'msvcrt'
    name 'memset';

// ---------------------------------------------------------------------------
// security structures ...
// ---------------------------------------------------------------------------
{$if declared(TSECURITY_ATTRIBUTES) = false}
type
     PSECURITY_ATTRIBUTES  = ^TSecurityAttributes;
    LPSECURITY_ATTRIBUTES  = ^TSecurityAttributes;
    
    PSecurityAttributes = ^TSecurityAttributes;
    SECURITY_ATTRIBUTES = record
        nLength              : DWORD ;
        lpSecurityDescriptor : LPVOID;
        bInheritHandle       : BOOL  ;
    end;
    TSecurityAttributes = SECURITY_ATTRIBUTES;

{$endif}
{$if declared(TOverlapped) = false}
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
{$endif}
// ---------------------------------------------------------------------------
function GetLastError: DWORD;
    stdcall; external 'kernel32.dll' name 'GetLastError';

const INVALID_HANDLE_VALUE     = THandle(-1);
const INVALID_SET_FILE_POINTER = DWORD  (-1);

const NO_ERROR = 0;

const FILE_BEGIN      = 0;
const FILE_CURRENT    = 1;
const FILE_END        = 2;

const GENERIC_ALL     = $10000000;
const GENERIC_EXECUTE = $20000000;
const GENERIC_WRITE   = $40000000;
const GENERIC_READ    = $80000000;

// ---------------------------------------------------------------------------
// win32api constants, and variables ...
// ---------------------------------------------------------------------------
const DLL_PROCESS_ATTACH = 1;
const DLL_PROCESS_DETACH = 0;

const DLL_THREAD_ATTACH  = 2;
const DLL_THREAD_DETACH  = 3;

// ---------------------------------------------------------------------------
// win32api file operations ...
// ---------------------------------------------------------------------------
const FILE_SHARE_READ   = $00000001;
const FILE_SHARE_WRITE  = $00000002;
const FILE_SHARE_DELETE = $00000004;
// ---------------------------------------------------------------------------
const CREATE_ALWAYS     = 2;
const CREATE_NEW        = 1;
const OPEN_ALWAYS       = 4;
const OPEN_EXISTING     = 3;
const TRUNCATE_EXISTING = 5;
// ---------------------------------------------------------------------------
const FILE_ATTRIBUTE_ARCHIVE       = $20;
const FILE_ATTRIBUTE_ENCRYPTED     = $4000;
const FILE_ATTRIBUTE_HIDDEN        = $2;
const FILE_ATTRIBUTE_NORMAL        = $80;
const FILE_ATTRIBUTE_OFFLINE       = $1000;
const FILE_ATTRIBUTE_READONLY      = 1;
const FILE_ATTRIBUTE_SYSTEM        = $4;
const FILE_ATTRIBUTE_TEMPORARY     = $100;
// ---------------------------------------------------------------------------
const FILE_FLAG_BACKUP_SEMANTICS   = $02000000;
const FILE_FLAG_DELETE_ON_CLOSE    = $04000000;
const FILE_FLAG_NO_BUFFERING       = $20000000;
const FILE_FLAG_OPEN_NO_RECALL     = $00100000;
const FILE_FLAG_OPEN_REPARSE_POINT = $00200000;
const FILE_FLAG_OVERLAPPED         = $40000000;
const FILE_FLAG_POSIX_SEMANTICS    = $01000000;
const FILE_FLAG_RANDOM_ACCESS      = $10000000;
const FILE_FLAG_SESSION_AWARE      = $00800000;
const FILE_FLAG_SEQUENTIAL_SCAN    = $08000000;
const FILE_FLAG_WRITE_THROUGH      = $80000000;
// ---------------------------------------------------------------------------
function CreateFile(
    lpFileName            : PChar;
    dwDesiredAccess       : DWORD;
    dwShareMode           : DWORD;
    lpSecurityAttributes  : LPSECURITY_ATTRIBUTES;
    dwCreationDisposition : DWORD;
    dwFlagsAndAttributes  : DWORD;
    hTemplateFile         : HANDLE): Handle;
    stdcall; external 'kernel32.dll' name 'CreateFileA';

function DeleteFileA(
    lpFileName: PChar): Boolean;
    stdcall; external 'kernel32.dll' name 'DeleteFileA';
    
function PathFileExistsA(
    pszPath: PChar ): BOOL;
    stdcall; external 'shlwapi.dll' name 'PathFileExistsA';

function LockFile(
    hfile                   : HANDLE;
    dwFileOffsetLow         : DWORD;
    dwFileOffsetHigh        : DWORD;
    dwBytesToLockOffsetLow  : DWORD;
    dwBytesToLockOffsetHigh : DWORD): Boolean; overload;
    stdcall; external 'kernel32.dll' name 'LockFile';
    
function LockFile(
    hfile : HANDLE): Boolean; overload;
    
function SetFilePointer(
    hFile                : THandle;
    lDistanceToMove      : LONG   ;
    lpDistanceToMoveHigh : PLONG  ;
    dwMoveMethod         : DWORD) : DWORD;
    stdcall; external 'kernel32.dll' name 'SetFilePointer';

function WriteFile(
    hFile                     : THandle;
    const Buffer;
    nNumberOfBytesToWrite     : DWORD;
    var lpNumberOfBytesWritten: DWORD;
    lpOverlapped: POverlapped): BOOL;
    stdcall; external 'kernel32.dll' name 'WriteFile';
    
function WriteFile( hFile: THandle; buffer: PChar  ): BOOL; overload;
function WriteFile( hFile: THandle; buffer: HMODULE): BOOL; overload;

(*
function WriteFile(
    hFile          : THANDLE;
    lpBuffer       : Pointer;
    nBytesToWrite  : DWORD;
    nBytesWritten  : DWORD;
    lpOverlapped   : Pointer): BOOL;
    stdcall; external 'kernel32.dll' name 'WriteFile';*)
    
function CloseHandle(
    hObject: THANDLE): BOOL;
    stdcall; external 'kernel32.dll' name 'CloseHandle';

// ---------------------------------------------------------------------------
// win32api - windows sockets ...
// ---------------------------------------------------------------------------

// ---------------------------------------------------------------------------
// win32api - MessageBox:
// ---------------------------------------------------------------------------
const MB_OK                   = $00000000;
const MB_OKCANCEL             = $00000001;
const MB_ABORTRETRYIGNORE     = $00000002;
const MB_YESNOCANCEL          = $00000003;
const MB_YESNO                = $00000004;
const MB_RETRYCANCEL          = $00000005;
const MB_CANCELTRYCONTINUE    = $00000006;
const MB_HELP                 = $00004000;
//
const MB_ICONEXCLAMATION      = $00000030;
const MB_ICONWARNING          = $00000030;
const MB_ICONINFORMATION      = $00000040;
const MB_ICONASTERISK         = $00000040;
const MB_ICONQUESTION         = $00000020;
//
const MB_ICONSTOP             = $00000010;
const MB_ICONERROR            = $00000010;
const MB_ICONHAND             = $00000010;

const MB_DEFBUTTON1           = $00000000;
const MB_DEFBUTTON2           = $00000100;
const MB_DEFBUTTON3           = $00000200;
const MB_DEFBUTTON4           = $00000300;

const MB_APPLMODAL            = $00000000;
const MB_SYSTEMMODAL          = $00001000;
const MB_TASKMODAL            = $00002000;

const MB_DEFAULT_DESKTOP_ONLY = $00020000;
const MB_RIGHT                = $00080000;
const MB_RTLREADING           = $00100000;
const MB_SETFOREGROUND        = $00010000;
const MB_TOPMOST              = $00040000;
const MB_SERVICE_NOTIFICATION = $00200000;

// ---------------------------------------------------------------------------
// win32api MessageBox return results:
// ---------------------------------------------------------------------------
const IDOK       =  $1;
const IDCANCEL   =  $2;
const IDABORT    =  $3;
const IDRETRY    =  $4;
const IDIGNORE   =  $5;
const IDYES      =  $6;
const IDNO       =  $7;
const IDTRYAGAIN = $10;
const IDCONTINUE = $11;

// ---------------------------------------------------------------------------
// win32api module user32.dll:
// ---------------------------------------------------------------------------
function MessageBox(
    _hwnd     : HWND;
    lpText    : PChar;
    lpCaption : PChar;
    uType     : UINT): DWORD;
    stdcall external DLL_STR_user32 name 'MessageBoxA';

procedure ShowMessage( lpText: PChar );
procedure ShowWarn   ( lpText: PChar );
procedure ShowError  ( lpText: PChar );
procedure ShowInfo   ( lpText: PChar );

// ---------------------------------------------------------------------------
// win32api VirtualAlloc:
// ---------------------------------------------------------------------------
const MEM_COALESCE_PLACEHOLDERS = $00000001;
const MEM_PRESERVE_PLACEHOLDER  = $00000002;

const MEM_COMMIT      = $00001000;
const MEM_RESERVE     = $00002000;
const MEM_DECOMMIT    = $00004000;
const MEM_RELEASE     = $00008000;
const MEM_RESET       = $00080000;
const MEM_RESET_UNDO  = $10000000;

const MEM_LARGE_PAGES = $20000000;
const MEM_PHYSICAL    = $00400000;
const MEM_TOP_DOWN    = $00100000;
const MEM_WRITE_WATCH = $00200000;

const PAGE_EXECUTE           = $10;
const PAGE_EXECUTE_READ      = $20;
const PAGE_EXECUTE_READWRITE = $40;
const PAGE_EXECUTE_WRITECOPY = $80;

const PAGE_NOACCESS  = $01;
const PAGE_READONLY  = $02;
const PAGE_READWRITE = $04;
const PAGE_WRITECOPY = $08;

const PAGE_TARGETS_INVALID   = $40000000;
const PAGE_TARGETS_NO_UPDATE = $40000000;

const PAGE_GUARD        = $100;
const PAGE_NOCACHE      = $200;
const PAGE_WRITECOMBINE = $400;

// ---------------------------------------------------------------------------
// win32api LocalAlloc, LocalReAlloc, and LocalFree:
// ---------------------------------------------------------------------------
const LMEM_MOVEABLE = $0002;
const LMEM_ZEROINIT = $0040;

const LHND = LMEM_MOVEABLE or LMEM_ZEROINIT;

// ---------------------------------------------------------------------------
// win32api heap constants:
// ---------------------------------------------------------------------------
const HEAP_CREATE_ENABLE_EXECUTE = $00040000;
const HEAP_GENERATE_EXCEPTIONS   = $00000004;
const HEAP_NO_SERIALIZE          = $00000001;

// ---------------------------------------------------------------------------
// win32api module kernel32.dll:
// ---------------------------------------------------------------------------
// \brief  retrieve the current ANSI code-page identifier for the system.
// \param  This function has no parameters.
// \return DWORD - If the function succeeds, the return value is the current ANSI
//         code page for the system, or a default identifier if no code page is
//         current.
// \see    GetOEMCP
function GetACP: DWORD; cdecl; external DLL_STR_kernel32 name 'GetACP';

// \brief  retrieve the current OEM code-page identifier for the system.
//         OEM => original equipment manufacturer
// \param  This function has no parameters
// \return DWORD - If the function succeeds, the return value is the current OEM
//         code page for the system, or a default identifier code if no code page.
// \see    GetACP
function GetOEMCP: DWORD; cdecl; external DLL_STR_kernel32 name 'GetOEMCP';

// \brief  inline function that hold the current system code page
// \param  This function has no parameters.
// \return DWORD - the current system code page.
// \see    GetACP
// \see    GetOEMCP
function TSystemCodePage: DWORD;

// ---------------------------------------------------------------------------
// win32api module kernel32.dll:
// ---------------------------------------------------------------------------
procedure ExitProcess(
    ExitCode: LongInt);
    stdcall; external 'kernel32.dll' name 'ExitProcess';

// ---------------------------------------------------------------------------
// win32api module kernel32.dll: dynamic library loader
// ---------------------------------------------------------------------------
function LoadLibrary(
    lpLibFileName: LPCSTR): HMODULE;
    stdcall; external 'kernel32.dll' name 'LoadLibraryA';
    
function FreeLibrary(
    hLibModule: HMODULE): BOOL;
    stdcall; external 'kernel32.dll' name 'FreeLibrary';

function DispatchMessage(
    const msg: TMessage): LRESULT;
    stdcall; external 'user32.dll'   name 'DispatchMessageA';
    
function GetMessage(
    msg      : TMessage; _hwnd:
    HWND     ; filterMin: UINT;
    filterMax: UINT): BOOL;
    stdcall; external 'user32.dll'   name 'GetMessageA';

function GetModuleHandle(
    lpModuleName: PChar ): HMODULE;
    stdcall; external 'kernel32.dll' name 'GetModuleHandleA';
    
function GetProcAddress(
    modulname : HMODULE;
    lpProcName: LPCSTR): FARPROC;
    stdcall; external 'kernel32.dll' name 'GetProcAddress';

function TranslateMessage(
    const message: TMessage): BOOL;
    stdcall; external 'user32.dll'   name 'TranslateMessage';

const LDR_LOCK_LOADER_LOCK_DISPOSITION_INVALID           = 0;
const LDR_LOCK_LOADER_LOCK_DISPOSITION_LOCK_ACQUIRED     = 1;
const LDR_LOCK_LOADER_LOCK_DISPOSITION_LOCK_NOT_ACQUIRED = 2;

const LDR_LOCK_LOADER_LOCK_FLAG_RAISE_ON_ERRORS  = $00000001;
const LDR_LOCK_LOADER_LOCK_FLAG_TRY_ONLY         = $00000002;

// ---------------------------------------------------------------------------
// win32api module kernel32.dll: Heap
// ---------------------------------------------------------------------------
function  HeapCreate(
    flOptions: DWORD;
    dwInitialSize,
    dwMaximumSize: SIZE_T ): HANDLE;
    cdecl; external DLL_STR_kernel32 name 'HeapCreate';
    
function  LocalAlloc(
    uFlags: UINT;
    uBytes: SIZE_T): UINT;
    cdecl; external DLL_STR_kernel32 name 'LocalAlloc';
    
function  LocalFree(
    hMem: HLOCAL): HLOCAL;
    cdecl; external DLL_STR_kernel32 name 'LocalFree';

// ---------------------------------------------------------------------------
// win32api module kernel32.dll: virtual memory
// ---------------------------------------------------------------------------
procedure FillChar       ( var Dest; Count: Integer; Value: Char );
procedure FreeMem        ( var p: Pointer );
procedure GetMem         ( var p: Pointer; size: DWORD );

function  VirtualAlloc(
    lpAddress       : PVOID;
    dwSize          : SIZE_T;
    flAllocationType: DWORD;
    flProtect       : DWORD): Pointer;
    stdcall; external DLL_STR_kernel32 name 'VirtualAlloc';
    
function  VirtualFree(
    lpAddress : PVOID;
    dwSize    : SIZE_T;
    dwFreeType: DWORD): BOOL;
    stdcall; external DLL_STR_kernel32 name 'VirtualAlloc';

// ---------------------------------------------------------------------------
// win32api RTL error & codes ...
// ---------------------------------------------------------------------------
type  NTSTATUS       = LONG;
const STATUS_SUCCESS = $00000000;

function RtlNtStatusToDosError(
    status: NTSTATUS): ULONG;
    cdecl; external 'ntdll.dll'    name 'RtlNtStatusToDosError';

procedure SetLastError(dwErrCode: DWORD);
    cdecl; external 'kernel32.dll' name 'SetLastError';

const STATUS_INVALID_PARAMETER_1 = $c00000EF;

{$endif}
{$endif}

{$ifdef windows_source}
procedure ShowMessage( lpText: PChar ); begin MessageBox(0,lpText,'Information', MB_ICONINFORMATION); end;
procedure ShowWarn   ( lpText: PChar ); begin MessageBox(0,lpText,'Warning'    , MB_ICONWARNING    ); end;
procedure ShowError  ( lpText: PChar ); begin MessageBox(0,lpText,'Error'      , MB_ICONEXCLAMATION); end;
procedure ShowInfo   ( lpText: PChar ); begin ShowMessage(lpText); end;

procedure FillChar(
    var Dest;
    Count   : Integer;
    Value   : Char);
var
    I: Integer;
    P: PChar;
begin
    P := PChar(@Dest);
    for I := 0 to Count - 1 do
    begin
        P^ := Value;
        Inc(P);
    end;
end;

procedure FreeMem( var p: Pointer );
begin
    VirtualFree( p, 0, MEM_RELEASE );
end;
procedure GetMem(
    var p: Pointer;
    size : DWORD );
begin
    p := VirtualAlloc( nil, size, MEM_COMMIT or MEM_RESERVE, PAGE_READWRITE );
end;

function TSystemCodePage: DWORD;
begin
    result := GetACP;
end;

function LockFile(
    hfile : HANDLE): Boolean; overload;
var
    res : Boolean;
    bwr : DWORD;
begin
    result := false;
    res := LockFile(
    hfile, 0, 0, bwr, 0);
    
    if res = false then begin
        ShowError('File can not be lock.');
        exit;
    end;
    result := true;
end;

function WriteFile(
    hFile : THandle;
    buffer: PChar ): BOOL; overload;
begin
    WriteFile( THandle(hFile),
    buffer^, strlen(buffer),
    dword(nil^),
    nil);
    result := 1;
end;

function WriteFile(
    hFile : THandle ;
    buffer: HMODULE): BOOL; overload;
begin
    WriteFile( THandle(hFile),
    buffer, sizeof(QWORD),
    dword(nil^),
    nil);
    result := 1;
end;

{$endif}
