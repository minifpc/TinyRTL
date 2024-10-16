# TinyRTL - minimal RTL for FPC 3.2.
<p>
minimal 64-Bit FPC RTL implementation
</p>
to compile this repro you have to do the following steps:<br>
The path D:\a\TinyRTL\TinyRTL is the github.com workflow directory<br>
where the user can operate under different shell's.<br>
(download files from other servers, and install software)<br>
<br>
1. change the D: drive to T: (because D: could be a CD-Rom.Drive)<br>
   (see Control Panel)<br>
<br>
2. create the directories:<br>
   mkdir -p D:\a\TinyRTL\TinyRTL<br>
<br>
3. you have to download the MSYS2 (MinGW-64) suite to use the<br>
   tools provided with this packages.<br>
   (gcc, python, sed, ...)<br>
<br>
4. create the directory D:\a\TinyRTL\TinyRTL\fpc\3.2.2<br>
   and copy the FPC Compiler in this directory.<br>
   You would have then:<br>
   D:\a\TinyRTL\TinyRTL\fpc\3.2.2\bin\i386-win32<br>
<br>
5. you will need to copy the nasm.exe into the directory:<br>
   D:\a\TinyRTL\TinyRTL\nasm<br>
<br>
6. navigate to the directory, and execute the Batch file
   D:\a\TinyRTL\TinyRTL\build.bat
