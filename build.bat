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
:: For compile this project you must have a minimum of:
:: - a copy of FPC 3.2.0 64-Bit Microsoft Windows 10/11 64-Bit
:: - a copy of NASM for Windows 10/11 (netwide assembler)
:: - a copy of MSYS2 64-Bit with installed gcc.exe MinGW-64 Bit
:: - a copy of msys2 tools like awk, sed, ...
:: - a copy of python 3.2+
::
:: You have to start the build.ps1 script, firstly. PowerShell will
:: call this script with all the setting parameters.
:: So, dont touch a running system - I give no warantees of damages
:: or other fees.
:: !!! YOU USE IT AT YOUR OWN RISK !!!
:: -----------------------------------------------------------------
@echo off
setlocal enabledelayedexpansion

:: -----------------------------------------------------------------
:: developer project directory => location of the fpc-qt project ...
:: -----------------------------------------------------------------
set prjdrv=D:
set prjdir=%prjdrv%\a\TinyRTL\TinyRTL\src

set prjpar=/d/a/TinyRTL/TinyRTL/src
set BASHCO=%prjdrv%\msys64\usr\bin\bash.exe
set SCRIPT_PATH=%prjpar%

:: -----------------------------------------------------------------
:: fpcdir1/2 => location of fpc.exe compiler tools ...
:: -----------------------------------------------------------------
set fpcdir1=%prjdrv%\a\TinyRTL\TinyRTL\fpc\3.2.0\bin\i386-win32
set fpcdir2=%prjdrv%\a\TinyRTL\TinyRTL\fpc\3.2.2\bin\i386-win32

set gccdir1=%prjdrv%\msys64\mingw32\bin
set gccdir2=%prjdrv%\msys64\mingw64\bin

set asmdir=%prjdrv%\a\TinyRTL\TinyRTL\nasm

set fpcdir=%fpcdir2%
set gccdir=%gccdir2%
set gdbdir=%gccdir2%

:: -----------------------------------------------------------------
:: parameters for fpc.exe ...
:: -----------------------------------------------------------------
set fpcdst=^
    -Fi%prjdir%\sources\fpc-sys ^
    -Fi%prjdir%\sources\fpc-win ^
    -Fi%prjdir%\sources\fpc-rtl ^
    -Fi%prjdir%\sources\fpc-gnu ^
    -Fi%prjdir%\sources\fpc-qt

set fpcsys1=^
    -Fu%prjdir%\sources\fpc-sys ^
    -Fu%prjdir%\sources\fpc-qt  ^
    ^
    -Fu%prjdir%\units\fpc-rtl   ^
    -Fu%prjdir%\units\fpc-sys   ^
    -Fu%prjdir%\units\fpc-win   ^
    -Fu%prjdir%\units\fpc-qt    ^
    -Fu%prjdir%\test

set fpcsys2=^
    -n -Mdelphi -Twin64 -dwindows -dwin64 -O3 -Os -Anasmwin64 -a

set fpcsys3=

:: -----------------------------------------------------------------
:: location of nasm.exe (the netwide assembler)
:: -----------------------------------------------------------------
set asmx32=%asmdir%\nasm.exe -f win32 -w-orphan-labels
set asmx64=%asmdir%\nasm.exe -f win64 -w-orphan-labels

:: -----------------------------------------------------------------
:: fpc32.exe is a copy of fpc 3.2 fpc.exe (32-Bit)
:: fpc64.exe is a copy of fpc 3.2 fpc.exe (64-Bit)
::
:: the files was manualy copied from a 32-Bit, and 64-Bit Relase
:: -----------------------------------------------------------------
set fpcx32=%fpcdir%\fpc.exe        %fpcdst% %fpcsys2% %fpcsys1%
set fpcx64=ppcrossx64.exe %fpcdst% %fpcsys2% %fpcsys1%
set fplx64=%fpcdir%\ppcrossx64.exe %fpcdst% %fpcsys1%

:: -----------------------------------------------------------------
:: ld32.exe is a copy of fpc 3.2 tool ld.exe (32-Bit)
:: ld64.exe is a copy of fpc 3.2 tool ld.exe (64-Bit)
::
:: the files was manualy copied from a 32-Bit, and 64-Bit Relase
:: -----------------------------------------------------------------
set ld32=%fpcdir%\ld32.exe
set ld64=ld.exe -b pei-x86-64 --subsystem windows

