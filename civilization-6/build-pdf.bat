@echo off
setlocal
REM ============================================================
REM  The Grand Chronicle - PDF build script (Typst 0.15+)
REM  Compiles guide/main.typ into output/The-Grand-Chronicle.pdf
REM  Passes --input logo=yes when assets/logo.jpg exists, so the
REM  cover artwork is embedded automatically once provided.
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

set LOGO_ARGS=
if exist assets\logo.jpg set LOGO_ARGS=--input logo=yes

echo Compiling guide/main.typ -^> output/The-Grand-Chronicle.pdf ...
typst compile --root . %LOGO_ARGS% guide/main.typ output/The-Grand-Chronicle.pdf
if errorlevel 1 (
  echo [ERROR] Compilation failed. See messages above.
  exit /b 1
)

echo.
echo Done: output\The-Grand-Chronicle.pdf
exit /b 0
