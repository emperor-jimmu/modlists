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

where node >nul 2>&1
if !ERRORLEVEL! neq 0 (
    echo ERROR: Node.js not found. Install from https://nodejs.org/
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

:: Install Node dependencies if needed
echo [1/4] Checking Node dependencies...
if not exist "node_modules" (
    echo Installing dependencies...
    call npm install
    if !ERRORLEVEL! neq 0 (
        echo ERROR: npm install failed.
        exit /b 1
    )
)

:: YAML to JSON conversion
echo [2/4] Converting mod data YAML to JSON...
node scripts/convert-data.js
if !ERRORLEVEL! neq 0 (
    echo ERROR: YAML conversion failed.
    exit /b 1
)

:: Update author in config
echo [3/4] Setting author to "%AUTHOR%"...
set SETAUTHOR=%AUTHOR%
powershell -command "$f=Get-Content 'typst/config.typ'; $f -replace 'project-author = \".*\"', 'project-author = \"' + $env:SETAUTHOR + '\"' | Set-Content 'typst/config.typ'"

:: Ensure output directory exists
if not exist "output" mkdir output

:: Compile PDF
echo [4/4] Compiling PDF...
typst compile typst/template.typ output/Stellar-Dominion.pdf
if !ERRORLEVEL! neq 0 (
    echo ERROR: Typst compilation failed.
    exit /b 1
)

echo.
echo SUCCESS: PDF generated at output/Stellar-Dominion.pdf
exit /b 0
