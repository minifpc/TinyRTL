// ---------------------------------------------------------------------------
// File:   sysutils.pas
// Author: Jens Kallup - paule32
//
// This file is part of RTL.
//
// (c) Copyright 2024 Jens Kallup - paule32
// only for non-profit usage !!!
// ---------------------------------------------------------------------------
{$ifdef windows_header}
{$ifndef __FPC_SYSUTILS__PAS_}
{$define __FPC_SYSUTILS__PAS_}

function FileCreate( const AFileName: PChar        ; flag: Boolean = false): Handle; overload;
function FileCreate( const AFileName: RawByteString; flag: Boolean = false): Handle; overload;

function FileDelete( const AFileName: PChar         ): Boolean; overload;
function FileDelete( const AFileName: RawByteString ): Boolean; overload;

function FileSeek(
    handle : Handle ;
    FOffset: DWORD  ;
    Origin : DWORD ): DWORD; overload;

function FileSeek(
    handle : THandle;
    FOffset: DWORD  ;
    Origin : DWORD ): DWORD; overload;

{$endif __FPC_SYSUTILS__PAS_}
{$endif}

{$ifdef windows_source}
function FileCreate( const AFileName: PChar; flag: Boolean ): Handle; overload;
var
    hd    : Handle;
    dumbi : Boolean;
    dummy : DWORD;
    error : DWORD;
    buffer: PChar;
begin
    ShowInfo('pacher');
    
    dummy := PathFileExistsA( AFileName );
    if dummy = 1 then begin
        if flag = false then begin
            error := ERROR_SUCCESS;
            
            GetMem(buffer, 255);

            strcpy( buffer, PChar('File: "'));
            strcat( buffer, PChar(AFileName));
            strcat( buffer, PChar('" already exists.\n'));
            strcat( buffer, PChar('Would you like override it ?'));
            
            dummy := MessageBox(0, buffer,
            'Information',
            MB_YESNO);
            if dummy = IDYES then begin
                FileDelete( AFileName );
                hd    := FileCreate( AFileName, true );
                error := GetLastError;
            end;
            FreeMem( buffer );
            if error <> ERROR_SUCCESS then begin
                ShowError('file could not be created !');
                exit;
            end;
        end else
        if flag = true then begin
            dumbi := DeleteFileA( AFileName );
            if Boolean(dummy) = false then begin
                ShowMessage('file not delete');
            end;
            hd := CreateFile(
            AFileName,
            GENERIC_WRITE,
            FILE_SHARE_READ or FILE_SHARE_WRITE,
            nil,
            CREATE_NEW,
            FILE_ATTRIBUTE_NORMAL,
            nil);
            result := hd;
            exit;
        end;
    end else begin
        hd := CreateFile(
            AFileName,
            GENERIC_WRITE,
            FILE_SHARE_READ or FILE_SHARE_WRITE,
            nil,
            CREATE_NEW,
            FILE_ATTRIBUTE_NORMAL,
            nil);
        error := GetLastError;
        if error <> ERROR_SUCCESS then begin
            ShowError('file could not be created !');
            exit;
        end;
    end;
    if THandle(hd) = INVALID_HANDLE_VALUE then begin
        GetMem( buffer, 255);
        
        strcpy( buffer, 'File: "' );
        strcat( buffer, AFileName );
        strcat( buffer, '" could not be open.' );

        ShowError( buffer );
        FreeMem  ( buffer );
        
        result := nil;
        exit;
    end;
    result := hd;
end;

function FileCreate( const AFileName: RawByteString; flag: Boolean ): Handle; overload;
begin
    result := FileCreate( PChar( AFileName ), flag );
end;

function FileDelete( const AFileName: PChar         ): Boolean; overload; begin result := DeleteFileA( PChar( AFileName ) ); end;
function FileDelete( const AFileName: RawByteString ): Boolean; overload; begin result := FileDelete ( PChar( AFileName ) ); end;

function FileSeek(
    handle : THandle;
    FOffset: DWORD  ;
    Origin : DWORD ): DWORD; overload;
var
    dummy : DWORD;
    error : DWORD;
begin
    dummy := SetFilePointer(handle, FOffset, nil, Origin);
    error := GetLastError;
    
    if ((dummy =  INVALID_SET_FILE_POINTER)
    and (error <> NO_ERROR)) then begin
        ShowError('SetFilePointer() failed.');
        result := -1;
        exit;
    end;

    result := dummy;
end;

function FileSeek(
    handle : Handle;
    FOffset: DWORD ;
    Origin : DWORD): DWORD; overload;
begin
    FileSeek(THandle(handle), FOffset, Origin);
end;

{$endif}
