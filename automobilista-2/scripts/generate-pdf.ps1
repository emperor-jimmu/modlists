param(
    [string]$Version = "1.0.0"
)

$ErrorActionPreference = "Stop"

$versionFile = Join-Path $PSScriptRoot "..\VERSION"
if (Test-Path $versionFile) {
    $fileVersion = (Get-Content $versionFile).Trim()
    if (-not $PSBoundParameters.ContainsKey('Version')) {
        $Version = $fileVersion
    }
}

$projectRoot = Resolve-Path (Join-Path $PSScriptRoot "..")

Write-Host ""
Write-Host "=== Torque Ascension PDF Generator ===" -ForegroundColor Cyan
Write-Host "  Version: $Version" -ForegroundColor White
Write-Host ""

Write-Host "Step [1/4]: Checking Typst installation..." -ForegroundColor Yellow
try {
    $typstOutput = typst --version 2>&1
    Write-Host "  Typst found: $typstOutput" -ForegroundColor Green
} catch {
    Write-Host "  ERROR: Typst is not installed." -ForegroundColor Red
    Write-Host "  Install from: https://github.com/typst/typst/releases" -ForegroundColor Red
    Write-Host "  Or run: winget install Typst.Typst" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "Step [2/4]: Checking fonts..." -ForegroundColor Yellow

$fontsDir = Join-Path $projectRoot "assets\fonts"
$fonts = @(
    @{ Name = "Montserrat"; Regular = "Montserrat-Regular.ttf"; Bold = "Montserrat-Bold.ttf"; UrlRegular = "https://github.com/google/fonts/raw/main/ofl/montserrat/static/Montserrat-Regular.ttf"; UrlBold = "https://github.com/google/fonts/raw/main/ofl/montserrat/static/Montserrat-Bold.ttf" },
    @{ Name = "Inter"; Regular = "Inter-Regular.ttf"; Bold = "Inter-Bold.ttf"; UrlRegular = "https://github.com/google/fonts/raw/main/ofl/inter/static/Inter-Regular.ttf"; UrlBold = "https://github.com/google/fonts/raw/main/ofl/inter/static/Inter-Bold.ttf" },
    @{ Name = "JetBrains Mono"; Regular = "JetBrainsMono-Regular.ttf"; Bold = "JetBrainsMono-Bold.ttf"; UrlRegular = "https://github.com/google/fonts/raw/main/ofl/jetbrainsmono/static/JetBrainsMono-Regular.ttf"; UrlBold = "https://github.com/google/fonts/raw/main/ofl/jetbrainsmono/static/JetBrainsMono-Bold.ttf" }
)

foreach ($font in $fonts) {
    $regularPath = Join-Path $fontsDir $font.Regular
    $boldPath = Join-Path $fontsDir $font.Bold
    $needsDownload = $false

    if (-not (Test-Path $regularPath)) {
        $needsDownload = $true
    }
    if (-not (Test-Path $boldPath)) {
        $needsDownload = $true
    }

    if ($needsDownload) {
        try {
            if (-not (Test-Path $regularPath)) {
                Invoke-WebRequest -Uri $font.UrlRegular -OutFile $regularPath
            }
            if (-not (Test-Path $boldPath)) {
                Invoke-WebRequest -Uri $font.UrlBold -OutFile $boldPath
            }
            Write-Host "  Font '$($font.Name)' downloaded." -ForegroundColor Green
        } catch {
            Write-Host "  WARNING: Could not download font '$($font.Name)'. It may be available as a system font." -ForegroundColor Yellow
        }
    }
}

$allFontsAvailable = $true
foreach ($font in $fonts) {
    if (-not (Test-Path (Join-Path $fontsDir $font.Regular)) -or -not (Test-Path (Join-Path $fontsDir $font.Bold))) {
        $allFontsAvailable = $false
        break
    }
}

if ($allFontsAvailable) {
    Write-Host "  All fonts available." -ForegroundColor Green
} else {
    Write-Host "  Some fonts could not be downloaded. System fonts will be used as fallback." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Step [3/4]: Preparing output directory..." -ForegroundColor Yellow

$outputDir = Join-Path $projectRoot "output"
New-Item -ItemType Directory -Force -Path $outputDir | Out-Null
$outputFile = Join-Path $outputDir "torque-ascension-v$Version.pdf"
Write-Host "  Output: $outputFile" -ForegroundColor Green

Write-Host ""
Write-Host "Step [4/4]: Compiling PDF..." -ForegroundColor Yellow

$templatesDir = Join-Path $projectRoot "templates"
try {
    Push-Location $templatesDir
    $result = typst compile guide.typ $outputFile 2>&1
    if ($LASTEXITCODE -ne 0) {
        Write-Host "ERROR: Typst compilation failed:" -ForegroundColor Red
        Write-Host $result -ForegroundColor Red
        exit 1
    }
} finally {
    Pop-Location
}

$fileInfo = Get-Item $outputFile
Write-Host ""
Write-Host "=== PDF generated successfully! ===" -ForegroundColor Green
Write-Host "  File: $outputFile" -ForegroundColor White
Write-Host "  Size: $([math]::Round($fileInfo.Length / 1KB, 1)) KB" -ForegroundColor White
Write-Host ""
Invoke-Item $outputDir
