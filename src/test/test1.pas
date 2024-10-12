// -----------------------------------------------------------------
// File:   test1.pas
// Author: (c) 2023 Jens Kallup - paule32
// All rights reserved
//
// only for education, and non-profit usage !
// -----------------------------------------------------------------
{$mode delphi}
program test1;

procedure Entry;
stdcall; public name '_mainCRTStartup';
var
    hm: HMODULE;
    qs: QString;
begin
    qs := QString.Create('one string');
        
    MessageBox(qs,'Information');
    ExitProcess(0);
end;

begin
end.
