:restart

@echo off

set watermark========= Heaps.io - Beatiful Compilation ========

echo %watermark%
echo:

:: Delete the Old Files
cd ./export
if exist hello.js (
    del hello.js
    del hello.js.map
)

echo Compiling...
haxe compile.hxml

cd ..

echo Starting the Application...
if exist index.html (
    start index.html
) else (
    echo There is no index.html file!
    echo Look at the Heaps documentation to get index.html.
)

echo:
echo %watermark%
echo:

set /p acao=Compile the Application again? (Y/N/P): 

if /i %acao% equ Y (
    cls
    goto restart
) else if /i %acao% equ N (
    exit
) else if /i %acao% equ P (
    pause
) else (
    cls
    
    echo:
    echo ==== Error: invalid Input! ====
    echo Y = Will restart the program
    echo N = The Program will close
    echo P = Will Pause the Program
    echo:

    pause
)