:: -----------------------------------------------------------------
:: as32.exe is a copy of fpc 3.2 tool as.exe (32-Bit)
:: as64.exe is a copy of fpc 3.2 tool as.exe (64-Bit)
::
:: the files was manualy copied from a 32-Bit, and 64-Bit Relase
:: -----------------------------------------------------------------
set as32=%fpcdir%\as32.exe
set as64=%fpcdir%\as64.exe

:: -----------------------------------------------------------------
:: gcc32.exe is a copy of gcc tool gcc.exe (32-Bit)
:: gcc64.exe is a copy of gcc tool gcc.exe (64-Bit)
::
:: the files was manualy copied from a 32-Bit, and 64-Bit Relase
:: -----------------------------------------------------------------
set gcc32=gcc.exe
set gcc64=gcc.exe

set gdb32=gdb.exe
set gdb64=gdb.exe

:: -----------------------------------------------------------------
:: strip32.exe is a copy of fpc 3.2 tool strip.exe (32-Bit)
:: strip64.exe is a copy of fpc 3.2 tool strip.exe (64-Bit)
::
:: the files was manualy copied from a 32-Bit, and 64-Bit Relase
:: -----------------------------------------------------------------
set strip32=strip.exe
set strip64=strip.exe

set dlltool=D:\a\TinyRTL\TinyRTL\fpc\3.2.2\bin\i386-win32\dlltool.exe

set punits=D:\a\TinyRTL\TinyRTL\src\units
set sunits=D:\a\TinyRTL\TinyRTL\src\sources

set srcsys=-FE%punits%\fpc-sys %sunits%\fpc-sys
set srcrtl=-FE%punits%\fpc-rtl %sunits%\fpc-rtl

set sysrtl=%punits%\fpc-rtl

:: -----------------------------------------------------------------
:: counter for the iteration
:: -----------------------------------------------------------------
set /a counter=0

cd D:\a\TinyRTL\TinyRTL\src
::goto cplusplus

echo =[ clean up directories    ]=    1 %%  done
:: -----------------------------------------------------------------
:: delete old crap ...
:: -----------------------------------------------------------------
rm -rf %prjdir%\units
rm -rf %prjdir%\test\*.res
rm -rf %prjdir%\test\fpc_rtl.dll
rm -rf %prjdir%\test\test1.exe

for %%A in (a o s ppu) do (
    echo delete: %prjdir%\test\*.%%A
    rm -rf %prjdir%\test\*.%%A
)
echo.
echo delete: %prjdir%\units
rm -rf %prjdir%\units
echo.

echo create: %prjdir%\units
echo.
mkdir %prjdir%\units >nul: 2>nul:
if errorlevel 1 (goto buildError)

::mkdir %prjdir%\test
::cp %prjdir%\sources\fpc-rtl\fpc_rtl.pas %prjdir%\test\fpc_rtl.pas

cd %prjdir%\units
for %%A in (fpc-qt fpc-rtl fpc-sys fpc-win) do (
    echo create: %prjdir%\units\%%A
    mkdir .\%%A
    if errorlevel 1 (goto buildError)
)
echo.
echo =[ build settings...       ]=    2 %%  done
echo.
echo Project   : %prjdir%
echo FPC 3.2.0 : %fpcdir%\fpc64.exe
echo NASM      : %asmx64%
echo.

cd %prjdir%

echo =[ begin compile stage     ]=    4 %%  done
echo compile: D:\a\TinyRTL\TinyRTL\src\sources\fpc-sys\system.pas
%fpcx64% -dwinexe -Cn -Us D:\a\TinyRTL\TinyRTL\src\sources\fpc-sys\system.pas
if errorlevel 1 (goto buildError)

echo compile: D:\a\TinyRTL\TinyRTL\src\sources\fpc-sys\fpintres.pp
%fpcx64% -dwinexe -Cn D:\a\TinyRTL\TinyRTL\src\sources\fpc-sys\fpintres.pp
if errorlevel 1 (goto buildError)
::
for %%A in (fpcinit sysinit) do (
    echo compile: D:\a\TinyRTL\TinyRTL\src\sources\fpc-sys\%%A.pas
    %fpcx64% -dwinexe -Cn D:\a\TinyRTL\TinyRTL\src\sources\fpc-sys\%%A.pas
    if errorlevel 1 (goto buildError)
)

