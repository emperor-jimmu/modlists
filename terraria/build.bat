@echo off
REM build.bat - PDF generation entry point for Beyond the Surface

echo === Beyond the Surface PDF Build ===
echo.

REM Check if PowerShell is available
where pwsh >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo ERROR: PowerShell 7+ not found on PATH
    echo Install PowerShell: https://github.com/PowerShell/PowerShell
    exit /b 1
)

REM Run the PowerShell build script
pwsh -ExecutionPolicy Bypass -File build.ps1 %*

if %ERRORLEVEL% neq 0 (
    echo.
    echo ERROR: Build failed
    exit /b 1
)

echo.
echo Build complete!
