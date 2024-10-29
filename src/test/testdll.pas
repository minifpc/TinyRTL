{$mode delphi}
library testdll;

procedure test1dll; stdcall;
begin
    MessageBoxA(0,PChar('lulu'),PChar('info'),0);
end;

exports
    test1dll;

begin
end.
