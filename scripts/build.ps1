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
    Write-Host "Building site + PDF..." -ForegroundColor Green
    python -m mkdocs build

    if (-not $SkipPdf) {
      # Copy PDF from site/ to repo root
      $pdfSource = "$ProjectRoot\site\stellaris-modlist-guide.pdf"
      $pdfDest = "$ProjectRoot\stellaris-modlist-guide.pdf"
      if (Test-Path $pdfSource) {
        Copy-Item -Path $pdfSource -Destination $pdfDest -Force
        Write-Host "PDF generated at $pdfDest" -ForegroundColor Green
      }
    }

    # Remove intermediate HTML site output — PDF is the deliverable
    Remove-Item -Path "$ProjectRoot\site" -Recurse -Force -ErrorAction SilentlyContinue
    Write-Host "Build complete." -ForegroundColor Green
  }
} finally {
  Pop-Location
}
