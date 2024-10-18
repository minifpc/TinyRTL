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
{$M-}
    TAnsiStringMemoryManager = class
    private
        FMemoryPool: TList;
    public
        constructor Create;
        destructor Destroy;
    end;
{$endif}

{$ifdef windows_source}
{$M-}
constructor TAnsiStringMemoryManager.Create;
begin
    MessageBox(0,'AnsiManager create','info',0);
    inherited Create;
    FMemoryPool := TList.Create;
end;

destructor TAnsiStringMemoryManager.Destroy;
begin
    MessageBox(0,'AnsiManager destroy','info',0);
    FMemoryPool.Free;
    inherited Destroy;
end;

{$endif}
