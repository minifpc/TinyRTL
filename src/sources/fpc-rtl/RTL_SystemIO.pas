// ---------------------------------------------------------------------------
// File:   RTL_SystemIO.pas
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
    TSystemIO = record
    public
        class operator < (A: TSystemIO; AString: String): Boolean;
        class operator > (A: TSystemIO; AString: String): Boolean;
    end;
{$endif}

{$ifdef windows_source}
{$mode delphi}
{$M-}

class operator TSystemIO.<(A: TSystemIO; AString: String): Boolean;
begin
    //DOS := TDosCmd.Create;
end;
class operator TSystemIO.>(A: TSystemIO; AString: String): Boolean;
begin
end;

{$endif}