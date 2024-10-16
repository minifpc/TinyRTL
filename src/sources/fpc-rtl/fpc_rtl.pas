// -----------------------------------------------------------------
// File:   fpc_rtl.pas
// Author: (c) 2024 Jens Kallup - paule32
// All rights reserved
//
// only for education, and non-profit usage !
// -----------------------------------------------------------------
{$mode delphi}
library fpc_rtl;
uses RTL_Memory;

{$define windows_header}

var LibraryHdl      : HMODULE;

function PutToFile(const AFileName: PChar; AData: PChar): Boolean;
var
    hFile    : Handle;
    count    : DWORD;
    dataSize : DWORD;
    buffer   : PChar;
    p1,p2,p3,
    p4       : PChar;
    
    overlap  : POverlapped;
    dummy    : DWORD;
    error    : DWORD;
begin
    result   := false;
    dataSize := strlen( AData );

    ShowInfo('sssss');

    // --------------------------------------------
    // first look, if we can find the lock file ...
    // --------------------------------------------
    dummy := PathFileExistsA( AFileName );
    if dummy = 1 then begin
        hfile := FileCreate( AFileName );
    end else begin
        hFile := FileCreate( AFileName, true );
    end;
    if THandle(hFile) = INVALID_HANDLE_VALUE then begin
        buffer := malloc(200);
        
        strcpy( buffer, PChar('file: "'));
        strcat( buffer, PChar(AFileName));
        strcat( buffer, PChar('" could not be write.'));
        
        ShowError( buffer );
        ExitProcess(GetLastError);
    end;

    ShowInfo('CreateFile() success');

    FileSeek(hfile, 0, FILE_END);
        
    ShowInfo('SetFilePointer() success.');
    
    WriteFile(THandle(hfile), GetModuleHandle(nil) );
    error := GetLastError;
    FreeMem(buffer);
    
    if error <> NO_ERROR then begin
        ShowError('WriteFile() failed.');
        ExitProcess(error);
    end;
    
    ShowInfo('WriteFile() success.');
    
    if CloseHandle(THandle(hFile)) = 0 then begin
        ShowError('CloseHandle() failed.');
        ExitProcess(GetLastError);
    end;

    ShowInfo('CloseHandle() success.');
    result := true;
end;

function initialize: BOOL; stdcall;
var
    msg: TMessage;
begin
    MessageBox(0,'hel --mumu-- lo','world',0);
    result := 1;
    exit;
    
    while (GetMessage(msg, LongWord( LibraryHdl ), 0, 0) > 0) do
    begin
        case msg.message of
            $10001: begin
                break;
            end;
        end;
        TranslateMessage (msg);
        DispatchMessage  (msg);
    end;

    ExitProcess(0);
    result := 1;
end;

function DLLEntry(
    hModule    : HANDLE;
    dwReason   : DWORD ;
    lpReserved : PVOID): BOOL;
    stdcall; export; public name '_DLLMainCRTStartup';
begin
    case dwReason of
        DLL_PROCESS_ATTACH: begin
            // save our HANDLE
            LibraryHdl := GetModuleHandle(nil);
            initialize;
        end;
        DLL_PROCESS_DETACH: begin
        end;
    end;
end;    

exports
    move;

begin
    ShowInfo('hello');
end.