cd %prjdir%\test
%fpcx64% -dwinexe -XMPASCALMAIN test1.pas
strip test1.exe
exit




echo compile: %srcrtl%\rtl_utils.pas
%fpcx64% -dwindll -CX -fPIC -st -Xe -XD %srcrtl%\rtl_utils.pas
if errorlevel 1 (goto buildError)
echo.
echo =[ create library files... ]=    5 %%  done
echo.

for %%A in (Qt_String Qt_Dialogs) do (
    echo compile: %prjdir%\sources\fpc-qt\%%A.pas
    %fpcx64% -dwindll -CX -fPIC -st -Xe -XD -FE%prjdir%\units\fpc-qt %prjdir%\sources\fpc-qt\%%A.pas
)
:: -----------------------------------------------------------------
:: remove not wanted rtti information's ...
:: -----------------------------------------------------------------
for %%A in (Qt_String Qt_Dialogs) do (
    echo sedding: %prjdir%\units\fpc-qt\%%A.s
    sed '/\; Begin asmlist al_rtti/,/\; End asmlist al_rtti/d' %prjdir%\units\fpc-qt\%%A.s > %prjdir%\units\fpc-qt\%%A.tmp
    if errorlevel 1 (goto buildError)
    move /Y "%prjdir%\units\fpc-qt\%%A.tmp" %prjdir%\units\fpc-qt\%%A.s >nul: 2>nul:
    if errorlevel 1 (goto buildError)

    sed '/\; Begin asmlist al_dwarf_frame.*/,/\; End asmlist al_dwarf_frame.*/d' %prjdir%\units\fpc-qt\%%A.s > %prjdir%\units\fpc-qt\%%A.tmp
    if errorlevel 1 (goto buildError)
    move /Y "%prjdir%\units\fpc-qt\%%A.tmp" %prjdir%\units\fpc-qt\%%A.s >nul: 2>nul:
    if errorlevel 1 (goto buildError)

    sed '/\.\.\@.*strlab\:/,+3d' %prjdir%\units\fpc-qt\%%A.s > %prjdir%\units\fpc-qt\%%A.tmp
    if errorlevel 1 (goto buildError)
    move /Y "%prjdir%\units\fpc-qt\%%A.tmp" %prjdir%\units\fpc-qt\%%A.s >nul: 2>nul:
    if errorlevel 1 (goto buildError)

    sed '/\; Begin asmlist al_indirectglobals.*/,/\; End asmlist al_indirectglobals.*/d' %prjdir%\units\fpc-qt\%%A.s > %prjdir%\units\fpc-qt\%%A.tmp
    if errorlevel 1 (goto buildError)
    move /Y "%prjdir%\units\fpc-qt\%%A.tmp" %prjdir%\units\fpc-qt\%%A.s >nul: 2>nul:
    if errorlevel 1 (goto buildError)

    sed '/\; Begin asmlist al_globals.*/,/\; End asmlist al_globals.*/d' %prjdir%\units\fpc-qt\%%A.s > %prjdir%\units\fpc-qt\%%A.tmp
    if errorlevel 1 (goto buildError)
    move /Y "%prjdir%\units\fpc-qt\%%A.tmp" %prjdir%\units\fpc-qt\%%A.s >nul: 2>nul:
    if errorlevel 1 (goto buildError)

    sed '/call\tfpc\_reraise/,/\t\tcall\tFPC\_DONEEXCEPTION/d' %prjdir%\units\fpc-qt\%%A.s > %prjdir%\units\fpc-qt\%%A.tmp
    if errorlevel 1 (goto buildError)
    move /Y "%prjdir%\units\fpc-qt\%%A.tmp" %prjdir%\units\fpc-qt\%%A.s >nul: 2>nul:
    if errorlevel 1 (goto buildError)
)
echo.

echo delete: %prjdir%\units\fpc-qt\system.s/.ppu
@rm %prjdir%\units\fpc-qt\system.*
echo create: %prjdir%\units\fpc-qt\system.s
type nul  >  %prjdir%\units\fpc-qt\system.s
echo.

