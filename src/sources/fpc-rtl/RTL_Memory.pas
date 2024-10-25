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
type
    TMemory = class(TObject)
    private
        class var     FClassMemory : Pointer;
        class var     FClassMemSize: DWORD;
        class var     FClassParent : TObject;
        class function   GetParent : TObject; static;
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
        procedure Free;
        
        class function ClassParent: TObject; virtual;
        class function ClassName:    String; virtual;

        class property Parent: TObject read GetParent;
        //
        class property Data: Pointer read FClassMemory write FClassMemory;
        class property Size: DWORD read FClassMemSize;
    end;

    TSystem = class(TObject)
    private
        class var      FSystemIO: TSystemIO;
        class var   FClassParent: TObject;
        class var      FMemClass: TMemory;
        class var      FCpuClass: TCPU;
        class var      FVgaClass: TVgaIO;
        class var      FDosClass: TDosIO;
        class function GetMemory: TMemory; static;
    public
        constructor Create;
        destructor Destroy;
        
        class function ClassParent: TObject; virtual;
        class function ClassName:    String; virtual;

        class property Parent: TObject read FClassParent;
        //
        class property cpu: TCPU read FCpuClass;
        class property mem: TMemory read GetMemory;
        class property vga: TVgaIO read FVgaClass;
        class property dos: TDosIO read FDosClass;
        //
        class property io : TSystemIO read FSystemIO;
    end;
var
    sys: TSystem;
    mem: TMemory;

procedure InitSystem;
procedure DoneSystem;

{$endif}

{$ifdef windows_source}
{$mode delphi}

procedure InitSystem;
begin
    if sys = nil then
    begin
        sys := TSystem.Create;
    end;
end;
procedure DoneSystem;
begin
    if sys <> nil then
    sys.Free;
end;


{ TSystem }

constructor TSystem.Create;
begin
    inherited Create;
    FMemClass := TMemory.Create;
end;
destructor TSystem.Destroy;
begin
    if FMemClass <> nil then
    begin
        FMemClass.Free;
        FMemClass := nil;
    end;
    
    inherited Destroy;
end;

class function TSystem.GetMemory: TMemory;
begin
    if FMemClass = nil then
    FMemClass := TMemory.Create;
    result := FMemClass;
end;
class function TSystem.ClassName: String;
begin
    result := 'TSystem';;
end;
class function TSystem.ClassParent: TObject;
begin
    result := Parent;
end;
class function TMemory.GetParent: TObject;
begin
    result := FClassParent;
end;


{ TMemory }

constructor TMemory.Create;
begin
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
    self.Create(AValue);
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

class function TMemory.ClassParent: TObject;
begin
    result := Parent;
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
    
    if self <> nil then
    self.Destroy
end;

{$endif}
