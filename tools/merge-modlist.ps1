param(
  [string]$OutputFile = "elder-wilds.md"
)

$scriptDir = Split-Path -Parent $PSCommandPath
$root = Split-Path -Parent $scriptDir
$files = @(
  "guide/modlist.md"
  "guide/install.md"
  "guide/modlist-foundations.md"
  "guide/modlist-graphics.md"
  "guide/modlist-graphics-pgpatcher.md"
  "guide/modlist-graphics-shaders.md"
  "guide/modlist-graphics-textures.md"
  "guide/modlist-graphics-lighting.md"
  "guide/modlist-graphics-weather.md"
  "guide/modlist-graphics-terrain.md"
  "guide/modlist-graphics-characters.md"
  "guide/modlist-graphics-lod.md"
  "guide/modlist-ui.md"
  "guide/modlist-animations.md"
  "guide/modlist-third-person.md"
  "guide/modlist-expanded-systems.md"
  "guide/modlist-expanded-character.md"
  "guide/modlist-expanded-magic.md"
  "guide/modlist-expanded-survival.md"
  "guide/modlist-expanded-crafting.md"
  "guide/modlist-expanded-followers.md"
  "guide/modlist-world-feel.md"
  "guide/modlist-world-content.md"
  "guide/modlist-npcs.md"
  "guide/modlist-creatures.md"
  "guide/modlist-audio.md"
  "guide/modlist-survival-combat.md"
  "guide/modlist-lotd.md"
  "guide/modlist-curation.md"
  "guide/modlist-adult.md"
  "guide/modlist-voicing.md"
  "guide/modlist-performance.md"
  "guide/modlist-performance-strategy.md"
  "guide/modlist-performance-optimization.md"
  "guide/modlist-performance-tools.md"
  "guide/modlist-performance-patches.md"
  "guide/modlist-performance-testing.md"
  "guide/separators.md"
)

$outputDir = Join-Path $root "rendered"
$null = New-Item -ItemType Directory -Path $outputDir -Force
$outputPath = Join-Path $outputDir $OutputFile

$versionPath = Join-Path $root "VERSION"
$version = if (Test-Path $versionPath) { (Get-Content $versionPath -Raw).Trim() } else { "0.0.1-dev" }
$date = Get-Date -Format "yyyy-MM-dd"

$mergedLines = @()
$headings = @()
$anchorCount = @{}

foreach ($file in $files) {
  $path = Join-Path $root $file
  if (-not (Test-Path $path)) {
    Write-Warning "Skipping $file — not found"
    continue
  }

  $content = (Get-Content $path -Raw).Trim()

  # Extract h1 headings for the table of contents
  foreach ($line in $content -split "`r`n|`n") {
    if ($line -match '^#\s+(.+)$') {
      $text = $matches[1].Trim()
      $base = ($text -replace '\s*&\s*', '--' -replace '[^\w\s-]', '' -replace '\s+', '-' -replace '-{3,}', '-' -replace '^-|-$', '').ToLower()
      if ($anchorCount.ContainsKey($base)) {
        $anchorCount[$base]++
        $anchor = "$base-$($anchorCount[$base])"
      } else {
        $anchorCount[$base] = 1
        $anchor = $base
      }
      $headings += @{Text = $text; Anchor = $anchor}
    }
  }

  $mergedLines += ""
  $mergedLines += $content
  $mergedLines += ""
}

# Build front matter + title + TOC
$allLines = @()
$allLines += "---"
$allLines += "title: Elder Wilds"
$allLines += "version: $version"
$allLines += "date: $date"
$allLines += "generated-by: merge-modlist.ps1"
$allLines += "---"
$allLines += ""
$allLines += "> Version **$version** — $date"
$allLines += ""
$allLines += "## Table of Contents"
$allLines += ""

foreach ($h in $headings) {
  $allLines += "- [$($h.Text)](#$($h.Anchor))"
}

$allLines += ""
$allLines += $mergedLines

$allLines -join "`r`n" | Set-Content $outputPath -Encoding UTF8
Write-Host "Merged $($files.Count) files → $outputPath ($((Get-Item $outputPath).Length / 1KB -as [int]) KB)"
