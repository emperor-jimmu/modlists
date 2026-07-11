param(
    [string]$ProjectRoot = $PSScriptRoot | Split-Path -Parent
)

$ErrorActionPreference = "Stop"

Write-Host "=== CK3 Modlist Guide Builder ==="

# Step 1: Read version
$versionPath = Join-Path $ProjectRoot "VERSION"
$version = (Get-Content $versionPath).Trim()
$outputDir = Join-Path $ProjectRoot "output"
$outputName = "ck3-modlist-guide-v$version.pdf"
$outputPath = Join-Path $outputDir $outputName

# Step 2: Generate modlist sections from markdown
Write-Host "[1/3] Generating modlist sections from markdown..."
$genScript = Join-Path $ProjectRoot "scripts" "generate-mod-sections.ps1"
if (Test-Path $genScript) {
    & $genScript
} else {
    Write-Host "  (generate-mod-sections.ps1 not found -- skipping auto-generation)"
}

# Step 3: Create output directory
if (-not (Test-Path $outputDir)) {
    New-Item -ItemType Directory -Path $outputDir -Force | Out-Null
}

# Step 4: Compile PDF
Write-Host "[2/3] Compiling PDF..."
$mainPath = Join-Path $ProjectRoot "main.typ"
& typst compile $mainPath $outputPath
if ($LASTEXITCODE -ne 0) {
    Write-Error "Typst compilation failed with exit code $LASTEXITCODE"
    exit $LASTEXITCODE
}

Write-Host "[3/3] Done!"
Write-Host "Output: $outputPath"
