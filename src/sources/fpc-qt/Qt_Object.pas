// ---------------------------------------------------------------------------
// File:   Q_Object.pas
// Author: Jens Kallup - paule32
//
// This file is part of RTL.
//
// (c) Copyright 2024 Jens Kallup - paule32
// only for non-profit usage !!!
// ---------------------------------------------------------------------------
{$ifdef windows_header}
{$I fpc_types.pas}
{$ifndef __QT_OBJECT_HDR__}
{$define __QT_OBJECT_HDR__}

// ---------------------------------------------------------------------------
// QString Qt-Framework GUI ...
// ---------------------------------------------------------------------------
type
    QObject = class(TObject)
    public
        constructor Create;
        destructor Destroy; virtual;
    end;

function Q_NULLPTR: Pointer; inline;

{$endif}    // __QT_OBJECT_HDR__
{$endif}

{$ifdef windows_source}

constructor QObject.Create;
begin
end;
destructor QObject.Destroy;
begin
end;

function Q_NULLPTR: Pointer; inline;
begin
    result := Pointer(0);
end;

{$endif}

