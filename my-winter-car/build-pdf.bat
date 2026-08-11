@echo off
setlocal
REM ============================================================
REM  Routa - PDF build script (Typst 0.15+)
REM  Compiles guide/main.typ into output/Routa.pdf
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

echo Compiling guide/main.typ -^> output/Routa.pdf ...
typst compile --root . guide/main.typ output/Routa.pdf
if errorlevel 1 (
  echo [ERROR] Compilation failed. See messages above.
  exit /b 1
)

echo.
echo Done: output\Routa.pdf
exit /b 0
