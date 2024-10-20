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
setlocal enabledelayedexpansion

:: -----------------------------------------------------------------
:: developer project directory => location of the fpc-qt project ...
:: -----------------------------------------------------------------
set prjdrv=D:
set prjdir=%prjdrv%\a\TinyRTL\TinyRTL\src

:: -----------------------------------------------------------------
:: fpcdir1/2 => location of fpc.exe compiler tools ...
:: -----------------------------------------------------------------
set fpcdir1=%prjdrv%\a\TinyRTL\TinyRTL\fpc\3.2.0\bin\i386-win32
set fpcdir2=%prjdrv%\a\TinyRTL\TinyRTL\fpc\3.2.2\bin\i386-win32

set asmdir=%prjdrv%\a\TinyRTL\TinyRTL\nasm
set fpcdir=%fpcdir2%

:: -----------------------------------------------------------------
:: parameters for fpc.exe ...
:: -----------------------------------------------------------------
set fpcdst=^
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

set fpcsys2=^
    -n -Mdelphi -Twin64 -dwindows -dwin64 -O2 -Os -Anasmwin64 -a

:: -----------------------------------------------------------------
:: location of nasm.exe (the netwide assembler)
:: -----------------------------------------------------------------
set asmx64=%asmdir%\nasm.exe -f win64 -w-orphan-labels

:: -----------------------------------------------------------------
:: fpc64.exe is a copy of fpc 3.2 fpc.exe (64-Bit)
:: -----------------------------------------------------------------
set fpcx64=ppcrossx64.exe %fpcdst% %fpcsys2%

set strip64=strip.exe

set punits=D:\a\TinyRTL\TinyRTL\src\units
set sunits=D:\a\TinyRTL\TinyRTL\src\sources

set srcsys=-FE%punits%\fpc-sys %sunits%\fpc-sys
set srcrtl=-FE%punits%\fpc-rtl %sunits%\fpc-rtl

set sysrtl=%punits%\fpc-rtl

:: -----------------------------------------------------------------
:: counter for the iteration
:: -----------------------------------------------------------------
set /a counter=0

cd %prjdir%\test
%fpcx64% -WC -dwinexe -XMPASCALMAIN test1.pas
strip test1.exe
goto allok

:buildError
echo =[ build error ]=
exit
goto eof
:allok
echo =[ done ]=
goto eof
:eof
