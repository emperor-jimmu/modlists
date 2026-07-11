$ErrorActionPreference = "Stop"
$ProjectRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$RenderedDir = Join-Path $ProjectRoot "rendered"

function Write-Status($Symbol, $Message) {
  $color = if ($Symbol -eq "OK") { "Green" } elseif ($Symbol -eq "FAIL") { "Red" } else { "Yellow" }
  Write-Host ("[" + $Symbol + "]") -ForegroundColor $color -NoNewline
  Write-Host " $Message"
}

function Test-Dependency($Name, $Command) {
  $null = Get-Command $Command -ErrorAction SilentlyContinue
  if (-not $?) {
    Write-Status "FAIL" "$Name not found."
    return $false
  }
  Write-Status "OK" "$Name found at $(Get-Command $Command).Source"
  return $true
}

function Test-TypstInstall() {
  $null = Get-Command "typst" -ErrorAction SilentlyContinue
  if ($?) { return $true }

  # Refresh PATH from registry (covers installer-based installs)
  $env:Path = [Environment]::GetEnvironmentVariable("Path", "User") + ";" + [Environment]::GetEnvironmentVariable("Path", "Machine")
  $null = Get-Command "typst" -ErrorAction SilentlyContinue
  if ($?) { return $true }

  # Fallback: check known winget package directory
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
    # Post-install fallback to winget path
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
  Write-Host "  scoop install typst" -ForegroundColor Cyan
  return $false
}

function Compile-Pdf($Name, $SourceFile) {
  Write-Host ""
  Write-Host "Compiling $Name..." -ForegroundColor Cyan
  $outputPdf = Join-Path $RenderedDir "$Name.pdf"

  $result = typst compile --root $ProjectRoot $SourceFile $outputPdf 2>&1
  if ($LASTEXITCODE -eq 0) {
    $fileInfo = Get-Item $outputPdf
    $sizeKB = [math]::Round($fileInfo.Length / 1KB, 1)
    Write-Status "OK" "$Name.pdf → $outputPdf ($sizeKB KB)"
    return $true
  } else {
    Write-Status "FAIL" "Failed to compile $Name.pdf"
    Write-Host $result -ForegroundColor Red
    return $false
  }
}

Write-Host "========================================" -ForegroundColor Cyan
Write-Host " Minecraft Modpack — PDF Generator" -ForegroundColor Cyan
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

Write-Host ""
Write-Host "=== Mod List ===" -ForegroundColor Cyan
$modlistOk = Compile-Pdf "MODLIST" (Join-Path $ProjectRoot "templates" "modlist.typ")

Write-Host ""
Write-Host "=== Getting Started Guide ===" -ForegroundColor Cyan
$guideOk = Compile-Pdf "GETTING-STARTED" (Join-Path $ProjectRoot "templates" "guide.typ")

Write-Host ""
if ($modlistOk -and $guideOk) {
  Write-Status "OK" "All PDFs generated successfully."
} else {
  Write-Status "FAIL" "One or more PDFs failed to compile."
  exit 1
}
