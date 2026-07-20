param(
  [switch]$Serve,
  [switch]$SkipPdf
)

$ProjectRoot = Split-Path -Parent $PSScriptRoot
$Version = Get-Content -Path "$ProjectRoot\VERSION" -Raw | ForEach-Object { $_.Trim() }
$env:GUIDE_VERSION = $Version
$env:MKDOCS_EXPORTER_PDF = if (-not $SkipPdf) { "true" } else { "false" }

Write-Host "Starbound Stories — Build v$Version" -ForegroundColor Cyan

Push-Location $ProjectRoot
try {
  if ($Serve) {
    Write-Host "Starting dev server..." -ForegroundColor Green
    python -m mkdocs serve
  } else {
    Write-Host "Generating PDF..." -ForegroundColor Green
    python scripts\generate-pdf.py

    if ($LASTEXITCODE -eq 0) {
      Write-Host "PDF generated at stellaris-modlist-guide.pdf" -ForegroundColor Green
    } else {
      Write-Host "PDF generation failed." -ForegroundColor Red
      exit 1
    }
  }
} finally {
  Pop-Location
}
