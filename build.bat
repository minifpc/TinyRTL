:: -----------------------------------------------------------------
:: File:   build.bat
:: Author: (c) 2024 Jens Kallup - paule32
:: All rights reserved
::
:: only for education, and non-profit usage !
::
:: This batch file is optimized for a 64-Bit compilation, only.
:: I did not test other tools for 32-Bit or operating systems other
:: than Microsoft Windows 10/11 64-Bit Professional.
::
:: !!! YOU USE IT AT YOUR OWN RISK !!!
:: -----------------------------------------------------------------
@echo off
:: -----------------------------------------------------------------
:: developer project directory => location of the fpc project ...
:: -----------------------------------------------------------------
set prjdir=D:\a\TinyRTL\TinyRTL\src

set fpc=ppcrossx64.exe
set strip=strip.exe
set pakup=upx.exe

echo -[ remove old crap...           ]-
rmdir /s /q %prjdir%\test\out >nul: 2>nul:
mkdir %prjdir%\test\out

:: -----------------------------------------------------------------
:: units for fpc ...
:: -----------------------------------------------------------------
set fpcsrc=^
    -Fi%prjdir%\sources\fpc-sys ^
    -Fi%prjdir%\sources\fpc-win ^
    -Fi%prjdir%\sources\fpc-rtl ^
    -Fi%prjdir%\sources\fpc-gnu ^
    -Fi%prjdir%\sources\fpc-qt  ^
    ^
    -Fu%prjdir%\sources\fpc-sys ^
    -Fu%prjdir%\sources\fpc-win ^
    -Fu%prjdir%\sources\fpc-rtl ^
    -Fu%prjdir%\sources\fpc-gnu ^
    -Fu%prjdir%\sources\fpc-qt

set fpcEXEx64=^
    -n -Mdelphi -Twin64 -dwindows -dwin64 -O3 -Os ^
    -FE%prjdir%\test\out

set fpcDLLx64=

set fpcexe=%fpc% %fpcsrc% %fpcEXEx64%
set fpcdll=%fpc% %fpcsrc% %fpcEXEx64% %fpcDLLx64%

cd %prjdir%\test
::
%fpcdll% -dwindll testdll.pas -otestdll.dll
%fpcexe% -dwinexe testexe.pas -otestexe.exe

nm %prjdir%\test\out\testdll.dll > %prjdir%\test\out\testdll.txt
nm %prjdir%\test\out\testexe.exe > %prjdir%\test\out\testexe.txt

::set PYTHONHOME=
::E:\msys64\mingw64\bin\gdb ./testexe.exe

%strip% %prjdir%\test\out\testdll.dll
%strip% %prjdir%\test\out\testexe.exe

%pakup% %prjdir%\test\out\testdll.dll
%pakup% %prjdir%\test\out\testexe.exe

goto allok

:buildError
echo =[ build error ]=
exit
goto eof
:allok
echo =[ done ]=
goto eof
:eof
