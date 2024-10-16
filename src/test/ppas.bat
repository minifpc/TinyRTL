@echo off
SET THEFILE=D:\a\TinyRTL\TinyRTL\src\test\test1.exe
echo Linking %THEFILE%
D:\a\TinyRTL\TinyRTL\fpc\3.2.2\bin\i386-win32\ld.exe -b pei-x86-64      --entry=_mainCRTStartup    -o D:\a\TinyRTL\TinyRTL\src\test\test1.exe D:\a\TinyRTL\TinyRTL\src\test\link8152.res
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occurred while assembling %THEFILE%
goto end
:linkend
echo An error occurred while linking %THEFILE%
:end
