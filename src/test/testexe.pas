// -----------------------------------------------------------------
// File:   test1.pas
// Author: (c) 2024 Jens Kallup - paule32
// All rights reserved
//
// only for education, and non-profit usage !
// -----------------------------------------------------------------
{$mode delphi}
{$M-}
program testexe;

procedure test1dll; stdcall; external 'testdll.dll';

var
    S1: TString;
begin
    try
        try
            dos.WriteLn('next String');
            dos.WriteLn(PChar('dos string'));
            test1dll;
            raise Exception.Create(TString('wooops')); // at pointer($a1), pointer($b2);
            dos.Read(S1, 'Input: ');
            dos.WriteLn('--------');
            dos.WriteLn(S1);
        except
            dos.WriteLn('in exeception block');
        end;
    finally
        try
            raise Exception.Create('lila');
        except
            dos.Writeln('mupf');
        end;
        MessageBoxA(0, S1, TString('Information'), 0);
    end;
    
    S1 := PChar(''
    + '    HELLO MINI TEAM !!!'
    + #13#10#13#10
    + 'Have a nice Day...');
    
    MessageBoxA(0, PChar(S1),'done',0);
end.
