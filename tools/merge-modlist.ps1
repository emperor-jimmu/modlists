param(
  [string]$OutputFile = "elder-wilds.md"
)

$root = Split-Path -Parent $PSCommandPath
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

$outputPath = Join-Path $root $OutputFile
$lines = @()

foreach ($file in $files) {
  $path = Join-Path $root $file
  if (-not (Test-Path $path)) {
    Write-Warning "Skipping $file — not found"
    continue
  }
  $lines += "---"
  $lines += "# FILE: $file"
  $lines += "---"
  $lines += ""
  $lines += (Get-Content $path -Raw).Trim()
  $lines += ""
}

$lines -join "`r`n" | Set-Content $outputPath -Encoding UTF8
Write-Host "Merged $($files.Count) files → $outputPath ($((Get-Item $outputPath).Length / 1KB -as [int]) KB)"