echo =[ assemble files...       ]=    6 %%  done
echo.
copy %prjdir%\sources\fpc-qt\symbols.asm %prjdir%\units\fpc-qt\symbols.s
copy %prjdir%\sources\fpc-rtl\vmt.asm %prjdir%\units\fpc-rtl\vmt.s

for %%A in (Qt_String Qt_Dialogs symbols) do (
    echo assemble: %prjdir%\units\fpc-qt\%%A.s
    %asmx64% -o%prjdir%\units\fpc-qt\%%A.o %prjdir%\units\fpc-qt\%%A.s
    if errorlevel 1 (goto buildError)
)
for %%A in (vmt) do (
    echo assemble: %prjdir%\units\fpc-rtl\%%A.s
    %asmx64% -o%prjdir%\units\fpc-rtl\%%A.o %prjdir%\units\fpc-rtl\%%A.s
    if errorlevel 1 (goto buildError)
)

echo compile: %prjdir%\test\fpc_rtl.pas
%fpcx64% -dwindll -CX -fPIC -st -Xe -XD -FE%prjdir%\units\fpc-rtl %prjdir%\test\fpc_rtl.pas
if errorlevel 1 (goto buildError)

echo.
echo =[ assembling asm files... ]=   10 %%  done
echo.

:: todo => sed
echo assemble: %punits%\fpc-rtl\fpc_rtl.s
copy %punits%\fpc-rtl\fpc_rtl.s   %punits%\fpc-sys\fpc_rtl.s   > nul
::
echo assemble: %punits%\fpc-utils\fpc_rtl.s
copy %punits%\fpc-rtl\rtl_utils.s %punits%\fpc-sys\rtl_utils.s > nul

echo.
echo =[ seeding asm files...    ]=   12 %%  done
echo.
goto skipseed


echo section .data                       >> %prjdir%\units\fpc-rtl\fpc_rtl.s
echo global U_$P$FPC_RTL_$$_LIBRARYHDL   >> %prjdir%\units\fpc-rtl\fpc_rtl.s
echo U_$P$FPC_RTL_$$_LIBRARYHDL:         >> %prjdir%\units\fpc-rtl\fpc_rtl.s
echo dq 0                                >> %prjdir%\units\fpc-rtl\fpc_rtl.s
echo.                                    >> %prjdir%\units\fpc-rtl\fpc_rtl.s
echo section .data                       >> %prjdir%\units\fpc-rtl\fpc_rtl.s
echo global U_$P$TEST1_$$_MEMORYMANAGER  >> %prjdir%\units\fpc-rtl\fpc_rtl.s
echo U_$P$TEST1_$$_MEMORYMANAGER:        >> %prjdir%\units\fpc-rtl\fpc_rtl.s
echo dq 0                                >> %prjdir%\units\fpc-rtl\fpc_rtl.s
echo.                                    >> %prjdir%\units\fpc-rtl\fpc_rtl.s

:skipseed

:: -----------------------------------------------------------------
:: assemble all new files for this build ...
:: -----------------------------------------------------------------
for %%A in (system rtl_utils fpc_rtl) do (
    echo assemble: %punits%\fpc-rtl\%%A.s
    %asmx64% -o %prjdir%\units\fpc-rtl\%%A.o %punits%\fpc-rtl\%%A.s
    if errorlevel 1 (goto buildError)
)
echo.

:: -----------------------------------------------------------------
:: rename big symbols to small names, to save storage space ...
:: you need msys64 "printf" !!!
:: -----------------------------------------------------------------
echo =[ re-mapping symbols...   ]=

:cplusplus

cd %prjdir%

:bigskip
::g++ -m64 -O2 -fPIC -shared -Wno-write-strings -o ^
::%prjdir%\test\app_rtl.dll    ^
::%prjdir%\unit\app-rtl\start.o ^
::%prjdir%\unit\app-rtl\Observer.o ^
::%prjdir%\unit\app-rtl\DisplayDialogs.o -lkernel32 -luser32

::if errorlevel 1 (goto buildError)

:: -----------------------------------------------------------------
:: finally, build/link the .dll file ...
:: -----------------------------------------------------------------
echo =[ Linking fpc_rtl.dll ... ]=   30 %%  done

