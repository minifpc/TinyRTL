// ---------------------------------------------------------------------------
// File:   system.pas
// Author: Jens Kallup - paule32
//
// This file is part of RTL.
//
// (c) Copyright 2024 Jens Kallup - paule32
// only for non-profit usage !!!
// ---------------------------------------------------------------------------
{$mode objfpc}{$H+}
{$modeswitch advancedrecords}
unit system;

interface
{$define windows_header}
{$M-}
const rtl_dll  = 'fpc_rtl.dll';
// ---------------------------------------------------------------------------
// FPC core ...
// ---------------------------------------------------------------------------
{$ifndef __WINDOWS_TYPES_HDR__}
{$I FPC_Types.pas}
{$I FPC_Types2.pas}
{$endif}

{$I FPC_System.pas}

// ---------------------------------------------------------------------------
// *nix C-Library core ...
// ---------------------------------------------------------------------------
{$I GNU_Library.pas}

// ---------------------------------------------------------------------------
// win32api:
// ---------------------------------------------------------------------------
{$I RTL_Windows.pas}
{$I FPC_WinErrors.pas}
{$I FPC_SysUtils.pas}

// ---------------------------------------------------------------------------
// TObject Framework - win32api ...
// ---------------------------------------------------------------------------
{$I RTL_Object.pas}
{$I RTL_List.pas}

{$I FPC_SymbolTable.pas}

{$I RTL_DosCmd.pas}
{$I RTL_DosIO.pas}

{$I RTL_win32.pas}

{$I RTL_VgaIO.pas}
{$I RTL_SystemIO.pas}
{$I RTL_CpuInfo.pas}

{$I RTL_Memory.pas}
{$I RTL_System.pas}
{ $ I R T L_Queue.pas}

// ---------------------------------------------------------------------------
// Qt-Framework GUI ...
// ---------------------------------------------------------------------------
{ $ I Q t _Object.pas}
{ $ I Q t _String.pas}
{ $ I Q t_Dialogs.pas}

// ---------------------------------------------------------------------------
implementation

{$undef  windows_header}  // interface
{$define windows_source}  // impl
{$M-}
// ---------------------------------------------------------------------------
// TObject Framework - win32api ...
// ---------------------------------------------------------------------------
{$I FPC_System.pas}

// ---------------------------------------------------------------------------
// win32api:
// ---------------------------------------------------------------------------
{$I RTL_Windows.pas}
{$I FPC_SysUtils.pas}

{$I RTL_Object.pas}
{$I RTL_List.pas}

{$I FPC_SymbolTable.pas}

{$I RTL_DosCmd.pas}
{$I RTL_DosIO.pas}

{$I RTL_win32.pas}

{$I RTL_VgaIO.pas}
{$I RTL_SystemIO.pas}
{$I RTL_CpuInfo.pas}

{$I RTL_Memory.pas}
{$I RTL_System.pas}
{ $ I R T L_Queue.pas}

// ---------------------------------------------------------------------------
// Qt-Framework GUI ...
// ---------------------------------------------------------------------------
{ $ I  Q t_Object.pas}
{ $ I  Q t_String.pas}
{ $ I  Q t_Dialogs.pas}

initialization
begin
    InitSystem;
    if isConsoleApp then
    printf('---< hocus pocus >-----'#13#10);
end;

finalization
begin
    DoneSystem;
    if isConsoleApp then
    printf('---< the end >-----'#13#10);
end;

end.
