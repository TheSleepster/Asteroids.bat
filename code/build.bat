@echo off

Set CommonCompilerFlags=-GR- -EHa -Oi -W4 -Zi 
set CommonLinkerFlags="..\data\deps\Raylib\lib\raylib.lib" opengl32.lib kernel32.lib user32.lib shell32.lib gdi32.lib winmm.lib msvcrt.lib
set CommonIncludePaths="..\data\deps\Raylib\include"

REM cl %CommonCompilerFlags% \Quasar\code\*.cpp /I%CommonIncludePaths% /MD /link %CommonLinkerFlags% 

REM 64-bit building

pushd ..\build
cl %CommonCompilerFlags% \Quasar\code\*.cpp /I%CommonIncludePaths% /MD /link /MACHINE:X64 /OUT:"Quasar.exe" %CommonLinkerFlags%
popd

@echo ====================
@echo Compilation Finished
@echo ====================
