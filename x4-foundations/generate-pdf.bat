@echo off
setlocal enabledelayedexpansion

set AUTHOR=%~1
if "%AUTHOR%"=="" set AUTHOR=The Community

echo Stellar Dominion PDF Builder
echo ============================
echo.

:: Check prerequisites
where typst >nul 2>&1
if !ERRORLEVEL! neq 0 (
    echo ERROR: Typst not found. Install Typst 0.15 from https://typst.app/
    echo Or run: winget install Typst.Typst
    exit /b 1
)

:: Check required files exist
if not exist "typst\template.typ" (
    echo ERROR: typst\template.typ not found. Run from project root.
    exit /b 1
)
if not exist "typst\config.typ" (
    echo ERROR: typst\config.typ not found. Run from project root.
    exit /b 1
)

:: Ensure output directory exists
if not exist "output" mkdir output

:: Compile PDF
echo [1/1] Compiling PDF...
typst compile --root . --input author="%AUTHOR%" typst/template.typ output/Stellar-Dominion.pdf
if !ERRORLEVEL! neq 0 (
    echo ERROR: Typst compilation failed.
    exit /b 1
)

echo.
echo SUCCESS: PDF generated at output/Stellar-Dominion.pdf
exit /b 0
