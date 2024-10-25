// -----------------------------------------------------------------
// File:   test1.pas
// Author: (c) 2023 Jens Kallup - paule32
// All rights reserved
//
// only for education, and non-profit usage !
// -----------------------------------------------------------------
{$mode delphi}
{$linklib imptest1.a}
{$linklib impzuzu.a}
{$L test1helper.o}
program test1;

uses sysinit;

procedure Entry; [public, alias: '_mainCRTStartup'];
begin
    try
        InitSystem;
        //
        //DOS.WriteLn('mem, windows: initialized... ok.');
        sys.mem.alloc(128);
    finally
        //DOS.WriteLn('clean up...');
        DoneSystem;
        
        MessageBoxA(0,'Hello Fresh','Information',0);
        ExitProcess(0);
    end;
end;

begin
    Entry;
end.
