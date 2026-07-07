param(
  [string]$OutputFile = "elder-wilds.md"
)

$scriptDir = Split-Path -Parent $PSCommandPath
$root = Split-Path -Parent $scriptDir
$files = @(
  "install.md"
  "modlist.md"
  "modlist-foundations.md"
  "modlist-graphics.md"
  "modlist-graphics-pgpatcher.md"
  "modlist-graphics-shaders.md"
  "modlist-graphics-textures.md"
  "modlist-graphics-lighting.md"
  "modlist-graphics-weather.md"
  "modlist-graphics-terrain.md"
  "modlist-graphics-characters.md"
  "modlist-graphics-lod.md"
  "modlist-ui.md"
  "modlist-animations.md"
  "modlist-third-person.md"
  "modlist-expanded-systems.md"
  "modlist-expanded-character.md"
  "modlist-expanded-magic.md"
  "modlist-expanded-survival.md"
  "modlist-expanded-crafting.md"
  "modlist-expanded-followers.md"
  "modlist-world-feel.md"
  "modlist-world-content.md"
  "modlist-npcs.md"
  "modlist-creatures.md"
  "modlist-audio.md"
  "modlist-survival-combat.md"
  "modlist-lotd.md"
  "modlist-curation.md"
  "modlist-adult.md"
  "modlist-voicing.md"
  "modlist-performance.md"
  "modlist-performance-strategy.md"
  "modlist-performance-optimization.md"
  "modlist-performance-tools.md"
  "modlist-performance-patches.md"
  "modlist-performance-testing.md"
  "separators.md"
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
      $base = ($text -replace '[^\w\s-]', '' -replace '\s+', '-' -replace '-+', '-' -replace '^-|-$', '').ToLower()
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
$allLines += "# Elder Wilds"
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
