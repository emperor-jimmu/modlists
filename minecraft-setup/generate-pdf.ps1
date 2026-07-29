$ErrorActionPreference = "Stop"
$ProjectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$RenderedDir = Join-Path $ProjectRoot "rendered"

function Write-Status($Symbol, $Message) {
  $color = if ($Symbol -eq "OK") { "Green" } elseif ($Symbol -eq "FAIL") { "Red" } else { "Yellow" }
  Write-Host ("[" + $Symbol + "]") -ForegroundColor $color -NoNewline
  Write-Host " $Message"
}

function Test-TypstInstall() {
  $null = Get-Command "typst" -ErrorAction SilentlyContinue
  if ($?) { return $true }

  $env:Path = [Environment]::GetEnvironmentVariable("Path", "User") + ";" + [Environment]::GetEnvironmentVariable("Path", "Machine")
  $null = Get-Command "typst" -ErrorAction SilentlyContinue
  if ($?) { return $true }

  $wingetTypst = Join-Path $env:LOCALAPPDATA "Microsoft\WinGet\Packages\Typst.Typst_Microsoft.Winget.Source_8wekyb3d8bbwe\typst-x86_64-pc-windows-msvc\typst.exe"
  if (Test-Path $wingetTypst) {
    $env:Path = $env:Path + ";" + [System.IO.Path]::GetDirectoryName($wingetTypst)
    Write-Status "OK" "Typst found at winget package path."
    return $true
  }

  Write-Status "WARN" "Typst not found. Attempting install via winget..."
  try {
    winget install Typst.Typst --accept-source-agreements --accept-package-agreements 2>&1 | Out-Null
    $env:Path = [Environment]::GetEnvironmentVariable("Path", "User") + ";" + [Environment]::GetEnvironmentVariable("Path", "Machine")
    $null = Get-Command "typst" -ErrorAction SilentlyContinue
    if ($?) {
      Write-Status "OK" "Typst installed successfully."
      return $true
    }
    if (Test-Path $wingetTypst) {
      $env:Path = $env:Path + ";" + [System.IO.Path]::GetDirectoryName($wingetTypst)
      Write-Status "OK" "Typst installed via winget."
      return $true
    }
  } catch {
    Write-Status "FAIL" "Failed to install Typst automatically."
  }

  Write-Host ""
  Write-Host "Install Typst manually from https://github.com/typst/typst/releases" -ForegroundColor Yellow
  Write-Host "  winget install Typst.Typst" -ForegroundColor Cyan
  return $false
}

function Compile-Guide() {
  Write-Host ""
  Write-Host "Compiling Driftwood Guide..." -ForegroundColor Cyan
  $sourceFile = Join-Path $ProjectRoot "templates" "guide.typ"
  $outputPdf = Join-Path $RenderedDir "DRIFTWOOD-GUIDE.pdf"

  $result = typst compile --root $ProjectRoot $sourceFile $outputPdf 2>&1
  if ($LASTEXITCODE -eq 0) {
    $fileInfo = Get-Item $outputPdf
    $sizeKB = [math]::Round($fileInfo.Length / 1KB, 1)
    Write-Status "OK" "DRIFTWOOD-GUIDE.pdf -> $outputPdf ($sizeKB KB)"
    return $true
  } else {
    Write-Status "FAIL" "Failed to compile DRIFTWOOD-GUIDE.pdf"
    Write-Host $result -ForegroundColor Red
    return $false
  }
}

Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Driftwood -- PDF Generator" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

if (-not (Test-TypstInstall)) {
  exit 1
}

$versionFile = Join-Path $ProjectRoot "VERSION"
if (Test-Path $versionFile) {
  $version = Get-Content $versionFile -Raw | ForEach-Object { $_.Trim() }
  Write-Status "OK" "Version: $version"
} else {
  Write-Status "WARN" "VERSION file not found at $versionFile"
}

if (-not (Test-Path $RenderedDir)) {
  New-Item -ItemType Directory -Path $RenderedDir -Force | Out-Null
}

$guideOk = Compile-Guide

Write-Host ""
if ($guideOk) {
  Write-Status "OK" "Guide PDF generated successfully."
} else {
  Write-Status "FAIL" "PDF compilation failed."
  exit 1
}
