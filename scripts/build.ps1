<#
.SYNOPSIS
Builds the Welcome to the Valley guide PDF from markdown sources.
.DESCRIPTION
Merges all markdown files in order, applies the HTML template, and
generates a PDF via Pandoc + wkhtmltopdf.
#>

$ErrorActionPreference = "Stop"
$ProjectRoot = Split-Path -Parent $PSScriptRoot
$OutputFile = Join-Path $ProjectRoot "welcome-to-the-valley-guide.pdf"

# Check dependencies
$pandoc = Get-Command pandoc -ErrorAction SilentlyContinue
if (-not $pandoc) {
    Write-Error "Pandoc not found. Install with: winget install Pandoc"
    exit 1
}

$wkhtmlPaths = @(
    (Get-Command wkhtmltopdf -ErrorAction SilentlyContinue).Source,
    "C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf.exe",
    "C:\Program Files (x86)\wkhtmltopdf\bin\wkhtmltopdf.exe",
    "$env:LOCALAPPDATA\wkhtmltopdf\bin\wkhtmltopdf.exe"
) | Where-Object { $_ -and (Test-Path $_) }
if (-not $wkhtmlPaths) {
    Write-Error "wkhtmltopdf not found. Install with: winget install wkhtmltopdf"
    exit 1
}
$wkhtml = $wkhtmlPaths | Select-Object -First 1

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

# Ensure wkhtmltopdf is in PATH
$wkhtmlDir = Split-Path -Parent $wkhtml
if ($wkhtmlDir -and ($env:Path -notlike "*$wkhtmlDir*")) {
    $env:Path = "$wkhtmlDir;$env:Path"
}
$template = Join-Path $ProjectRoot "scripts/template.html"
$fontDir = Join-Path $ProjectRoot "docs/assets/fonts"
$fontUri = "file:///$($fontDir.Replace('\', '/'))"
$logoPath = Join-Path $ProjectRoot "assets/logo.png"
$logoUri = "file:///$($logoPath.Replace('\', '/'))"
$args = @(
    "--pdf-engine=wkhtmltopdf",
    "--template=$template",
    "--toc",
    "--toc-depth=2",
    "--number-sections",
    "--metadata", "title=Welcome to the Valley",
    "--metadata", "subtitle=A Curated First-Time Player Experience",
    "--metadata", "date=$(Get-Date -Format 'yyyy-MM-dd')",
    "--metadata", "font-path=$fontUri",
    "--metadata", "logo-path=$logoUri",
    "--pdf-engine-opt=--margin-top",
    "--pdf-engine-opt=10mm",
    "--pdf-engine-opt=--margin-bottom",
    "--pdf-engine-opt=10mm",
    "--pdf-engine-opt=--margin-left",
    "--pdf-engine-opt=12mm",
    "--pdf-engine-opt=--margin-right",
    "--pdf-engine-opt=12mm",
    "--pdf-engine-opt=--footer-center",
    "--pdf-engine-opt= [page]",
    "--pdf-engine-opt=--footer-font-size",
    "--pdf-engine-opt=10",
    "-o", $OutputFile
) + $files

& pandoc @args

if ($LASTEXITCODE -eq 0) {
    Write-Host "PDF generated: $OutputFile" -ForegroundColor Green
} else {
    Write-Error "Pandoc exited with code $LASTEXITCODE"
    exit 1
}
