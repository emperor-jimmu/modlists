@echo off
REM ============================================================
REM  The Long Ascent — PDF Build Script (Windows)
REM  Requires: Typst 0.13+ on PATH, Python 3 for font download
REM ============================================================

echo.
echo === The Long Ascent ===
echo Building PDF from Typst sources...
echo.

REM Check Typst is installed
where typst >nul 2>&1
if %ERRORLEVEL% NEQ 0 (
    echo [FAIL] Typst is not installed or not on PATH.
    echo Install Typst 0.13+ from: https://github.com/typst/typst/releases
    exit /b 1
)

REM Ensure output directory exists
if not exist "output" mkdir output

REM Check if fonts are present
if not exist "assets\fonts\Orbitron[wght].ttf" (
    echo [!] Fonts not found. Downloading...
    python scripts\download_fonts.py || python3 scripts\download_fonts.py
    if %ERRORLEVEL% NEQ 0 (
        echo [FAIL] Font download failed. Run 'python scripts\download_fonts.py' manually.
        exit /b 1
    )
    echo.
)

REM Compile
echo [1/1] Compiling PDF with Typst...
typst compile --font-path assets/fonts template/main.typ output/the-long-ascent.pdf

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo [FAIL] Typst compilation failed. See errors above.
    exit /b 1
)

echo.
echo === Build complete ===
echo PDF: output\the-long-ascent.pdf
echo.
