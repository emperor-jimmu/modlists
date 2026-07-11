param(
  [switch]$Serve,
  [switch]$SkipPdf
)

$ProjectRoot = Split-Path -Parent $PSScriptRoot
$Version = Get-Content -Path "$ProjectRoot\VERSION" -Raw | ForEach-Object { $_.Trim() }

Write-Host "Stellaris Modlist Guide — Build v$Version" -ForegroundColor Cyan

# Set version for mkdocs-exporter and covers to pick up
$env:GUIDE_VERSION = $Version
$env:MKDOCS_EXPORTER_PDF = if (-not $SkipPdf) { "true" } else { "false" }

Push-Location $ProjectRoot
try {
  if ($Serve) {
    Write-Host "Starting dev server..." -ForegroundColor Green
    python -m mkdocs serve
  } else {
    Write-Host "Building site..." -ForegroundColor Green
    python -m mkdocs build

    if (-not $SkipPdf) {
      Write-Host "PDF generated at site/stellaris-modlist-guide.pdf" -ForegroundColor Green
    }

    Write-Host "Build complete." -ForegroundColor Green
  }
} finally {
  Pop-Location
}
