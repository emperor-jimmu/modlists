param(
  [switch]$SkipRegenerate,
  [switch]$Open
)

$ProjectRoot = Split-Path -Parent $PSScriptRoot
$Version = (Get-Content (Join-Path $ProjectRoot "VERSION")).Trim()
$OutputDir = Join-Path $ProjectRoot "output"
$MainFile = Join-Path $ProjectRoot "main.typ"
$OutputFile = Join-Path $OutputDir "ck3-modlist-guide-v$Version.pdf"

if (-not (Test-Path $OutputDir)) {
  New-Item -ItemType Directory -Path $OutputDir -Force | Out-Null
}

# Generate mod sections from markdown unless skipped
if (-not $SkipRegenerate) {
  $generateScript = Join-Path $PSScriptRoot "generate-mod-sections.ps1"
  if (Test-Path $generateScript) {
    Write-Host "Regenerating mod sections from markdown..." -ForegroundColor Cyan
    & $generateScript
  }
}

Write-Host "Compiling PDF..." -ForegroundColor Cyan
Write-Host "  Input: $MainFile" -ForegroundColor Gray
Write-Host "  Output: $OutputFile" -ForegroundColor Gray

$result = & "typst" compile $MainFile $OutputFile 2>&1

if ($LASTEXITCODE -eq 0) {
  Write-Host "PDF generated successfully!" -ForegroundColor Green
  Write-Host "  $OutputFile" -ForegroundColor Green

  if ($Open) {
    Start-Process $OutputFile
  }
} else {
  Write-Host "Compilation failed:" -ForegroundColor Red
  $result | ForEach-Object { Write-Host $_ -ForegroundColor Red }
  exit 1
}
