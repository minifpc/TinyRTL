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
    TMemory = class(TObject)
    private
        class var     FClassMemory: Pointer;
        class var     FClassParent: TObject;
        class function   GetParent: TObject; static;
    public
        constructor Create(AParent: TObject; var AValue: Pointer); overload;
        constructor Create(AParent: TObject;     AValue: DWORD  ); overload;
        constructor Create(AParent: TObject); overload;
        //
        constructor Create(AValue: DWORD); overload;
        constructor Create; overload;
        //
        destructor Destroy;
        
        function  Alloc(var AValue: Pointer; ASize: DWORD): Pointer; overload;
        procedure Alloc; overload;
        
        class function ClassParent: TObject; virtual;
        
        procedure Free (AValue: Pointer); overload;
        procedure Free; overload;
        
        function ClassName: String; virtual;

        class property Parent: TObject read GetParent;
        class property Memory: Pointer read FClassMemory write FClassMemory;
    end;
var
    mem: TMemory;

procedure InitMemory;
procedure DoneMemory;

{$endif}

{$ifdef windows_source}
{$mode delphi}

{ TMemory }

procedure InitMemory;
begin
    if mem = nil then
    begin
        mem := TMemory.Create;
    end;
end;
procedure DoneMemory;
begin
    if mem <> nil then
    mem.Free;
end;

constructor TMemory.Create;
begin
    self.Create(DWORD(512));  // default
end;
constructor TMemory.Create(AValue: DWORD);
begin
    inherited Create;
    FClassMemory := self.Alloc(FClassMemory, AValue);
    FClassParent := nil;
end;
constructor TMemory.Create(AParent: TObject);
begin
    inherited Create;
    self.Create(AParent, sizeof(TObject));
    
    FClassParent := AParent;
end;
constructor TMemory.Create(AParent: TObject; AValue: DWORD);
begin
    self.Create(AValue);
    FClassParent := AParent;
end;
constructor TMemory.Create(AParent: TObject; var AValue: Pointer);
begin
    inherited Create;
    FClassParent := AParent;
    
    if AValue <> nil then
    begin
        FClassMemory := AValue;
    end else
    begin
        AValue := self.Alloc(AValue, sizeof(TObject));
        FClassMemory := AValue;
    end;
end;

destructor TMemory.Destroy;
begin
    inherited Destroy;
end;

class function TMemory.GetParent: TObject;
begin
    result := FClassParent;
end;
class function TMemory.ClassParent: TObject;
begin
    result := Parent;
end;

function TMemory.ClassName: String;
begin
    result := 'TMemory';
end;

function TMemory.Alloc(var AValue: Pointer; ASize: DWORD): Pointer;
begin
    result := nil;
    
    AValue := VirtualAlloc(nil, ASize,
    MEM_COMMIT or MEM_RESERVE, PAGE_READWRITE);
    
    if AValue = nil then
    begin
        MessageBoxA(0,
        PChar('Error: could not allocate memory.'),
        PChar('Error'), 0);
        exit;
    end;
    
    result := AValue;
end;
procedure TMemory.Alloc;
begin
    Alloc(FClassMemory, 512);
end;

procedure TMemory.Free(AValue: Pointer);
begin
    if FClassMemory <> nil then
    VirtualFree(FClassMemory, 0, MEM_RELEASE);
    
    if FClassParent <> nil then
    FClassParent.Free;
    
    if self <> nil then
    self.Destroy;
end;
procedure TMemory.Free;
begin
    if FClassMemory <> nil then
    VirtualFree(FClassMemory, 0, MEM_RELEASE);
    
    if FClassParent <> nil then
    FClassParent.Free;
    
    if self <> nil then
    self.Destroy
end;

{$endif}
