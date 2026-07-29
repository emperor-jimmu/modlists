@echo off
title Only Monsters Remain - Build All

echo ====================================
echo  Only Monsters Remain
echo  Build: Site + PDF
echo ====================================
echo.

:: Check for Node.js
where node >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo ERROR: Node.js is not installed or not in PATH.
    echo Please install Node.js from https://nodejs.org/
    pause
    exit /b 1
)

:: Check for Typst
where typst >nul 2>nul
if %ERRORLEVEL% neq 0 (
    echo WARNING: Typst is not installed or not in PATH.
    echo PDF generation will be skipped.
    echo Install Typst from https://github.com/typst/typst/releases
    echo.
    set SKIP_PDF=1
)

:: Install dependencies if needed
if not exist "node_modules\" (
    echo Installing dependencies...
    call npm install
    if %ERRORLEVEL% neq 0 (
        echo ERROR: npm install failed.
        pause
        exit /b 1
    )
    echo.
)

:: Build VitePress site
echo [1/2] Building static site...
call npm run build
if %ERRORLEVEL% neq 0 (
    echo ERROR: Static site build failed.
    pause
    exit /b 1
)
echo.

:: Build PDF
if "%SKIP_PDF%"=="" (
    echo [2/2] Building PDF...
    call npm run pdf
    if %ERRORLEVEL% neq 0 (
        echo ERROR: PDF build failed.
        pause
        exit /b 1
    )
    echo.
) else (
    echo [2/2] SKIPPED - Typst not installed.
    echo.
)

echo ====================================
echo  Build complete!
echo  Site: output\site\index.html
if "%SKIP_PDF%"=="" (
    echo  PDF:  output\Only-Monsters-Remain.pdf
)
echo ====================================
echo.
pause
