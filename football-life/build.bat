@echo off
echo ============================================
echo  The Beautiful Grind - PDF Generator (FL26 v2.2)
echo ============================================
echo.
echo Checking Typst installation...
where typst >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo ERROR: typst is not installed or not in PATH.
    echo Please install Typst 0.15 or later from https://typst.app/
    pause
    exit /b 1
)
for /f "tokens=2" %%v in ('typst --version') do set TYPST_VER=%%v
echo Typst %TYPST_VER% found.
echo.
echo Building PDF...
if not exist output mkdir output
typst compile template.typ output/the-beautiful-grind.pdf
if %ERRORLEVEL% equ 0 (
    echo.
    echo ============================================
    echo  SUCCESS: PDF generated at output/the-beautiful-grind.pdf
    echo ============================================
) else (
    echo.
    echo ERROR: PDF generation failed. Check the errors above.
    pause
)
