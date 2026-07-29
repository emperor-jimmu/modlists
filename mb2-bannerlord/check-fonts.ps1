$fonts = @('Crimson Pro', 'Libre Baskerville', 'Fira Code', 'Cinzel')
$missing = @()

# Check project fonts/ directory (--font-path fonts)
$projectFontDir = Join-Path $PSScriptRoot 'fonts'
if (Test-Path $projectFontDir) {
    $projectFiles = (Get-ChildItem -LiteralPath $projectFontDir -Filter '*.ttf' -ErrorAction SilentlyContinue).BaseName
    $projectFiles += (Get-ChildItem -LiteralPath $projectFontDir -Filter '*.otf' -ErrorAction SilentlyContinue).BaseName
} else {
    $projectFiles = @()
}

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
    $localFiles = (Get-ChildItem -LiteralPath $localFontDir -Filter '*.ttf' -ErrorAction SilentlyContinue).BaseName
    $localFiles += (Get-ChildItem -LiteralPath $localFontDir -Filter '*.otf' -ErrorAction SilentlyContinue).BaseName
} else {
    $localFiles = @()
}

foreach ($f in $fonts) {
    # Normalize: strip spaces for filename matching (e.g. "Crimson Pro" -> matches "CrimsonPro.ttf")
    $fname = $f -replace ' ', ''
    $projMatch = $projectFiles | Where-Object { $_ -eq $fname } | Select-Object -First 1
    $regMatch  = $regFonts | Where-Object { $_ -like "$f*" } | Select-Object -First 1
    $localMatch = $localFiles | Where-Object { $_ -eq $fname } | Select-Object -First 1

    if ($projMatch -or $regMatch -or $localMatch) {
        Write-Host '[OK]   Font found: ' -NoNewline
        Write-Host $f -ForegroundColor Green
    } else {
        $missing += $f
        Write-Host '[WARN] Missing font: ' -NoNewline
        Write-Host $f -ForegroundColor Yellow
    }
}

Write-Host ''
if ($missing.Count -gt 0) {
    Write-Host '[WARN] Missing fonts will cause Typst to fall back to system serif/mono.' -ForegroundColor Yellow
    Write-Host '       The PDF will build but may not look as intended.' -ForegroundColor Yellow
    Write-Host "Missing: $missing" -ForegroundColor Yellow
    Write-Host 'Place .ttf files in the fonts/ folder or install system-wide.'
} else {
    Write-Host '[OK]   All required fonts found.' -ForegroundColor Green
}
