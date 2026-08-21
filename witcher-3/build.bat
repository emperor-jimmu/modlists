@echo off
title Only Monsters Remain - Build PDF

echo ====================================
echo  Only Monsters Remain
echo  Build: PDF
echo ====================================
echo.

:: Check for Typst
where typst >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo ERROR: Typst is not installed or not in PATH.
    echo Install Typst from https://github.com/typst/typst/releases
    pause
    exit /b 1
)

:: Build PDF
echo Building PDF...
call npm run pdf
if %ERRORLEVEL% neq 0 (
    echo ERROR: PDF build failed.
    pause
    exit /b 1
)
echo.

echo ====================================
echo  Build complete!
echo  PDF:  output\Only-Monsters-Remain.pdf
echo ====================================
echo.
pause
