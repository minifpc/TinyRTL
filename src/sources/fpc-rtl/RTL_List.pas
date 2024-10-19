// ---------------------------------------------------------------------------
// File:   FPC_List.pas
// Author: Jens Kallup - paule32
//
// This file is part of RTL.
//
// (c) Copyright 2024 Jens Kallup - paule32
// only for non-profit usage !!!
// ---------------------------------------------------------------------------
{$ifdef windows_header}
{$delphi}
{$M-}
type
    TList = class(TObject)
    public
        constructor Create;
        destructor Destroy;
    end;

{$endif}

{$ifdef windows_source}
{$delphi}
{$M-}
constructor TList.Create;
begin
    MessageBoxA(0, PChar('TList CTOR'), PChar('info'), 0);
    inherited Create;
    MessageBoxA(0, PChar('After TList CTOR'), PChar('info'), 0);
end;

destructor TList.Destroy;
begin
    MessageBoxA(0, PChar('TList Destroy'), PChar('info'), 0);
    //inherited Destroy;
end;
{$endif}
