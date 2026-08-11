@echo off
setlocal
REM ============================================================
REM  Whitecap - PDF build script (Typst 0.15+)
REM  Compiles guide/main.typ into output/Whitecap.pdf
REM ============================================================
cd /d "%~dp0"

where typst >nul 2>nul
if errorlevel 1 (
  echo [ERROR] Typst was not found on PATH.
  echo   Install it with:  winget install Typst.Typst
  echo   or download from https://github.com/typst/typst/releases
  exit /b 1
)

if not exist output mkdir output

echo Compiling guide/main.typ -^> output/Whitecap.pdf ...
typst compile --root . guide/main.typ output/Whitecap.pdf
if errorlevel 1 (
  echo [ERROR] Compilation failed. See messages above.
  exit /b 1
)

echo.
echo Done: output\Whitecap.pdf
exit /b 0
