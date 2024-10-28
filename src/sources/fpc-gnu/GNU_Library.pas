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

const msvcrt   = 'msvcrt.dll';
const ucrtbase = 'ucrtbase.dll';
const kernel32 = 'kernel32.dll';

function malloc (s: DWORD          ): PVOID; cdecl; external ucrtbase name 'malloc';
function strcat (d: PChar; s: PChar): PChar; cdecl; external ucrtbase name 'strcat';
function strcpy (d: PChar; s: PChar): PChar; cdecl; external ucrtbase name 'strcpy';
function strlen (s: PChar          ): DWORD; cdecl; external kernel32 name 'lstrlenA';

function getch: Char; cdecl; external msvcrt;

function fscanf(
    stream: PFILE;
    format: PChar
):  Integer; varargs; cdecl;
    external msvcrt;
    
function fopen(
    filename: PChar;
    mode: PChar
):  PFILE; cdecl;
    external msvcrt;
    
function fclose(
    stream: PFILE
):  Integer; cdecl;
    external msvcrt;

function printf(
    format: PChar
):  Integer; cdecl; varargs;
    external msvcrt
    name 'printf';

function scanf(
    format: PChar;
    args: Pointer
):  DWORD; cdecl;
    external msvcrt
    name 'scanf';

function memset(
    ptr: Pointer;
    value: DWORD;
    num: DWORD
):  Pointer; cdecl;
    external msvcrt
    name 'memset';

{$endif}

{$ifdef windows_source}
{$endif}
