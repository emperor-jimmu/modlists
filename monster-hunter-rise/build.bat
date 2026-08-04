@echo off
setlocal
cd /d "%~dp0"

rem ---------------------------------------------------------------------------
rem Primal Quarry — one-click PDF generator
rem Requires: Typst 0.15 / 0.15.1  (https://typst.app / winget install Typst.Typst)
rem Output:   output\primal-quarry.pdf
rem ---------------------------------------------------------------------------

set "TYPST=typst"
where typst >nul 2>nul
if errorlevel 1 (
  if exist "%~dp0tools\typst\typst.exe" (
    set "TYPST=%~dp0tools\typst\typst.exe"
  ) else (
    echo [ERROR] Typst not found on PATH.
    echo   Install it with:   winget install Typst.Typst
    echo   or download from:  https://github.com/typst/typst/releases
    echo   (target version: 0.15 or 0.15.1)
    exit /b 1
  )
)

for /f "tokens=2 delims= " %%v in ('"%TYPST%" --version') do set "VER=%%v"
echo Using Typst %VER%
if not "%VER:~0,4%"=="0.15" (
  echo [WARN] This project targets Typst 0.15/0.15.1; you are running %VER%.
)

if not exist output mkdir output

echo Compiling Primal Quarry guide...
"%TYPST%" compile --root . "template.typ" "output\primal-quarry.pdf"
if errorlevel 1 (
  echo [ERROR] Typst compilation failed.
  exit /b 1
)

echo Done: output\primal-quarry.pdf
endlocal
