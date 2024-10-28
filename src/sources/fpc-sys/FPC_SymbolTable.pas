// ---------------------------------------------------------------------------
// File:   FPC_SymbolTable.pas
// Author: Jens Kallup - paule32
//
// This file is part of RTL.
//
// (c) Copyright 2024 Jens Kallup - paule32
// only for non-profit usage !!!
// ---------------------------------------------------------------------------
{$ifdef windows_header}
{$mode delphi}
{$M-}

{$if declared(TProcedure) = false}
type
    TProcedure = procedure;
{$endif}

const
    maxunits = 1024;
type
    TInitFinalRec = record
        InitProc  : TProcedure;
        FinalProc : TProcedure;
    end;
    
    TInitFinalTable = record
        TableCount : QWORD;
        InitCount  : QWORD;
        Procs      : array[1..maxunits] of TInitFinalRec;
    end;
    
    PInitFinalTable = ^TInitFinalTable;
var
    InitFinalTable : TInitFinalTable; external name 'INITFINAL';

{$endif}

{$ifdef windows_source}
{$mode delphi}
{$M-}

{$endif}

