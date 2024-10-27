// ---------------------------------------------------------------------------
// File:   GNU_Library.pas
// Author: Jens Kallup - paule32
//
// This file is part of RTL.
//
// (c) Copyright 2024 Jens Kallup - paule32
// only for non-profit usage !!!
// ---------------------------------------------------------------------------
{$ifdef windows_header}
{$M-}

{$if declared(PFILE) = false}
type
    PFILE = Pointer;
{$endif}

function malloc (s: DWORD                  ): PVOID ; cdecl; external 'ucrtbase.dll'   name 'malloc';
function strcat (d: PChar; s: PChar): PChar; cdecl; external 'ucrtbase.dll'   name 'strcat';
function strcpy (d: PChar; s: PChar): PChar; cdecl; external 'ucrtbase.dll'   name 'strcpy';
function strlen (s: PChar): DWORD ; cdecl; external DLL_STR_kernel32 name 'lstrlenA';

function getch: Char; cdecl; external 'msvcrt.dll';

function fscanf(
    stream: PFILE;
    format: PChar
):  Integer; varargs; cdecl;
    external 'msvcrt.dll';
    
function fopen(
    filename: PChar;
    mode: PChar
):  PFILE; cdecl;
    external 'msvcrt.dll';
    
function fclose(
    stream: PFILE
):  Integer; cdecl;
    external 'msvcrt.dll';

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

{$endif}

{$ifdef windows_source}
{$endif}
