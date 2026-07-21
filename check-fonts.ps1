$fonts = @('Crimson Pro', 'Libre Baskerville', 'Fira Code', 'Cinzel')
$missing = @()

# Check Windows registry for system-installed fonts
$regPath = 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Fonts'
try {
    $regFonts = (Get-ItemProperty -Path $regPath).PSObject.Properties.Name
} catch {
    $regFonts = @()
}

# Check user-local fonts
$localFontDir = Join-Path $env:LOCALAPPDATA 'Microsoft\Windows\Fonts'
if (Test-Path $localFontDir) {
    $localFiles = (Get-ChildItem $localFontDir -Filter '*.ttf' -ErrorAction SilentlyContinue).BaseName
    $localFiles += (Get-ChildItem $localFontDir -Filter '*.otf' -ErrorAction SilentlyContinue).BaseName
} else {
    $localFiles = @()
}

foreach ($f in $fonts) {
    $regMatch = $regFonts | Where-Object { $_ -like "$f*" } | Select-Object -First 1
    $localMatch = $localFiles | Where-Object { $_ -like "$f*" } | Select-Object -First 1
    if ($regMatch -or $localMatch) {
        Write-Host '[OK]   Found font: ' -NoNewline
        Write-Host $f -ForegroundColor Green
    } else {
        $missing += $f
        Write-Host '[WARN] Missing font: ' -NoNewline
        Write-Host $f -ForegroundColor Yellow
    }
}

Write-Host ''
if ($missing.Count -gt 0) {
    if (Test-Path 'fonts\*.ttf') {
        Write-Host '[INFO] Project fonts/ directory found - Typst will use these as fallback.' -ForegroundColor Cyan
    } else {
        Write-Host '[WARN] Missing fonts will cause Typst to fall back to system serif/mono.' -ForegroundColor Yellow
        Write-Host '       The PDF will build but may not look as intended.' -ForegroundColor Yellow
        Write-Host "Missing fonts: $missing" -ForegroundColor Yellow
        Write-Host 'Download from Google Fonts and place .ttf files in the fonts/ folder, or install system-wide.'
    }
} else {
    Write-Host '[OK]   All required fonts installed.' -ForegroundColor Green
}
