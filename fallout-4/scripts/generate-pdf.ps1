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
Write-Host "=== Glowing Horizon PDF Generator ===" -ForegroundColor Cyan
Write-Host "  Version: $Version" -ForegroundColor White
Write-Host ""

Write-Host "Step [1/3]: Checking Typst installation..." -ForegroundColor Yellow
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
Write-Host "Step [2/3]: Preparing output directory..." -ForegroundColor Yellow

$outputDir = Join-Path $projectRoot "output"
New-Item -ItemType Directory -Force -Path $outputDir | Out-Null
$outputFile = Join-Path $outputDir "Glowing-Horizon-v$Version.pdf"
Write-Host "  Output: $outputFile" -ForegroundColor Green

Write-Host ""
Write-Host "Step [3/3]: Compiling PDF..." -ForegroundColor Yellow

$templatesDir = Join-Path $projectRoot "templates"
try {
    Push-Location $templatesDir
    $result = typst compile --root $projectRoot guide.typ $outputFile 2>&1
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
