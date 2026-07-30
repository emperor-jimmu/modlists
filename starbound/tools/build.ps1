# Aetherbound PDF Build Script
# Usage: .\tools\build.ps1
# Requires: Typst 0.15.0+

$ErrorActionPreference = "Stop"

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$ProjectRoot = Resolve-Path (Join-Path $ScriptDir "..")

$FontPath = Join-Path $ProjectRoot "assets" "fonts"
$Template = Join-Path $ProjectRoot "templates" "aetherbound.typ"
$Output = Join-Path $ProjectRoot "output" "aetherbound.pdf"

Write-Host "=== Aetherbound PDF Builder ===" -ForegroundColor Cyan
Write-Host "Project:  $ProjectRoot"
Write-Host "Fonts:    $FontPath"
Write-Host "Template: $Template"
Write-Host "Output:   $Output"
Write-Host ""

# --- Check Typst installed and version >= 0.15 ---
try {
    $versionStr = typst --version 2>&1 | Out-String
    Write-Host "Typst: $($versionStr.Trim())" -ForegroundColor Green

    if ($versionStr -match '(\d+)\.(\d+)') {
        $major = [int]$Matches[1]
        $minor = [int]$Matches[2]
        if ($major -lt 0 -or ($major -eq 0 -and $minor -lt 15)) {
            Write-Host "ERROR: Typst 0.15.0+ required. Found: $major.$minor" -ForegroundColor Red
            Write-Host "Update: winget upgrade Typst.Typst" -ForegroundColor Red
            exit 1
        }
    }
} catch {
    Write-Host "ERROR: Typst not found. Install: winget install Typst.Typst" -ForegroundColor Red
    exit 1
}

# --- Check fonts exist ---
if (-not (Test-Path $FontPath)) {
    Write-Host "ERROR: Font directory not found: $FontPath" -ForegroundColor Red
    exit 1
}
$fontCount = (Get-ChildItem $FontPath -Filter "*.otf").Count
if ($fontCount -lt 5) {
    Write-Host "WARNING: Expected 5 OTF fonts, found $fontCount. PDF may fall back to system fonts." -ForegroundColor Yellow
}

# --- Ensure output directory ---
$OutputDir = Split-Path -Parent $Output
if (-not (Test-Path $OutputDir)) {
    New-Item -ItemType Directory -Path $OutputDir -Force | Out-Null
}

# --- Compile ---
Write-Host "Compiling..." -ForegroundColor Yellow
Push-Location $ProjectRoot
try {
    typst compile --font-path $FontPath $Template $Output
    Write-Host "SUCCESS: $Output" -ForegroundColor Green
    $fileInfo = Get-Item $Output
    $sizeKB = [math]::Round($fileInfo.Length / 1KB, 1)
    Write-Host "Size: $sizeKB KB" -ForegroundColor Green
} catch {
    Write-Host "ERROR: Compilation failed" -ForegroundColor Red
    Write-Host $_.Exception.Message
    exit 1
} finally {
    Pop-Location
}
