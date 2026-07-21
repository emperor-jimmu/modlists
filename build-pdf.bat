@echo off
title "Fields, Vines and Barrels - PDF Builder"

REM Refresh PATH from registry (picks up tools installed after this session started)
for /f "tokens=2*" %%a in ('reg query "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v PATH 2^>nul') do set "MACHINE_PATH=%%b"
for /f "tokens=2*" %%a in ('reg query "HKCU\Environment" /v PATH 2^>nul') do set "USER_PATH=%%b"
set "PATH=%MACHINE_PATH%;%USER_PATH%;%PATH%"

REM Suppress MiKTeX update check warnings during build
set MIKTEX_CHECK_UPDATE=0

echo ============================================
echo   Fields, Vines and Barrels - PDF Builder
echo ============================================
echo.

REM Check prerequisites
pandoc --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Pandoc not found. Install from https://pandoc.org
    goto :end
)

REM Ensure output directory exists
if not exist "output\" New-Item -ItemType Directory -Force -Path "output" >nul

REM Detect XeLaTeX
set "HAS_XELATEX=0"
xelatex --version >nul 2>&1
if not errorlevel 1 set "HAS_XELATEX=1"
if %HAS_XELATEX% equ 1 (
    set "ENGINE=--pdf-engine=xelatex --template=pandoc-template.tex"
    set "LABEL=XeLaTeX"
) else (
    set "ENGINE=--to=html5 --standalone -o output/fields-vines-and-barrels.html"
    set "LABEL=HTML fallback (XeLaTeX not found)"
)

echo [OK] Building PDF with %LABEL%...
echo.

pandoc ^
    guide/mod-manager.md ^
    guide/reshade.md ^
    guide/wave-0/story.md ^
    guide/wave-0/getting-started.md ^
    guide/wave-0/01-map.md ^
    guide/wave-0/02-visuals-reshade.md ^
    guide/wave-0/03-ui-qol.md ^
    guide/wave-0/04-vehicles.md ^
    guide/wave-0/05-implements.md ^
    guide/wave-0/06-placeables.md ^
    guide/wave-0/07-gameplay.md ^
    guide/wave-1/story.md ^
    guide/wave-1/strategy.md ^
    guide/wave-1/01-map.md ^
    guide/wave-1/02-ui-qol.md ^
    guide/wave-1/03-vehicles.md ^
    guide/wave-1/04-implements.md ^
    guide/wave-1/05-placeables.md ^
    guide/wave-1/06-production-economy.md ^
    guide/wave-1/07-gameplay.md ^
    guide/wave-2/story.md ^
    guide/wave-2/strategy.md ^
    guide/wave-2/01-map.md ^
    guide/wave-2/02-ui-qol.md ^
    guide/wave-2/03-vehicles.md ^
    guide/wave-2/04-implements.md ^
    guide/wave-2/05-placeables.md ^
    guide/wave-2/06-production-economy.md ^
    guide/wave-2/07-gameplay.md ^
    --from=markdown+pipe_tables+grid_tables ^
    --toc ^
    --toc-depth=1 ^
    --top-level-division=chapter ^
    -o output/fields-vines-and-barrels.pdf ^
    %ENGINE%

set PANDOC_EXIT=%ERRORLEVEL%

if %PANDOC_EXIT% neq 0 (
    echo.
    echo [ERROR] Build failed ^(exit code %PANDOC_EXIT%^)
) else if %HAS_XELATEX% equ 1 (
    echo.
    echo [OK] PDF created: output\fields-vines-and-barrels.pdf
) else (
    echo.
    echo [OK] HTML fallback created: output\fields-vines-and-barrels.html
    echo [NOTE] Install XeLaTeX for full PDF output: https://tug.org/texlive/
)

:end
REM Only pause if running interactively (no /Q flag)
if not "%1"=="/Q" pause
exit /b 0
