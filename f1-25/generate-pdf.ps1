$ErrorActionPreference = "Stop"
$ProjectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$OutputDir = Join-Path $ProjectRoot "output"

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

function Build-Guide() {
  Write-Host ""
  Write-Host "Building GUIDE.md from guide/ directory..." -ForegroundColor Cyan

  $guideFiles = @(
    "guide\wave-0\how-to-play.md",
    "guide\wave-0\mods.md",
    "guide\wave-1\strategy.md",
    "guide\wave-1\mods.md",
    "guide\wave-2\advanced.md",
    "guide\wave-2\mods.md",
    "guide\wave-0\glossary.md"
  )

  $guideContent = ""
  foreach ($file in $guideFiles) {
    $fullPath = Join-Path $ProjectRoot $file
    if (Test-Path $fullPath) {
      $guideContent += (Get-Content $fullPath -Raw) + "`n`n"
    } else {
      Write-Status "WARN" "Missing: $file"
    }
  }

  $guidePath = Join-Path $ProjectRoot "GUIDE.md"
  Set-Content -Path $guidePath -Value $guideContent.TrimEnd() -Encoding UTF8
  Write-Status "OK" "GUIDE.md built from $($guideFiles.Count) source files."
}

function Compile-Guide() {
  Write-Host ""
  Write-Host "Compiling Apex Alchemy Guide..." -ForegroundColor Cyan
  $sourceFile = Join-Path $ProjectRoot "templates" "guide.typ"
  $outputPdf = Join-Path $OutputDir "APEX-ALCHEMY-GUIDE.pdf"

  $result = typst compile --root $ProjectRoot $sourceFile $outputPdf 2>&1
  if ($LASTEXITCODE -eq 0) {
    $fileInfo = Get-Item $outputPdf
    $sizeKB = [math]::Round($fileInfo.Length / 1KB, 1)
    Write-Status "OK" "APEX-ALCHEMY-GUIDE.pdf -> $outputPdf ($sizeKB KB)"
    return $true
  } else {
    Write-Status "FAIL" "Failed to compile APEX-ALCHEMY-GUIDE.pdf"
    Write-Host $result -ForegroundColor Red
    return $false
  }
}

function Verify-Pdf($pdfPath) {
  $fileInfo = Get-Item $pdfPath
  $sizeKB = [math]::Round($fileInfo.Length / 1KB, 1)

  if ($sizeKB -lt 50) {
    Write-Status "FAIL" "PDF too small ($sizeKB KB) — may be empty or broken"
    return $false
  }

  $content = [System.IO.File]::ReadAllBytes($pdfPath)
  $header = [System.Text.Encoding]::ASCII.GetString($content[0..4])
  if ($header -ne "%PDF-") {
    Write-Status "FAIL" "File does not start with PDF header"
    return $false
  }

  $footerPos = $content.Length - 64
  if ($footerPos -gt 0) {
    $footer = [System.Text.Encoding]::ASCII.GetString($content[$footerPos..($content.Length - 1)])
    if ($footer -notmatch "%%EOF") {
      Write-Status "WARN" "PDF footer (%%EOF) not found — file may be truncated"
    }
  }

  Write-Status "OK" "PDF verified: $sizeKB KB, valid PDF header"
  return $true
}

Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Apex Alchemy — PDF Generator" -ForegroundColor Cyan
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

if (-not (Test-Path $OutputDir)) {
  New-Item -ItemType Directory -Path $OutputDir -Force | Out-Null
}

Build-Guide
$guideOk = Compile-Guide

Write-Host ""
if ($guideOk) {
  $pdfPath = Join-Path $OutputDir "APEX-ALCHEMY-GUIDE.pdf"
  if (-not (Verify-Pdf $pdfPath)) {
    Write-Status "FAIL" "PDF verification failed."
    exit 1
  }
  Write-Status "OK" "Guide PDF generated and verified successfully."
} else {
  Write-Status "FAIL" "PDF compilation failed."
  exit 1
}
