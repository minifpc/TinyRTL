// -----------------------------------------------------------------
// File:   test1.pas
// Author: (c) 2023 Jens Kallup - paule32
// All rights reserved
//
// only for education, and non-profit usage !
// -----------------------------------------------------------------
{$mode delphi}
program test1;

uses RTL_Memory, Qt_String;

procedure ExitProcess(AValue: Integer); external 'kernel32.dll';

procedure Entry;
var
    hm: HMODULE;
    qs: QString;
begin
    qs := QString.Create('one string');
    move(qs, qs, 4);
        
    MessageBox(0,'qs','Information',0);
    ExitProcess(0);
end;

begin
    Entry;
end.
