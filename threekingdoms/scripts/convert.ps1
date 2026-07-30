param([switch]$Clean)

$ErrorActionPreference = "Stop"
$guideDir = Join-Path $PSScriptRoot ".." "guide"

# All .md files → auto-generated .typ on build
$files = @(
    "00-wave0\01-introduction.md",
    "00-wave0\02-how-to-play.md",
    "00-wave0\03-first-20-turns.md",
    "01-wave1\01-introduction.md",
    "01-wave1\02-strategy.md",
    "02-wave2\01-introduction.md",
    "02-wave2\02-strategy.md"
)

if ($Clean) {
    foreach ($relPath in $files) {
        $typPath = [System.IO.Path]::ChangeExtension((Join-Path $guideDir $relPath), ".typ")
        if (Test-Path $typPath) {
            Remove-Item $typPath -Force
            Write-Host "REMOVED: $(Split-Path $typPath -Leaf)" -ForegroundColor Yellow
        }
    }
    exit 0
}

foreach ($relPath in $files) {
    $mdPath = Join-Path $guideDir $relPath
    $typPath = [System.IO.Path]::ChangeExtension($mdPath, ".typ")

    if (-not (Test-Path $mdPath)) {
        Write-Host "SKIP: $relPath (no source)" -ForegroundColor Yellow
        continue
    }

    Write-Host "CONVERT: $relPath" -ForegroundColor Cyan

    $tmpPath = "$env:TEMP\typst-convert.typ"
    pandoc $mdPath -f markdown-auto_identifiers -t typst --wrap=auto -o $tmpPath 2>$null
    if ($LASTEXITCODE -ne 0) {
        Write-Host "  ERROR: pandoc failed" -ForegroundColor Red
        Remove-Item $tmpPath -Force -ErrorAction SilentlyContinue
        continue
    }

    $content = Get-Content $tmpPath -Raw -Encoding UTF8
    Remove-Item $tmpPath -Force

    # Import path: guide/XX-waveY/file.typ → ../../template/styles.typ
    $depth = ($relPath -replace '[^\\]', '').Length + 1
    $importPath = ("..\" * $depth + "template\styles.typ").Replace('\', '/')

    # Prepend styles import (show rules auto-style all tables)
    $content = "#import `"$importPath`": *`r`n`r`n$content"

    Set-Content $typPath -Value $content -Encoding UTF8 -NoNewline
    Write-Host "  OK: $(Split-Path $typPath -Leaf)" -ForegroundColor Green
}

Write-Host "Done." -ForegroundColor Green
