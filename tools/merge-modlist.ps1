param(
  [string]$OutputFile = "elder-wilds.md"
)

$scriptDir = Split-Path -Parent $PSCommandPath
$root = Split-Path -Parent $scriptDir

#region Helper functions

function Ensure-Fonts {
    <#
    .SYNOPSIS
        Downloads Inter and JetBrains Mono fonts to assets/fonts/ if missing.
    #>
    $fontDir = Join-Path $root "assets" "fonts"
    $null = New-Item -ItemType Directory -Path $fontDir -Force

    $fonts = @{
        "Inter-Regular.ttf"         = "https://github.com/rsms/inter/raw/master/docs/font-files/Inter-Regular.ttf"
        "Inter-Bold.ttf"            = "https://github.com/rsms/inter/raw/master/docs/font-files/Inter-Bold.ttf"
        "Inter-Italic.ttf"          = "https://github.com/rsms/inter/raw/master/docs/font-files/Inter-Italic.ttf"
        "JetBrainsMono-Regular.ttf" = "https://github.com/JetBrains/JetBrainsMono/raw/master/fonts/ttf/JetBrainsMono-Regular.ttf"
        "JetBrainsMono-Bold.ttf"    = "https://github.com/JetBrains/JetBrainsMono/raw/master/fonts/ttf/JetBrainsMono-Bold.ttf"
    }

    foreach ($name in $fonts.Keys) {
        $path = Join-Path $fontDir $name
        if (-not (Test-Path $path)) {
            Write-Host "Downloading $name..."
            Invoke-WebRequest -Uri $fonts[$name] -OutFile $path
        }
    }

    return $fontDir
}

function Resize-CoverImage {
    <#
    .SYNOPSIS
        Resizes the cover image to 1200px wide, maintaining aspect ratio.
    #>
    $source = Join-Path $root "assets" "Gemini_Generated_Image_ivqvcgivqvcgivqv.png"
    $target = Join-Path $root "assets" "cover-resized.png"

    if (-not (Test-Path $source)) { return $null }
    if (Test-Path $target) { return $target }

    Add-Type -AssemblyName System.Drawing
    $img = $null; $resized = $null; $graphics = $null
    try {
        $img = [System.Drawing.Image]::FromFile($source)
        $newWidth = 1200
        $ratio = $newWidth / $img.Width
        $newHeight = [int]($img.Height * $ratio)

        $resized = New-Object System.Drawing.Bitmap($newWidth, $newHeight)
        $graphics = [System.Drawing.Graphics]::FromImage($resized)
        $graphics.InterpolationMode = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
        $graphics.DrawImage($img, 0, 0, $newWidth, $newHeight)

        $resized.Save($target, [System.Drawing.Imaging.ImageFormat]::Png)
        return $target
    } finally {
        if ($graphics) { $graphics.Dispose() }
        if ($resized) { $resized.Dispose() }
        if ($img) { $img.Dispose() }
    }
}

function Test-TypstInstalled {
    <#
    .SYNOPSIS
        Returns $true if typst is found on PATH, $false otherwise.
        Typical caller pattern: if (-not (Test-TypstInstalled)) { exit 1 }
    #>
    return [bool](Get-Command "typst" -ErrorAction SilentlyContinue)
}

#endregion

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
  "guide/modlist-design-philosophy.md"
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
$fileAnchorMap = @{}

foreach ($file in $files) {
  $path = Join-Path $root $file
  if (-not (Test-Path $path)) {
    Write-Warning "Skipping $file — not found"
    continue
  }

  $content = (Get-Content $path -Raw).Trim()

  # Extract h1 headings for the table of contents
  $firstH1Anchor = $null
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
      if (-not $firstH1Anchor) { $firstH1Anchor = $anchor }
    }
  }

  # Map file paths to H1 anchors for cross-file link conversion
  if ($firstH1Anchor) {
    $basename = Split-Path -Leaf $file
    $fileAnchorMap[$basename] = $firstH1Anchor
    $fileAnchorMap[$file] = $firstH1Anchor
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

$mergedText = $allLines -join "`r`n"

# Convert cross-file markdown links to internal anchor links
foreach ($kv in $fileAnchorMap.GetEnumerator()) {
  $escaped = [regex]::Escape($kv.Key)
  $anchor = $kv.Value
  $mergedText = $mergedText -replace "(?<=\]\()${escaped}#([^)]+)(?=\))", "#${anchor}-`$1"
  $mergedText = $mergedText -replace "(?<=\]\()${escaped}(?=\))", "#${anchor}"
}

$mergedText | Set-Content $outputPath -Encoding UTF8
Write-Host "Merged $($files.Count) files → $outputPath ($((Get-Item $outputPath).Length / 1KB -as [int]) KB)"
