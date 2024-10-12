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

// ---------------------------------------------------------------------------
// TObjectm and IUnknown has to be defined first as forward class ...
// ---------------------------------------------------------------------------
type
    TObject = class
    public
        constructor Create;
        destructor Destroy; virtual;
        class function newinstance : tobject; virtual;
        procedure FreeInstance; virtual;
        function SafeCallException( exceptobject: tobject; exceptaddr: codepointer ): HResult; virtual;
        procedure DefaultHandler(var message); virtual;
        
        procedure Free;

        procedure AfterConstruction; virtual;
        procedure BeforeDestruction; virtual;
    end;
{$endif}

{$ifdef windows_source}
// ---------------------------------------------------------------------------
// TObject: the base class of all sub classes:
// ---------------------------------------------------------------------------
constructor TObject.Create;
begin
end;

destructor TObject.Destroy;
begin
end;
procedure TObject.AfterConstruction;
begin
end;
procedure TObject.BeforeDestruction;
begin
end;

procedure TObject.Free;
begin
    if self <> nil then
    self.destroy;
end;

class function TObject.NewInstance : tobject;
begin
end;

procedure TObject.FreeInstance;
begin
end;

function TObject.SafeCallException(exceptobject : tobject; exceptaddr : codepointer) : HResult;
begin
  result := 1;
end;

procedure TObject.DefaultHandler(var message);
begin
end;
{$endif}
