// -----------------------------------------------------------------
// File:   test1.pas
// Author: (c) 2023 Jens Kallup - paule32
// All rights reserved
//
// only for education, and non-profit usage !
// -----------------------------------------------------------------
{$ENTRYPOINT PASCALMAIN}
{$mode delphi}
{$M-}
program test1;

uses sysinit, Qt_String;

procedure ExitProcess(AValue: Integer); external 'kernel32.dll';
function MessageBoxA(
    hWnd: HWND;
    lpText, lpCaption: PChar;
    uType: UINT
):  Integer; stdcall;
    external 'user32.dll';

var
    MemoryManager: TAnsiStringMemoryManager;

procedure Entry; [public, alias: '_mainCRTStartup'];
var
    hm: HMODULE;
    qs: QString;
begin
    MemoryManager := TAnsiStringMemoryManager.Create;
    try
        MessageBoxA(0, PChar('start...'), PChar('info'), 0);
        InitConsole;
        DOS.Write('Hello World !');
        MessageBoxA(0, PChar('next...'), PChar('info'), 0);
    finally
        MessageBoxA(0, PChar('next end...'), PChar('info'), 0);
        MemoryManager.Free;
        MessageBoxA(0, PChar('ende...'), PChar('info'), 0);
    end;

    //InitConsole;
    //qs := QString.Create('one string');
    //move(qs, qs, 4);
        
    MessageBoxA(0,'qs','Information',0);
    ExitProcess(0);
end;

begin
end.
