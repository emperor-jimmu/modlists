@echo off
setlocal enabledelayedexpansion

echo ============================================
echo   The Final Cycle - PDF Generator
echo ============================================
echo.

REM Check Typst installation
where typst >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] Typst is not installed or not in PATH.
    echo.
    echo Download Typst: https://github.com/typst/typst/releases
    echo Add it to your PATH and try again.
    pause
    exit /b 1
)

REM Get and display Typst version
for /f "tokens=2" %%v in ('typst --version') do set TYPST_VER=%%v
echo Typst version: %TYPST_VER%

REM Create output directory if missing
if not exist "output" (
    echo Creating output directory...
    mkdir output
)

REM Verify required files
if not exist "assets\logo.png" (
    echo [WARNING] assets\logo.png not found. Cover page will lack a logo image.
)

if not exist "guide\main.typ" (
    echo [ERROR] guide\main.typ not found. Are you in the project root?
    pause
    exit /b 1
)

echo.
echo Compiling PDF...
echo.

typst compile guide\main.typ output\The-Final-Cycle.pdf

if %errorlevel% equ 0 (
    echo.
    echo ============================================
    echo   [SUCCESS] PDF generated successfully!
    echo   output\The-Final-Cycle.pdf
    echo ============================================
) else (
    echo.
    echo ============================================
    echo   [ERROR] Compilation failed.
    echo   Review the Typst errors above.
    echo ============================================
    pause
    exit /b 1
)

endlocal
