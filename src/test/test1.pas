// -----------------------------------------------------------------
// File:   test1.pas
// Author: (c) 2023 Jens Kallup - paule32
// All rights reserved
//
// only for education, and non-profit usage !
// -----------------------------------------------------------------
{$mode delphi}
program test1;

uses sysinit;

procedure Entry; [public, alias: '_mainCRTStartup'];
begin
    try
        InitMemory;
        InitConsole;
        //
        DOS.WriteLn('mem, windows: initialized... ok.');
    finally
        DOS.WriteLn('clean up...');
        DoneConsole;
        DoneMemory;
        
        MessageBoxA(0,'Hello Fresh','Information',0);
        ExitProcess(0);
    end;
end;

begin
end.
