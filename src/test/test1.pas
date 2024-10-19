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

var
    MemoryManager: TAnsiStringMemoryManager;

procedure Entry; [public, alias: '_mainCRTStartup'];
var
    hm: HMODULE;
    qs: QString;
begin
    MemoryManager := TAnsiStringMemoryManager.Create;
    try
        InitConsole;
        DOS.Write('Hello World !');
    finally
        MemoryManager.Free;
    end;

    MessageBoxA(0,'qs','Information',0);
    ExitProcess(0);
end;

begin
end.
