@echo off
echo ============================================
echo  Steel Genesis - PDF Generator (Open Rails 1.6.1)
echo ============================================
echo.
echo Checking Typst installation...
where typst >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo ERROR: typst is not installed or not in PATH.
    echo Please install Typst 0.15 from https://typst.app/
    pause
    exit /b 1
)
echo Typst found.
echo.
echo Building PDF...
typst compile template.typ output/steel-genesis.pdf
if %ERRORLEVEL% equ 0 (
    echo.
    echo ============================================
    echo  SUCCESS: PDF generated at output/steel-genesis.pdf
    echo ============================================
) else (
    echo.
    echo ERROR: PDF generation failed. Check the errors above.
    pause
)