// -----------------------------------------------------------------
// File:   test1.pas
// Author: (c) 2023 Jens Kallup - paule32
// All rights reserved
//
// only for education, and non-profit usage !
// -----------------------------------------------------------------
{$mode delphi}
{$M-}
program test1;

var
    S1: String;
begin
    try
        InitSystem;
        // ----------------------------------------------
        // you can use all these variants to write
        // text to a Windows Console (WriteLn) ...
        // ----------------------------------------------
        dos.WriteLn('next String');
        dos.WriteLn(PChar('dos string'));
        
        // ----------------------------------------------
        // to read text from a Windows Console, you can
        // use these variants (ReadLn) ...
        // ----------------------------------------------
        dos.Read(S1, 'Input: ');
        dos.WriteLn('--------');
        dos.WriteLn(@S1);
    finally
        MessageBoxA(0,
            PChar(@S1),
            PChar('Information'),
            0);
        DoneSystem;
    end;
    MessageBoxA(0,'finally endy','done',0);
end.
