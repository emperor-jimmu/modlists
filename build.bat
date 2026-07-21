@echo off
setlocal enabledelayedexpansion

echo ============================================
echo  No Crown Without Blood - PDF Builder
echo  Target: Bannerlord WS v1.2.7 / BL v1.4.7
echo ============================================
echo.

REM --- Prerequisite: Typst 0.15+ ---
where typst >nul 2>&1
if %errorlevel% neq 0 (
    echo [ERROR] typst not found in PATH.
    echo.
    echo Install Typst 0.15+ from:
    echo   https://github.com/typst/typst/releases
    echo.
    echo Ensure typst.exe is in your system PATH, then re-run this script.
    pause
    exit /b 1
)

for /f "tokens=2" %%v in ('typst --version 2^>^&1') do set TYPST_VER=%%v
echo [OK] typst found: version %TYPST_VER%
echo.

REM --- Prerequisite: Required fonts ---
echo Checking fonts...
powershell -Command ^
  "$fonts = @('Crimson Pro', 'Libre Baskerville', 'Fira Code', 'Cinzel');" ^
  "$missing = @();" ^
  "$fontCollection = [System.Drawing.Text.InstalledFontCollection]::new();" ^
  "$fontNames = $fontCollection.Families | ForEach-Object { $_.Name };" ^
  "foreach ($f in $fonts) {" ^
  "  if ($fontNames -notcontains $f) {" ^
  "    $missing += $f;" ^
  "    Write-Host '[WARN] Missing font: ' -NoNewline; Write-Host $f -ForegroundColor Yellow;" ^
  "  } else {" ^
  "    Write-Host '[OK]   Found font: ' -NoNewline; Write-Host $f -ForegroundColor Green;" ^
  "  }" ^
  "};" ^
  "if ($missing.Count -gt 0) {" ^
  "  Write-Host '';" ^
  "  Write-Host '[WARN] Missing fonts will cause Typst to fall back to system serif/mono.' -ForegroundColor Yellow;" ^
  "  Write-Host '       The PDF will build but may not look as intended.' -ForegroundColor Yellow;" ^
  "  Write-Host 'Missing fonts:' $missing;" ^
  "  Write-Host 'Download from Google Fonts or install via system font manager.';" ^
  "} else {" ^
  "  Write-Host '';" ^
  "  Write-Host '[OK]   All required fonts installed.' -ForegroundColor Green;" ^
  "}"
echo.

REM --- Build ---
echo Building PDF...
echo.

typst compile guide/_index.typ output/No-Crown-Without-Blood.pdf --root .

if %errorlevel% neq 0 (
    echo.
    echo ============================================
    echo [FAIL] PDF build failed.
    echo Check the Typst error messages above.
    echo ============================================
    pause
    exit /b 1
)

echo.
echo ============================================
echo [OK]   PDF generated:
echo       output\No-Crown-Without-Blood.pdf
echo ============================================
pause
