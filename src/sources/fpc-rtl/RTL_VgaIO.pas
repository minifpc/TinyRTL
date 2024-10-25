// ---------------------------------------------------------------------------
// File:   RTL_VgaIO.pas
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
    TVgaIO = record
    public
        class operator < (A: TVgaIO; AString: String): Boolean;
        class operator > (A: TVgaIO; AString: String): Boolean;
    end;
{$endif}

{$ifdef windows_source}
{$mode delphi}
{$M-}
class operator TVgaIO.<(A: TVgaIO; AString: String): Boolean;
begin
end;
class operator TVgaIO.>(A: TVgaIO; AString: String): Boolean;
begin
end;
{$endif}
