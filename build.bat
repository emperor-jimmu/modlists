@echo off
echo ========================================
echo   Building "No One is Coming" Guide
echo ========================================
echo.
typst compile --font-path assets\fonts guide\main.typ output\No-One-Is-Coming.pdf
if %ERRORLEVEL% EQU 0 (
    echo.
    echo SUCCESS: output\No-One-Is-Coming.pdf
) else (
    echo.
    echo BUILD FAILED! Check Typst errors above.
    exit /b 1
)
