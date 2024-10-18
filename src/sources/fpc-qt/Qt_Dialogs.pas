// -----------------------------------------------------------------
// File:   Qt_Dialogs.pas
// Author: (c) 2023 Jens Kallup - paule32
// All rights reserved
//
// only for education, and non-profit usage !
// -----------------------------------------------------------------
{$mode delphi}
{$M-}
unit Qt_Dialogs;

interface
uses Qt_String;

function MessageBox(AText: QString; ATitle: QString): DWORD; overload;
function MessageBox(AText: QString; ATitle: PChar  ): DWORD; overload;
function MessageBox(AText: String;  ATitle: String ): DWORD; overload;

implementation

function MessageBox(AText: QString; ATitle: QString): DWORD;
begin
    //MessageBox(0, AText.getText, ATitle.getText, 0);
    result := 1;
end;
function MessageBox(AText: QString; ATitle: PChar  ): DWORD;
begin
    result := 1;
end;
function MessageBox(AText: String; ATitle: String ): DWORD;
begin
    result := 1;
end;

begin
end.
