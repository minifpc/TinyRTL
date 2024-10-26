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
        // you can use all these three variants to write
        // text to a Windows Console (WriteLn) ...
        // ----------------------------------------------
        if sys.dos < 'Hello World !'then;
        sys.dos.WriteLn('next String');
        dos.WriteLn(PChar('dos string'));
        
        // ----------------------------------------------
        // to read text from a Windows Console, you can
        // use these variants (ReadLn) ...
        // ----------------------------------------------
        //if sys.dos > 'Input:' then;
        sys.dos.Read(S1, 'Input: ');
        sys.dos.WriteLn('--------');
        sys.dos.WriteLn(PChar(String(@S1)));
    finally
        DoneSystem;
    end;

    MessageBoxA(0,
        PChar(String(@S1)),
        PChar('Information'),
        0);
end.
