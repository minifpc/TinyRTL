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
{$M-}
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
{$M-}
constructor TAnsiStringMemoryManager.Create;
begin
    MessageBoxA(0, PChar('AnsiManager create'), PChar('info'), 0);
    inherited Create;
    MessageBoxA(0, PChar('Ansi CTOR'), PChar('info'), 0);
    FMemoryPool := TList.Create;
    MessageBoxA(0, PChar('ANSI CTOR...'), PChar('info'), 0);
end;

destructor TAnsiStringMemoryManager.Destroy;
begin
    MessageBoxA(0, PChar('AnsiManager destroy'), PChar('info'), 0);
    FMemoryPool.Free;
    MessageBoxA(0, PChar('Manager FREE'), PChar('info'), 0);
    inherited Destroy;
end;

{$endif}
