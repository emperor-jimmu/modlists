<#
.SYNOPSIS
Builds the Stardew Valley Modlist Guide PDF from markdown sources.
.DESCRIPTION
Merges all markdown files in order, applies the HTML template, and
generates a PDF via Pandoc + wkhtmltopdf.
#>

$ErrorActionPreference = "Stop"
$ProjectRoot = Split-Path -Parent $PSScriptRoot
$OutputFile = Join-Path $ProjectRoot "stardew-valley-modlist-guide.pdf"

# Check dependencies
$pandoc = Get-Command pandoc -ErrorAction SilentlyContinue
if (-not $pandoc) {
    Write-Error "Pandoc not found. Install with: winget install Pandoc"
    exit 1
}

$wkhtml = Get-Command wkhtmltopdf -ErrorAction SilentlyContinue
if (-not $wkhtml) {
    Write-Error "wkhtmltopdf not found. Download from https://wkhtmltopdf.org/downloads.html"
    exit 1
}

# Collect markdown files in order
$files = @(
    (Join-Path $ProjectRoot "docs/guide/01-setup.md"),
    (Join-Path $ProjectRoot "docs/guide/02-vanilla-primer.md"),
    (Get-ChildItem (Join-Path $ProjectRoot "docs/guide/03-mod-catalog") -Filter "*.md" | Sort-Object Name).FullName,
    (Join-Path $ProjectRoot "docs/guide/04-modded-gameplay.md"),
    (Join-Path $ProjectRoot "docs/guide/05-mo2-separators.md")
) | Where-Object { Test-Path $_ }

if ($files.Count -eq 0) {
    Write-Error "No markdown files found to build."
    exit 1
}

Write-Host "Building PDF from $($files.Count) markdown files..." -ForegroundColor Green

$template = Join-Path $ProjectRoot "scripts/template.html"
$args = @(
    "--pdf-engine=wkhtmltopdf",
    "--template=$template",
    "--toc",
    "--toc-depth=2",
    "--number-sections",
    "--metadata", "title=Stardew Valley Modlist Guide",
    "--metadata", "subtitle=A Curated First-Time Player Experience",
    "--metadata", "date=$(Get-Date -Format 'yyyy-MM-dd')",
    "-o", $OutputFile
) + $files

& pandoc @args

if ($LASTEXITCODE -eq 0) {
    Write-Host "PDF generated: $OutputFile" -ForegroundColor Green
} else {
    Write-Error "Pandoc exited with code $LASTEXITCODE"
    exit 1
}