:: -----------------------------------------------------------------
:: create 64-Bit import definition .def + library .a file ...
:: -----------------------------------------------------------------
::dlltool.exe --dllname ^
::%prjdir%\test\app_rtl.dll --def ^
::%prjdir%\sources\app-rtl\app_rtl.def --output-lib ^
::%prjdir%\units\app-rtl\libimpapp_rtl.a  
::if errorlevel 1 (goto buildError)

::gcc -fPIC -nostdlib -nostartfiles --shared -Wl,--entry=_DLLMainCRTStartup -o ^
::%prjdir%\test\fpc_rtl.dll            ^
::%prjdir%\units\fpc-rtl\system.o      ^
::%prjdir%\units\fpc-rtl\fpc_rtl.o     ^
::%prjdir%\units\fpc-sys\sysinit.o     ^
::%prjdir%\units\fpc-qt\Qt_String.o    ^
::%prjdir%\units\fpc-qt\symbols.o      ^
::-L %prjdir%\units\fpc-rtl ^
::-l impsystem
::if errorlevel 1 (goto buildError)

:: -----------------------------------------------------------------
:: discards all debug symbols - todo !
:: -----------------------------------------------------------------
::strip %prjdir%\test\fpc_rtl.dll
::if errorlevel 1 (goto buildError)

::strip %prjdir%\test\app_rtl.dll
::if errorlevel 1 (goto buildError)

:: -----------------------------------------------------------------
:: create the .exe file ...
:: -----------------------------------------------------------------
echo =[ build exe file...       ]=   40 %%  done
::
%fpcx64% -dwinexe -Cn -FE%prjdir%\test %prjdir%\test\test1.pas


exit

::
%fpcx64% -dwinexe -Us %srcsys%\system.pas
if errorlevel 1 (goto buildError)

%fpcx64% -dwinexe     %srcsys%\fpintres.pp
if errorlevel 1 (goto buildError)
::
for %%A in (fpcinit sysinit) do (
    %fpcx64% -dwinexe %srcsys%\%%A.pas
    if errorlevel 1 (goto buildError)
)

for %%A in (RTL_Utils) do (
    echo compile: %srcrtl%\%%A.pas
    %fpcx64% -al -Anasm -Cn -dwinexe -CX -fPIC -st -Xe -XD -FE%prjdir%\units\fpc-rtl %prjdir%\sources\fpc-rtl\%%A.pas
    if errorlevel 1 (goto buildError)
)

%fpcx64% -al -Anasm -Cn -dwinexe -FE%prjdir%\test %prjdir%\test\test1.pas
set temp=%prjdir%\test\test1
::
echo assemble: test1.s
%asmx64% -o %temp%.o %temp%.s
if errorlevel 1 (goto buildError)

for %%A in (RTL_Utils) do (
    echo assemble: %srcrtl%\%%A.s
    %asmx64% -o %prjdir%\units\fpc-rtl\%%A.o %prjdir%\units\fpc-rtl\%%A.s
    if errorlevel 1 (goto buildError)
)

for %%A in (fpcinit sysinit) do (
    %fpcx64% -dwinexe %srcsys%\%%A.pas
    if errorlevel 1 (goto buildError)
)

%fpcx64% -dwinexe %srcrtl%\rtl_utils.pas
if errorlevel 1 (goto buildError)

:: -----------------------------------------------------------------
:: remove not wanted rtti information's ...
:: -----------------------------------------------------------------
::del %prjdir%\test\system.s      /F /S /Q >nul: 2>nul:
::del %prjdir%\test\system.ppu    /F /S /Q >nul: 2>nul:
::del %prjdir%\test\sysinit.ppu   /F /S /Q >nul: 2>nul:
::del %prjdir%\test\fpintres.ppu  /F /S /Q >nul: 2>nul:
::del %prjdir%\test\test1.exe     /F /S /Q >nul: 2>nul:

::type nul > %prjdir%\test\system.s

for %%A in (system rtl_utils fpc_rtl) do (
    echo assemble: %sysrtl%\%%A.s
    %asmx64% -o %sysrtl%\%%A.o %sysrtl%\%%A.s
    if errorlevel 1 (goto buildError)
)
::sed -i '/\tGLOBAL\s*PASCALMAIN/,/\t\tret/d'  %prjdir%\test\test1.s

