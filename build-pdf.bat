@echo off
title Fields, Vines & Barrels - PDF Builder

echo ============================================
echo  Fields, Vines ^& Barrels - PDF Builder
echo ============================================
echo.

REM Check prerequisites
where pandoc >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Pandoc not found. Install from https://pandoc.org
    goto :end
)

REM Ensure output directory exists
if not exist "output\" New-Item -ItemType Directory -Force -Path "output" >nul

REM Detect XeLaTeX by looking for it directly
for /f "delims=" %%i in ('where xelatex 2^>nul') do set XELATEX_PATH=%%i
if defined XELATEX_PATH (
    set "ENGINE=--pdf-engine=xelatex --template=pandoc-template.tex"
    set "LABEL=XeLaTeX"
) else (
    set "ENGINE=--pdf-engine=pdfhtml"
    set "LABEL=HTML fallback (XeLaTeX not found)"
)

echo [OK] Building PDF with %LABEL%...
echo.

REM Build using a temp file list to avoid batch variable size limits
(
    echo guide/mod-manager.md
    echo guide/reshade.md
    echo guide/wave-0/story.md
    echo guide/wave-0/getting-started.md
    echo guide/wave-0/01-map.md
    echo guide/wave-0/02-visuals-reshade.md
    echo guide/wave-0/03-ui-qol.md
    echo guide/wave-0/04-vehicles.md
    echo guide/wave-0/05-implements.md
    echo guide/wave-0/06-placeables.md
    echo guide/wave-0/07-gameplay.md
    echo guide/wave-1/story.md
    echo guide/wave-1/strategy.md
    echo guide/wave-1/01-map.md
    echo guide/wave-1/02-ui-qol.md
    echo guide/wave-1/03-vehicles.md
    echo guide/wave-1/04-implements.md
    echo guide/wave-1/05-placeables.md
    echo guide/wave-1/06-production-economy.md
    echo guide/wave-1/07-gameplay.md
    echo guide/wave-2/story.md
    echo guide/wave-2/strategy.md
    echo guide/wave-2/01-map.md
    echo guide/wave-2/02-ui-qol.md
    echo guide/wave-2/03-vehicles.md
    echo guide/wave-2/04-implements.md
    echo guide/wave-2/05-placeables.md
    echo guide/wave-2/06-production-economy.md
    echo guide/wave-2/07-gameplay.md
    echo conflicts.md
    echo mod-ideas.md
) > build-files.txt

pandoc @build-files.txt ^
    --from=markdown+pipe_tables+grid_tables ^
    --toc ^
    --toc-depth=3 ^
    %ENGINE% ^
    -o output/fields-vines-and-barrels.pdf

del build-files.txt 2>nul

if errorlevel 1 (
    echo.
    echo [ERROR] PDF build failed
) else (
    echo.
    echo [OK] PDF created: output\fields-vines-and-barrels.pdf
)

:end
REM Only pause if running interactively (no /Q flag)
if not "%1"=="/Q" pause
exit /b 0
