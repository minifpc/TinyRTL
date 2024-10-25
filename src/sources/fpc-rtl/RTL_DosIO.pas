// ---------------------------------------------------------------------------
// File:   RTL_DosIO.pas
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
type
    TDosIO = record
    public
        class operator < (A: TDosIO; AString: String): Boolean;
        class operator > (A: TDosIO; AString: String): Boolean;
    end;

{$endif}

{$ifdef windows_source}
{$mode delphi}
{$M-}

class operator TDosIO.<(A: TDosIO; AString: String): Boolean;
begin
end;
class operator TDosIO.>(A: TDosIO; AString: String): Boolean;
begin
end;

{$endif}
