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
type
    TMemory = class(TObject)
    private
        class var     FClassMemory : Pointer;
        class var     FClassMemSize: DWORD;
        class var     FClassParent : TObject;
    public
        constructor Create(AParent : TObject; AValue: DWORD); overload;
        constructor Create(AParent : TObject); overload;
        //
        constructor Create(AValue: DWORD); overload;
        constructor Create; overload;
        //
        destructor Destroy;
        
        function  Alloc(ASize: DWORD): Pointer; overload;
        procedure Alloc; overload;
        procedure Free; virtual;
        
        class function ClassName: String; virtual;
        //
        class property Data: Pointer read FClassMemory write FClassMemory;
        class property Size: DWORD read FClassMemSize;
    end;

var
    mem: TMemory = nil;

procedure InitMemory;
procedure DoneMemory;

{$endif}

{$ifdef windows_source}
{$mode delphi}

{ TMemory }

procedure InitMemory;
begin
    mem := TMemory.Create;
end;
procedure DoneMemory;
begin
    mem.Free;
end;

constructor TMemory.Create;
begin
    inherited Create;

    self.Create(DWORD(512));  // default
end;
constructor TMemory.Create(AValue: DWORD);
begin
    inherited Create;

    FClassMemSize := 0;
    FClassMemory  := self.Alloc(AValue);
    FClassParent  := nil;
end;
constructor TMemory.Create(AParent: TObject; AValue: DWORD);
begin
    inherited Create;
    
    self.Create(DWORD(AValue));
    FClassParent := AParent;
end;
constructor TMemory.Create(AParent: TObject);
begin
    inherited Create;

    if AParent = nil then
    begin
        FClassMemSize := sizeof(TObject);
        FClassMemory  := VirtualAlloc(nil,
        FClassMemSize,
        MEM_COMMIT or MEM_RESERVE, PAGE_READWRITE);
        
        if FClassMemory = nil then
        begin
            MessageBoxA(0,
            PChar('Error: could not allocate memory.'),
            PChar('Error'), 0);
            exit;
        end;
    end else
    begin
        FClassParent := AParent;
        FClassMemory := self.Alloc(sizeof(TObject));
    end;
end;

destructor TMemory.Destroy;
begin
    inherited Destroy;
end;

class function TMemory.ClassName: String;
begin
    result := 'TMemory';
end;

function TMemory.Alloc(ASize: DWORD): Pointer;
begin
    result := nil;
    
    if FClassMemSize = ASize then exit else
    if FClassMemSize = 0 then
    begin
        FClassMemory := VirtualAlloc(nil, ASize,
        MEM_COMMIT or MEM_RESERVE, PAGE_READWRITE);
        
        if FClassMemory = nil then
        begin
            MessageBoxA(0,
            PChar('Error: could not allocate memory.'),
            PChar('Error'), 0);
            exit;
        end;
        
        FClassMemSize := ASize;
    end;
    result := FClassMemory;
end;
procedure TMemory.Alloc;
begin
    self.Alloc(512);
end;

procedure TMemory.Free;
begin
    if FClassMemory <> nil then
    VirtualFree(FClassMemory, 0, MEM_RELEASE);

    if FClassParent <> nil then
    FClassParent.Free;
end;

{$endif}
