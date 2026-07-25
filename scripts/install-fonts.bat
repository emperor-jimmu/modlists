@echo off
cd /d "%~dp0.."

set FONTS_DIR=%cd%\fonts
echo Installing fonts to %FONTS_DIR%...

if not exist "%FONTS_DIR%" mkdir "%FONTS_DIR%"

echo Downloading Playfair Display...
curl.exe -L --retry 3 -o "%FONTS_DIR%\PlayfairDisplay[wght].ttf" "https://cdn.jsdelivr.net/gh/google/fonts@main/ofl/playfairdisplay/PlayfairDisplay%%5Bwght%%5D.ttf"
if errorlevel 1 (
  curl.exe -L --retry 3 -o "%FONTS_DIR%\PlayfairDisplay[wght].ttf" "https://raw.githubusercontent.com/google/fonts/main/ofl/playfairdisplay/PlayfairDisplay%%5Bwght%%5D.ttf"
)

echo Downloading Source Serif 4...
curl.exe -L --retry 3 -o "%FONTS_DIR%\SourceSerif4[opsz,wght].ttf" "https://cdn.jsdelivr.net/gh/google/fonts@main/ofl/sourceserif4/SourceSerif4%%5Bopsz%%2Cwght%%5D.ttf"
if errorlevel 1 (
  curl.exe -L --retry 3 -o "%FONTS_DIR%\SourceSerif4[opsz,wght].ttf" "https://raw.githubusercontent.com/google/fonts/main/ofl/sourceserif4/SourceSerif4%%5Bopsz%%2Cwght%%5D.ttf"
)

echo Downloading JetBrains Mono...
curl.exe -L --retry 3 -o "%FONTS_DIR%\JetBrainsMono[wght].ttf" "https://cdn.jsdelivr.net/gh/google/fonts@main/ofl/jetbrainsmono/JetBrainsMono%%5Bwght%%5D.ttf"
if errorlevel 1 (
  curl.exe -L --retry 3 -o "%FONTS_DIR%\JetBrainsMono[wght].ttf" "https://raw.githubusercontent.com/google/fonts/main/ofl/jetbrainsmono/JetBrainsMono%%5Bwght%%5D.ttf"
)

echo.
echo Fonts installed to %FONTS_DIR%
echo.
echo Note: These are variable-weight fonts. Static versions can be
echo downloaded manually from Google Fonts if needed.