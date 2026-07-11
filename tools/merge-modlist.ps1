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
        "Inter-Regular.ttf"         = "https://cdn.jsdelivr.net/gh/rsms/inter@master/docs/font-files/Inter-Regular.ttf"
        "Inter-Bold.ttf"            = "https://cdn.jsdelivr.net/gh/rsms/inter@master/docs/font-files/Inter-Bold.ttf"
        "Inter-Italic.ttf"          = "https://cdn.jsdelivr.net/gh/rsms/inter@master/docs/font-files/Inter-Italic.ttf"
        "JetBrainsMono-Regular.ttf" = "https://cdn.jsdelivr.net/gh/JetBrains/JetBrainsMono@master/fonts/ttf/JetBrainsMono-Regular.ttf"
        "JetBrainsMono-Bold.ttf"    = "https://cdn.jsdelivr.net/gh/JetBrains/JetBrainsMono@master/fonts/ttf/JetBrainsMono-Bold.ttf"
    }

    foreach ($name in $fonts.Keys) {
        $path = Join-Path $fontDir $name
        if (-not (Test-Path $path)) {
            Write-Host "Downloading $name..."
            try {
                Invoke-WebRequest -Uri $fonts[$name] -OutFile $path -UserAgent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) PowerShell/7" -ErrorAction Stop
            } catch {
                Write-Warning "Failed to download $name`: $($_.Exception.Message)"
            }
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

function Convert-Table {
    param([string]$Text)
    $result = [System.Text.StringBuilder]::new()
    $lines = $Text -split "`r`n|`n"
    $i = 0
    $inCodeBlock = $false
    while ($i -lt $lines.Length) {
        $line = $lines[$i]
        # Track code fence state
        if ($line -match '^\s*```') { $inCodeBlock = !$inCodeBlock }
        if ($inCodeBlock) { $result.AppendLine($line) | Out-Null; $i++; continue }
        if ($line -match '^\s*\|.+\|' -and ($i+1) -lt $lines.Length -and $lines[$i+1] -match '^\s*\|[\s:-]+\|') {
            $header = ($line -replace '^\s*\||\|\s*$', '') -split '\|' | ForEach-Object { $_.Trim() }
            $i += 2
            $rows = @()
            while ($i -lt $lines.Length -and $lines[$i] -match '^\s*\|') {
                $cells = ($lines[$i] -replace '^\s*\||\|\s*$', '') -split '\|' | ForEach-Object { $_.Trim() }
                $rows += ,$cells
                $i++
            }
      $colCount = [Math]::Max($header.Count, 1)
      $result.AppendLine("#table(") | Out-Null
      $result.AppendLine("  columns: $colCount,") | Out-Null
      if ($header.Count -gt 0) { $result.AppendLine("  fill: (luma(240), none),") | Out-Null }
      else { $result.AppendLine("  fill: none,") | Out-Null }
      foreach ($cell in $header) { $result.AppendLine("  [*$cell*],") | Out-Null }
      foreach ($row in $rows) { foreach ($cell in $row) { $result.AppendLine("  [$cell],") | Out-Null } }
      $result.AppendLine(")") | Out-Null
        } else {
            $result.AppendLine($line) | Out-Null
            $i++
        }
    }
    return $result.ToString()
}

function Convert-MarkdownToTypst {
    param([string]$Text, [string]$FileH1Anchor)
    # 1. Strip HTML comments
    $text = $Text -replace '(?s)<!--.*?-->', ''
    # 2. Convert markdown autolinks <url> to plain URLs (typst treats <...> as labels)
    $text = $text -replace '<(https?://[^>]+)>', '$1'
    $lines = $text -split "`r`n|`n"
    $usedLabels = @{}
    $headingOrder = @()
    $converted = [System.Text.StringBuilder]::new()
    foreach ($line in $lines) {
        if ($line -match '^(#{1,6})\s+(.+)$') {
            $level = $matches[1].Length
            $body = $matches[2]
            $converted.AppendLine(("=" * $level) + " $body") | Out-Null
            $rawAnchor = ($body -replace '\s*&\s*', '--' -replace '[^\w\s-]', '' -replace '\s+', '-' -replace '-{3,}', '-' -replace '^-|-$', '').ToLower()
            if ([string]::IsNullOrEmpty($rawAnchor)) { $rawAnchor = "section" }
            $label = if ($level -eq 1) { $rawAnchor } else { "$FileH1Anchor-$rawAnchor" }
            $final = $label; $suffix = 2
            while ($usedLabels.ContainsKey($final)) { $final = "$label-$suffix"; $suffix++ }
            $usedLabels[$final] = $true
            $converted.AppendLine("<$final>") | Out-Null
            $headingOrder += @{Text = $body; Anchor = $final; Level = $level}
        } else { $converted.AppendLine($line) | Out-Null }
    }
    $text = $converted.ToString() -replace '!\[([^\]]*)\]\(([^)]+)\)', '#image("$2")'
    $text = Convert-Table -Text $text
    # Escape bare < characters not part of labels (e.g., <50, NPC_<50)
    $text = $text -replace '<(?![a-zA-Z][a-zA-Z0-9-]*>)', '\<'
    return @{ Content = $text; Headings = $headingOrder }
}

$files = @(
  "guide/modlist.md",
  "guide/install.md",
  "guide/modlist-foundations.md",
  "guide/modlist-graphics.md",
  "guide/modlist-graphics-pgpatcher.md",
  "guide/modlist-graphics-shaders.md",
  "guide/modlist-graphics-textures.md",
  "guide/modlist-graphics-lighting.md",
  "guide/modlist-graphics-weather.md",
  "guide/modlist-graphics-terrain.md",
  "guide/modlist-graphics-characters.md",
  "guide/modlist-graphics-lod.md",
  "guide/modlist-ui.md",
  "guide/modlist-animations.md",
  "guide/modlist-third-person.md",
  "guide/modlist-expanded-systems.md",
  "guide/modlist-expanded-character.md",
  "guide/modlist-expanded-magic.md",
  "guide/modlist-expanded-survival.md",
  "guide/modlist-expanded-crafting.md",
  "guide/modlist-expanded-followers.md",
  "guide/modlist-world-feel.md",
  "guide/modlist-world-content.md",
  "guide/modlist-npcs.md",
  "guide/modlist-creatures.md",
  "guide/modlist-audio.md",
  "guide/modlist-survival-combat.md",
  "guide/modlist-lotd.md",
  "guide/modlist-design-philosophy.md",
  "guide/modlist-curation.md",
  "guide/modlist-adult.md",
  "guide/modlist-voicing.md",
  "guide/modlist-performance.md",
  "guide/modlist-performance-strategy.md",
  "guide/modlist-performance-optimization.md",
  "guide/modlist-performance-tools.md",
  "guide/modlist-performance-patches.md",
  "guide/modlist-performance-testing.md",
  "guide/separators.md"
)

# -- Prerequisites --
if (-not (Test-TypstInstalled)) {
  Write-Host "ERROR: Typst is not installed. Install: winget install Typst.Typst" -ForegroundColor Red
  exit 1
}
$fontDir = Ensure-Fonts
$coverPath = Resize-CoverImage

# -- Read version --
$versionPath = Join-Path $root "VERSION"
$version = if (Test-Path $versionPath) { (Get-Content $versionPath -Raw).Trim() } else { Write-Warning "VERSION file not found — using 0.0.1-dev"; "0.0.1-dev" }
$date = Get-Date -Format "yyyy-MM-dd"

# -- Process files --
$allSections = [System.Collections.Generic.List[string]]::new()
$fileAnchorMap = @{}

foreach ($file in $files) {
  $path = Join-Path $root $file
  if (-not (Test-Path $path)) { Write-Warning "Skipping $file -- not found"; continue }
  Write-Host "Processing $file..."
  $content = (Get-Content $path -Raw).Trim()
  $fileH1Anchor = if ($content -match '(?m)^# (.+)$') {
    ($matches[1].Trim() -replace '\s*&\s*', '--' -replace '[^\w\s-]', '' -replace '\s+', '-' -replace '-{3,}', '-' -replace '^-|-$', '').ToLower()
  } else { "untitled" }
  $result = Convert-MarkdownToTypst -Text $content -FileH1Anchor $fileH1Anchor
  $basename = Split-Path -Leaf $file
  $fileAnchorMap[$basename] = $fileH1Anchor
  $fileAnchorMap[$file] = $fileH1Anchor
  $allSections.Add("// -- $file --")
  $allSections.Add($result.Content)
  $allSections.Add("")
}

# -- Build .typ file --
$relFontDir = "../assets/fonts"
$relCover = if ($coverPath) { "../assets/cover-resized.png" } else { $null }
$typLines = [System.Collections.Generic.List[string]]::new()
$a = { param($s) $typLines.Add($s) }.GetNewClosure()

$a.Invoke("// Generated by merge-modlist.ps1 -- do not edit")
$a.Invoke("")
$a.Invoke("#let ew-version = `"$version`"")
$a.Invoke("#let ew-date = `"$date`"")
$a.Invoke("")
$a.Invoke("// -- Fonts --")
$a.Invoke("#let ew-font-inter-path = `"$relFontDir/Inter-Regular.ttf`"")
$a.Invoke("#let ew-font-jbmono-path = `"$relFontDir/JetBrainsMono-Regular.ttf`"")
$a.Invoke("")
$a.Invoke("// -- Page Setup --")
$a.Invoke('#set text(font: ("Inter", ew-font-inter-path), size: 10pt)')
$a.Invoke('#set link(color: rgb("#2563EB"))')
$a.Invoke('#set raw(font: ("JetBrains Mono", ew-font-jbmono-path), theme: "one-dark")')
$a.Invoke('#set heading(numbering: "1.1")')
$a.Invoke('#set page(')
$a.Invoke('  margin: (left: 2.5cm, right: 2cm, top: 2cm, bottom: 2cm),')
$a.Invoke('  footer: context align(center + bottom, text(8pt, fill: luma(140),')
$a.Invoke('    counter(page).display() + " — " + counter(page).display(numbering: "1")')
$a.Invoke('  ))')
$a.Invoke(')')
$a.Invoke("")
$a.Invoke("// -- Heading Styling --")
$a.Invoke('#show heading.where(level: 1): set heading(numbering: none)')
$a.Invoke('#show heading: it => {')
$a.Invoke("  set text(")
$a.Invoke('    size: if it.level == 1 { 22pt } else if it.level == 2 { 14pt } else if it.level == 3 { 11pt } else { 10.5pt },')
$a.Invoke('    fill: if it.level == 1 { rgb("#1e293b") } else if it.level == 2 { rgb("#334155") } else { rgb("#475569") },')
$a.Invoke("  )")
$a.Invoke('  if it.level == 1 { v(1.5cm) } else if it.level == 2 { v(0.8cm) } else if it.level >= 3 { v(0.4cm) }')
$a.Invoke("  it")
$a.Invoke('  if it.level == 1 { v(0.5cm) }')
$a.Invoke("}")
$a.Invoke("")

# -- Cover Page --
if ($relCover) {
  $a.Invoke('#align(center + horizon, image("' + $relCover + '", width: 60%))')
  $a.Invoke('#v(3cm)')
}
$a.Invoke('#align(center, text(size: 28pt, weight: "bold", fill: rgb("#0f172a"), "Elder Wilds"))')
$a.Invoke('#align(center, text(size: 14pt, fill: rgb("#475569"), "Version " + ew-version))')
$a.Invoke('#align(center, text(size: 10pt, fill: luma(120), "Generated " + ew-date))')
$a.Invoke('#pagebreak()')
$a.Invoke("")
$a.Invoke("// -- Table of Contents --")
$a.Invoke('#text(size: 16pt, weight: "bold", fill: rgb("#1e293b"), "Contents")')
$a.Invoke("#v(0.5cm)")
$a.Invoke("#outline(depth: 2)")
$a.Invoke("#pagebreak()")
$a.Invoke("")
$a.Invoke("// -- Content --")
$a.Invoke("")
foreach ($section in $allSections) { $a.Invoke($section) }

$typContent = $typLines -join "`r`n"

# -- Resolve cross-file links: ](file.md#anchor) to ](#fileh1anchor-anchor) --
foreach ($kv in $fileAnchorMap.GetEnumerator()) {
  $escaped = [regex]::Escape($kv.Key)
  $anchor = $kv.Value
  $typContent = $typContent -replace "(?<=\]\()${escaped}#([^)]+)(?=\))", "#${anchor}-`$1"
  $typContent = $typContent -replace "(?<=\]\()${escaped}(?=\))", "#${anchor}"
}

# -- Write .typ file --
$outputDir = Join-Path $root "rendered"
$null = New-Item -ItemType Directory -Path $outputDir -Force
$typFile = Join-Path $outputDir "elder-wilds.typ"
$typContent | Set-Content $typFile -Encoding UTF8
Write-Host "Generated $typFile ($((Get-Item $typFile).Length / 1KB -as [int]) KB)"

# -- Compile to PDF --
Write-Host "Compiling PDF..."
$pdfFile = Join-Path $outputDir "elder-wilds.pdf"
$compiled = & typst compile $typFile $pdfFile 2>&1
if ($LASTEXITCODE -eq 0) {
  Write-Host "PDF generated -> $pdfFile ($((Get-Item $pdfFile).Length / 1KB -as [int]) KB)" -ForegroundColor Green
} else {
  Write-Host "Typst compilation failed:" -ForegroundColor Red
  $compiled | ForEach-Object { Write-Host $_ -ForegroundColor Red }
  exit 1
}

# -- Cleanup --
Remove-Item (Join-Path $outputDir "elder-wilds.md") -ErrorAction SilentlyContinue
