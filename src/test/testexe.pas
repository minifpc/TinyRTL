// -----------------------------------------------------------------
// File:   test1.pas
// Author: (c) 2023 Jens Kallup - paule32
// All rights reserved
//
// only for education, and non-profit usage !
// -----------------------------------------------------------------
{$mode delphi}
program testexe;

procedure test1dll; stdcall; external 'testdll.dll';

var
    S1: String;
begin
    try
        dos.WriteLn('next String');
        dos.WriteLn(PChar('dos string'));
        test1dll;
        
        dos.Read(S1, 'Input: ');
        dos.WriteLn('--------');
        dos.WriteLn(@S1);
    finally
        MessageBoxA(0,
            PChar(@S1),
            PChar('Information'),
            0);
    end;
    
    S1 := PChar(''
    + '    HELLO MINI TEAM !!!'
    + #13#10#13#10
    + 'Have a nice Day...');
    
    MessageBoxA(0, PChar(S1),'done',0);
end.