%asmx64% -o %prjdir%\units\fpc-sys\sysinit.o %prjdir%\units\fpc-sys\sysinit.s

echo =[ Assembling exe files... ]=   60 %%  done
for %%A in (system test1) do (
    echo %%A
    %asmx64% -o %prjdir%\test\%%A.o %prjdir%\test\%%A.s
    if errorlevel 1 (goto buildError)
)
::echo mupso
::%asmx64% -o %prjdir%\units\fpc-rtl\symbols.o %prjdir%\sources\fpc-qt\symbols.asm

::echo -[ create FPC_RTL.a ...    ]-   65 %%  done
::dlltool -d %prjdir%\test\fpc_rtl.def -l %prjdir%\test\libimpfpc_rtl.a

echo =[ linking test1.exe...    ]=   70 %%  done

::%asmx64% -o %prjdir%\units\fpc-sys\sysinit.o %prjdir%\units\fpc-sys\sysinit.s


::%gcc64% -nostartfiles -nostdlib -Wl,--entry=PASCALMAIN -o ^
::%prjdir%\test\test1.exe  ^
::%prjdir%\test\test1.o    ^
::%prjdir%\units\fpc-sys\sysinit.o ^
::%prjdir%\units\fpc-rtl\system.o  ^
::%prjdir%\units\fpc-rtl\vmt.o     ^
::-L %prjdir%\test ^
::-l impsystem ^
::-l impsysinit ^
::-l imptest1
::if errorlevel 1 (goto buildError)

:: -----------------------------------------------------------------
:: for debugger luurkers ...
:: -----------------------------------------------------------------
::set PYTHONHOME=
::%gdb64% %prjdir%\test\test1.exe

:: -----------------------------------------------------------------
:: discards all debug symbols - todo !
:: -----------------------------------------------------------------
strip %prjdir%\test\test1.exe >nul: 2>nul:
if errorlevel 1 (goto buildError)

:: -----------------------------------------------------------------
:: delete all build files, except the dll and exe file ...
:: -----------------------------------------------------------------
::for %%A in (a o s ppu) do (
::    del %prjdir%\test\*.%%A   /F /S /Q >nul: 2>nul:
::)
:: -----------------------------------------------------------------
:: finally shrink the EXE file again with upx.exe  ...
:: -----------------------------------------------------------------
::upx32.exe %prjdir%\test\test1.exe   >nul 2>nul
::upx32.exe %prjdir%\test\app_rtl.dll >nul 2>nul
:: -----------------------------------------------------------------
:: bundle a zip file for upload on my github.com account ...
:: -----------------------------------------------------------------
echo =[ build bundle zip file...]=   80 %%  done

::del %prjdir%\test\packed.zip  /F /S /Q >nul: 2>nul:
::cd  %prjdir%\test\

::zip -9 -v packed.zip test1.exe *.dll >nul: 2>nul:
::if errorlevel 1 ( goto linkError )
::cd  %prjdir%

:: -----------------------------------------------------------------
:: after compile, delete old crap ...
:: -----------------------------------------------------------------
echo =[ clean up dev files...   ]=   90 %%  done
::rmdir %prjdir%\units /S /Q >nul 2>nul
::if errorlevel 1 (goto buildError)

::echo =[ start test1.exe...      ]=  100 %%  done
::%prjdir%\test\test1.exe
::echo %errorlevel%
::if errorlevel 4 ( goto linkError )
goto allok

:buildError
echo =[ build error ]=
exit
:: -----------------------------------------------------------------
:: delete old crap ...
:: -----------------------------------------------------------------
del %prjdir%\test\fpc_rtl.dll  /F /S /Q >nul: 2>nul:
del %prjdir%\test\fpc_rtl.exe  /F /S /Q >nul: 2>nul:

del %prjdir%\test\*.ppu /F /S /Q >nul: 2>nul:
del %prjdir%\test\*.a   /F /S /Q >nul: 2>nul:
del %prjdir%\test\*.o   /F /S /Q >nul: 2>nul:
del %prjdir%\test\*.s   /F /S /Q >nul: 2>nul:

goto eof
:linkError
echo =[ link error ]=
goto eof
:allok
echo =[ done ]=
goto eof
:eof
