@echo off
REM ============================================
REM Assetto Maximus — PDF Generator
REM Generates the full guide PDF via Typst
REM ============================================

setlocal enabledelayedexpansion

set SRC_DIR=%~dp0
set ROOT_DIR=%SRC_DIR:~0,-1%
set OUTPUT_DIR=%ROOT_DIR%\output
set OUTPUT_FILE=%OUTPUT_DIR%\Assetto-Maximus.pdf

echo ============================================
echo  Assetto Maximus — PDF Generator
echo ============================================
echo.

REM Ensure output directory exists
if not exist "%OUTPUT_DIR%" (
    mkdir "%OUTPUT_DIR%"
    echo [Created] output directory
)

REM Check Typst availability
where typst >nul 2>nul
if %ERRORLEVEL% NEQ 0 (
    echo [ERROR] Typst not found. Please install Typst 0.15+:
    echo         winget install Typst.Typst
    echo.
    pause
    exit /b 1
)

REM Compile PDF
echo [Compiling] template\main.typ ^> %OUTPUT_FILE%
typst compile "%ROOT_DIR%\template\main.typ" "%OUTPUT_FILE%" --root "%ROOT_DIR%"

if %ERRORLEVEL% EQU 0 (
    echo.
    echo [SUCCESS] PDF generated: %OUTPUT_FILE%
    echo.
    dir /b "%OUTPUT_FILE%"
) else (
    echo.
    echo [ERROR] PDF generation failed. Check errors above.
    pause
    exit /b 1
)

endlocal
