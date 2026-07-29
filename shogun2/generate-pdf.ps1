<#
.SYNOPSIS
    Generate the Tenka Fubu Modlist PDF guide from Typst source.
.DESCRIPTION
    Compiles all guide content into a single PDF using Typst 0.15.
    Requires typst.exe to be in PATH or TYPST_PATH environment variable.
#>

$ErrorActionPreference = "Stop"

# Config
$TypstBin = if ($env:TYPST_PATH) { $env:TYPST_PATH } else { "typst" }
$MainSource = Join-Path $PSScriptRoot "typst" "main.typ"
$OutputDir = Join-Path $PSScriptRoot "output"
$OutputPdf = Join-Path $OutputDir "Tenka-Fubu-Modlist.pdf"

# Ensure output directory exists
if (-not (Test-Path -LiteralPath $OutputDir)) {
    New-Item -ItemType Directory -Path $OutputDir -Force | Out-Null
}

# Compile
Write-Host "Compiling Tenka Fubu Modlist PDF..." -ForegroundColor Cyan
& $TypstBin compile --root $PSScriptRoot --font-path (Join-Path $PSScriptRoot "fonts") $MainSource $OutputPdf

if ($LASTEXITCODE -eq 0) {
    Write-Host "Done! PDF generated at: $OutputPdf" -ForegroundColor Green
}
else {
    Write-Host "Typst compilation failed with exit code: $LASTEXITCODE" -ForegroundColor Red
    exit $LASTEXITCODE
}
