@echo off
cd /d "%~dp0"

if not exist output mkdir output

echo Compiling Beneath a Crimson Banner PDF...
typst compile --root . --font-path fonts template\main.typ output\Beneath-a-Crimson-Banner.pdf

if %errorlevel% equ 0 (
    echo PDF generated: output\Beneath-a-Crimson-Banner.pdf
) else (
    echo Build failed with error code %errorlevel%
    echo Make sure Typst 0.15+ is installed and fonts are in the fonts/ directory.
    exit /b %errorlevel%
)
