@echo off
setlocal enabledelayedexpansion
echo ========================================
echo  Fidelitas Suprema — PDF Generator
echo ========================================
echo.

REM Check for Typst 0.15
where typst >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo [ERROR] Typst not found in PATH.
    echo Install Typst 0.15 from: https://github.com/typst/typst/releases/tag/v0.15.0
    echo.
    pause
    exit /b 1
)

REM Verify Typst version
typst --version >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo [ERROR] Typst version check failed. Ensure Typst 0.15 is installed.
    pause
    exit /b 1
)

echo [OK] Typst found
echo.

REM Check assets
if not exist "assets\logo.jpg" (
    echo [ERROR] Missing logo file: assets\logo.jpg
    echo Place your logo at assets\logo.jpg and try again.
    pause
    exit /b 1
)
echo [OK] Logo found

REM Check guide files
if not exist "guide\meta\about.typ" (
    echo [ERROR] Missing guide file: guide\meta\about.typ
    pause
    exit /b 1
)
echo [OK] Guide files found

REM Create output directory
if not exist "output\" mkdir "output"
echo [OK] Output directory ready
echo.

REM Compile PDF
echo Compiling PDF...
typst compile template.typ output\Fidelitas-Suprema.pdf

if %ERRORLEVEL% equ 0 (
    echo.
    echo ========================================
    echo  PDF generated successfully!
    echo  Output: output\Fidelitas-Suprema.pdf
    echo ========================================
) else (
    echo.
    echo [ERROR] PDF generation failed. Check the error output above.
    echo.
    pause
    exit /b %ERRORLEVEL%
)

echo.
pause
