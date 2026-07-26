@echo off
setlocal enabledelayedexpansion

set PROJECT_DIR=%~dp0
set FONTS_DIR=%PROJECT_DIR%fonts
set GUIDE_DIR=%PROJECT_DIR%guide
set OUTPUT_DIR=%PROJECT_DIR%output
set LOG_FILE=%OUTPUT_DIR%\Outlaw-Overhaul.log

echo Outlaw Overhaul — PDF Generator
echo ================================
echo.

:: Step 1: Check Typst is installed
where typst >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo [ERROR] Typst not found on PATH.
    echo Install Typst 0.15 from https://typst.app/
    echo Or: winget install Typst.Typst
    pause
    exit /b 1
)
echo [OK] Typst found

:: Step 2: Check fonts
if not exist "%FONTS_DIR%\PlayfairDisplay[wght].ttf" (
    echo [ERROR] Playfair Display font not found in fonts/
    echo Download from Google Fonts or run the font acquisition script.
    pause
    exit /b 1
)
if not exist "%FONTS_DIR%\Inter[opsz,wght].ttf" (
    echo [ERROR] Inter font not found in fonts/
    echo Download from Google Fonts or run the font acquisition script.
    pause
    exit /b 1
)
echo [OK] Fonts found

:: Step 3: Check master.typ
if not exist "%GUIDE_DIR%\master.typ" (
    echo [ERROR] guide/master.typ not found
    pause
    exit /b 1
)
echo [OK] Guide files found

:: Step 4: Check logo
if not exist "%PROJECT_DIR%assets\logo.jpg" (
    echo [WARN] assets/logo.jpg not found - cover page will be missing the logo
)

:: Step 5: Create output directory
if not exist "%OUTPUT_DIR%" mkdir "%OUTPUT_DIR%"

:: Step 6: Compile
echo.
echo Compiling PDF...
echo This may take a moment.
echo.

cd /d "%PROJECT_DIR%"
typst compile --font-path "%FONTS_DIR%" "guide/master.typ" "%OUTPUT_DIR%\Outlaw-Overhaul.pdf" 2> "%LOG_FILE%"

if %ERRORLEVEL% neq 0 (
    echo.
    echo [ERROR] Compilation failed.
    echo Check the log: %LOG_FILE%
    type "%LOG_FILE%"
    pause
    exit /b 1
)

echo.
echo [OK] PDF generated: %OUTPUT_DIR%Outlaw-Overhaul.pdf
echo.
pause
