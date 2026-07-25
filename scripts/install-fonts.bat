@echo off
cd /d "%~dp0.."

set FONTS_DIR=%cd%\fonts
echo Installing fonts to %FONTS_DIR%...

if not exist "%FONTS_DIR%" mkdir "%FONTS_DIR%"

echo Downloading Playfair Display...
powershell -Command "& {Invoke-WebRequest -Uri 'https://github.com/google/fonts/raw/main/ofl/playfairdisplay/PlayfairDisplay%5Bwght%5D.ttf' -OutFile '%FONTS_DIR%\PlayfairDisplay[wght].ttf'}"

echo Downloading Source Serif 4...
powershell -Command "& {Invoke-WebRequest -Uri 'https://github.com/google/fonts/raw/main/ofl/sourceserif4/SourceSerif4%5Bwght%5D.ttf' -OutFile '%FONTS_DIR%\SourceSerif4[wght].ttf'}"

echo Downloading JetBrains Mono...
powershell -Command "& {Invoke-WebRequest -Uri 'https://github.com/google/fonts/raw/main/ofl/jetbrainsmono/JetBrainsMono%5Bwght%5D.ttf' -OutFile '%FONTS_DIR%\JetBrainsMono[wght].ttf'}"

echo Fonts installed to %FONTS_DIR%
echo.
echo Note: These are variable-weight fonts. Static versions can be
echo downloaded manually from Google Fonts if needed.
