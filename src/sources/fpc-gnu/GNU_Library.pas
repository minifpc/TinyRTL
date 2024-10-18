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

function malloc (s: DWORD                  ): PVOID ; cdecl; external 'ucrtbase.dll'   name 'malloc';
function strcat (d: PChar; s: PChar): PChar; cdecl; external 'ucrtbase.dll'   name 'strcat';
function strcpy (d: PChar; s: PChar): PChar; cdecl; external 'ucrtbase.dll'   name 'strcpy';
function strlen (s: PChar): DWORD ; cdecl; external DLL_STR_kernel32 name 'lstrlenA';

{$endif}

{$ifdef windows_source}
{$endif}
