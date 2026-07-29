@echo off
cd /d "%~dp0"

echo Converting markdown to Typst...
node src/convert.js

echo Compiling PDF...
typst compile --root "." --font-path fonts src/enhanced-liberty.typ output/Enhanced-Liberty.pdf

if %errorlevel% equ 0 (
    echo PDF generated: output/Enhanced-Liberty.pdf
) else (
    echo PDF generation failed. Check errors above.
    exit /b 1
)
