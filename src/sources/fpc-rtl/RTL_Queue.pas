// ---------------------------------------------------------------------------
// File:   RTL_Queue.pas
// Author: Jens Kallup - paule32
//
// This file is part of RTL.
//
// (c) Copyright 2024 Jens Kallup - paule32
// only for non-profit usage !!!
// ---------------------------------------------------------------------------
{$ifdef windows_header}
{$M-}
type
    TQueue = class(TObject)
    private
        FObject: Pointer;
        FPrev: TQueue;
    public
        function  Add(obj: Pointer): TQueue;
        function  Find(head: TQueue): TQueue;
        procedure Free(node: TQueue);
        
        constructor Create;
        destructor Destroy;
    end;
{$endif}

{$ifdef windows_source}
{$M-}
{$L TQueue_extern.o}
var
    TQueue_mem_temp: TQueue; external name 'TQueue_mem_temp';

constructor TQueue.Create;
begin
    inherited Create;

    if TQueue_mem_temp = nil then
    begin
        TQueue_mem_temp := TQueue.Create;
        TQueue_mem_temp.FPrev := nil;
    end;
end;

destructor TQueue.Destroy;
var
    current: TQueue;
begin
    (*current := TQueue_mem_head;
    while current <> nil do
    begin
        current := current.FNext;
        TQueue_mem_head := current;
    end;*)
    inherited Destroy;
end;

function TQueue.Add(obj: Pointer): TQueue;
begin
end;
function TQueue.Find(head: TQueue): TQueue;
begin
end;

procedure TQueue.Free(node: TQueue);
begin
end;
{$endif}
