// ---------------------------------------------------------------------------
// File:   RTL_Object.pas
// Author: Jens Kallup - paule32
//
// This file is part of RTL.
//
// (c) Copyright 2024 Jens Kallup - paule32
// only for non-profit usage !!!
// ---------------------------------------------------------------------------
{$ifdef windows_header}
{$M-}
// ---------------------------------------------------------------------------
// TObjectm and IUnknown has to be defined first as forward class ...
// ---------------------------------------------------------------------------
type
    TObject = class
    public
        constructor Create;
        destructor Destroy; virtual;
        
        function ClassName: String; virtual;
        class function ClassParent: TObject; virtual;

        class procedure InitInstance(Instance: Pointer); virtual;
        class function NewInstance : TObject; virtual;
        class procedure FreeInstance; virtual;
        
        function SafeCallException( exceptobject: tobject; exceptaddr: codepointer ): HResult; virtual;
        procedure DefaultHandler(var message); virtual;
        
        procedure Free;

        procedure AfterConstruction; virtual;
        procedure BeforeDestruction; virtual;
    end;

    TClass = class of TObject;
    
{$endif}

{$ifdef windows_source}
{$M-}
// ---------------------------------------------------------------------------
// TObject: the base class of all sub classes:
// ---------------------------------------------------------------------------
constructor TObject.Create;
begin
    TObject.InitInstance(self);
end;

destructor TObject.Destroy;
begin
    FreeInstance;
end;
procedure TObject.AfterConstruction;
begin
//
end;
procedure TObject.BeforeDestruction;
begin
//
end;

function TObject.ClassName: String;
begin
    result := 'TObject';
end;

class function TObject.ClassParent: TObject;
begin
    result := nil;
end;

procedure TObject.Free;
begin
    if self <> nil then
    FreeInstance;
end;

class function TObject.NewInstance : TObject;
begin
    result := TObject(
        VirtualAlloc(nil, SizeOf(TObject),
        MEM_COMMIT or MEM_RESERVE, PAGE_READWRITE));

    if result = nil then
    begin
        MessageBoxA(0,
            PChar('internal Error.'),
            PChar('Error'),
            MB_OK or MB_ICONERROR);
        ExitProcess(1);
    end;
end;

class procedure TObject.InitInstance(Instance: Pointer);
begin
    PPointer(Instance)^ := Pointer(self);
end;

class procedure TObject.FreeInstance;
begin
    if self <> nil then
    begin
        VirtualFree(Pointer(self), 0, MEM_RELEASE);
    end;
end;

function SafeCallException( obj: codepointer; exceptaddr: codepointer ): HResult;
begin
//
end;

function TObject.SafeCallException(exceptobject : tobject; exceptaddr : codepointer) : HResult;
begin
  result := 1;
end;

procedure TObject.DefaultHandler(var message);
begin
    //MessageBoxA(0, PChar('tobject DEFAULT HANDLER'), PChar('info'), 0);
end;
{$endif}
