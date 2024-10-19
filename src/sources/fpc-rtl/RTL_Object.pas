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
    protected
        class procedure InitInstance(Instance: Pointer); virtual;
        class function NewInstance : TObject; virtual;
    public
        constructor Create;
        destructor Destroy; virtual;
        
        function ClassName: String; virtual;
        class function ClassParent: TObject; virtual;
        
        procedure FreeInstance; virtual;
        
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
    MessageBoxA(0, PChar('tobject create'), PChar('info'), 0);
    TObject.InitInstance(self);
    MessageBoxA(0, PChar('tobject successfully created'), PChar('info'), 0);
end;

destructor TObject.Destroy;
begin
    MessageBoxA(0, PChar('tobject destroy'), PChar('info'), 0);
end;
procedure TObject.AfterConstruction;
begin
    MessageBoxA(0, PChar('Tobject AfterConstruction'), PChar('info'), 0);
end;
procedure TObject.BeforeDestruction;
begin
    MessageBoxA(0, PChar('Tobject BeforeDestruction'), PChar('info'), 0);
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
    MessageBoxA(0, PChar('tobject FREE'), PChar('info'), 0);
    if self <> nil then
    self.Destroy;
end;

class function TObject.NewInstance : TObject;
begin
    MessageBoxA(0, PChar('tobject NEWINSTANCE'), PChar('info'), 0);
end;

class procedure TObject.InitInstance(Instance: Pointer);
begin
    MessageBoxA(0, PChar('INIT INSTANCE'), PChar('info'), 0);
    PPointer(Instance)^ := Pointer(self);
end;

procedure TObject.FreeInstance;
begin
    MessageBoxA(0, PChar('tobject FREEINSTANCE'), PChar('info'), 0);
end;

function SafeCallException( obj: codepointer; exceptaddr: codepointer ): HResult;
begin
    MessageBoxA(0, PChar('tobject SAFECALLEXCEPTION'), PChar('info'), 0);
end;

function TObject.SafeCallException(exceptobject : tobject; exceptaddr : codepointer) : HResult;
begin
    MessageBoxA(0, PChar('SAFECALLEXCEPTION'), PChar('info'), 0);
  result := 1;
end;

procedure TObject.DefaultHandler(var message);
begin
    MessageBoxA(0, PChar('tobject DEFAULT HANDLER'), PChar('info'), 0);
end;
{$endif}
