@echo off
setlocal enabledelayedexpansion

echo === Mythic Crucible PDF Builder ===

echo.
echo [1/4] Checking prerequisites...
where typst >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Typst is not installed or not in PATH.
    echo Install Typst from https://github.com/typst/typst/releases
    echo Then run this script again.
    exit /b 1
)

where node >nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Node.js is not installed or not in PATH.
    echo Install Node.js from https://nodejs.org
    echo Then run this script again.
    exit /b 1
)

echo Typst and Node.js found.
echo.

echo [2/4] Cleaning previous build cache...
node scripts/clean.js
if %errorlevel% neq 0 (
    echo ERROR: Cache cleaning failed.
    exit /b 1
)

echo.
echo [3/4] Converting Markdown to Typst...
node scripts/convert.js
if %errorlevel% neq 0 (
    echo ERROR: Markdown conversion failed.
    exit /b 1
)

echo.
echo [4/4] Compiling PDF with Typst...
if not exist "output" mkdir "output"
typst compile build.typ output/mythic-crucible.pdf
if %errorlevel% neq 0 (
    echo ERROR: Typst compilation failed.
    echo Check error messages above for details.
    exit /b 1
)

echo.
echo === Done! PDF saved to output/mythic-crucible.pdf ===
