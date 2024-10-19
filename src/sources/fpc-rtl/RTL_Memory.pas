// ---------------------------------------------------------------------------
// File:   FPC_Memory.pas
// Author: Jens Kallup - paule32
//
// This file is part of RTL.
//
// (c) Copyright 2024 Jens Kallup - paule32
// only for non-profit usage !!!
// ---------------------------------------------------------------------------
{$ifdef windows_header}
{$mode delphi}
    TAnsiStringMemoryManager = class(TObject)
    private
        FMemoryPool: TList;
    public
        constructor Create;
        destructor Destroy;
    end;
{$endif}

{$ifdef windows_source}
{$mode delphi}
constructor TAnsiStringMemoryManager.Create;
begin
    inherited Create;
    FMemoryPool := TList.Create;
end;

destructor TAnsiStringMemoryManager.Destroy;
begin
    FMemoryPool.Free;
    inherited Destroy;
end;

{$endif}
