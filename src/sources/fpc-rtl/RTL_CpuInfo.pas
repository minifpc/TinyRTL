// ---------------------------------------------------------------------------
// File:   RTL_CpuInfo.pas
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
    TCPU = class(TObject)
    private
        class var     FClassParent : TObject;
        class function   GetParent : TObject; static;
    public
        constructor Create;
        destructor Destroy;
        
        class function ClassParent: TObject; virtual;
        class function ClassName:    String; virtual;
        
        class property Parent: TObject read GetParent;
    end;
{$endif}

{$ifdef windows_source}
{$mode delphi}
{$M-}
constructor TCPU.Create;
begin
    inherited Create;
end;
destructor TCPU.Destroy;
begin
    inherited Destroy;
end;
class function TCPU.ClassName: String;
begin
    result := 'TCPU';
end;
class function TCPU.ClassParent: TObject;
begin
    result := Parent;
end;
class function TCPU.GetParent: TObject;
begin
    result := FClassParent;
end;

{$endif}
