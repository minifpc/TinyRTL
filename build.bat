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
set BASEDIR=%cd%
set prjdir=%BASEDIR%\src

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
    -n -Mdelphi -Twin64 -dwindows -dwin64 -O3 -Os -a ^
    -FE%prjdir%\test\out -Xs 

set fpcDLLx64=

set fpcexe=%fpcsrc% %fpcEXEx64%
set fpcdll=%fpcsrc% %fpcEXEx64% %fpcDLLx64%

cd src\test
::
fpc.exe %fpcsrc% %fpcEXEx64% %fpcDLLx64% -dwindll testdll.pas -otestdll.dll
if errorlevel 1 (goto buildError)

fpc.exe %fpcsrc% %fpcEXEx64% -dwinexe testexe.pas -otestexe.exe
if errorlevel 1 (goto buildError)

::nm %prjdir%\test\out\testdll.dll > %prjdir%\test\out\testdll.txt
::nm %prjdir%\test\out\testexe.exe > %prjdir%\test\out\testexe.txt

::set PYTHONHOME=
::E:\msys64\mingw64\bin\gdb ./testexe.exe

%strip% %prjdir%\test\out\testdll.dll >nul 2>&1
if errorlevel 1 (goto buildError)

%strip% %prjdir%\test\out\testexe.exe >nul 2>&1
if errorlevel 1 (goto buildError)

%pakup% %prjdir%\test\out\testdll.dll >nul 2>&1
if errorlevel 1 (goto buildError)

%pakup% %prjdir%\test\out\testexe.exe >nul 2>&1
if errorlevel 1 (goto buildError)

copy %prjdir%\test\utils.dll %prjdir%\test\out\utils.dll >nul 2>&1
if errorlevel 1 (goto buildError)

goto allok

:buildError
echo =[ build error ]=
goto eof
:allok
echo =[ done ]=
goto eof
:eof
