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
        "Inter-Regular.woff2"      = "https://raw.githubusercontent.com/rsms/inter/master/docs/font-files/Inter-Regular.woff2"
        "Inter-Bold.woff2"         = "https://raw.githubusercontent.com/rsms/inter/master/docs/font-files/Inter-Bold.woff2"
        "Inter-Italic.woff2"       = "https://raw.githubusercontent.com/rsms/inter/master/docs/font-files/Inter-Italic.woff2"
        "JetBrainsMono-Regular.ttf" = "https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/fonts/ttf/JetBrainsMono-Regular.ttf"
        "JetBrainsMono-Bold.ttf"    = "https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/fonts/ttf/JetBrainsMono-Bold.ttf"
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
      foreach ($cell in $header) { $result.AppendLine("  [*$($cell -replace '#', '\#')*],") | Out-Null }
      foreach ($row in $rows) { foreach ($cell in $row) { $result.AppendLine("  [$($cell -replace '#', '\#')],") | Out-Null } }
      $result.AppendLine(")") | Out-Null
        } else {
            $result.AppendLine($line) | Out-Null
            $i++
        }
    }
    return $result.ToString()
}

function Convert-MermaidDiagrams {
    param([string]$Text, [string]$OutputDir, [ref]$Counter)

    $npx = if (Get-Command "npx.cmd" -ErrorAction SilentlyContinue) { "npx.cmd" }
           elseif (Get-Command "npx" -ErrorAction SilentlyContinue) { "npx" }
           else { Write-Warning "npx not found — skipping mermaid diagrams"; return $Text }

    $output = [System.Text.StringBuilder]::new()
    $lines = $Text -split "`r`n|`n"
    $i = 0
    while ($i -lt $lines.Length) {
        $line = $lines[$i]
        if ($line -match '^```mermaid\s*$') {
            $i++
            $mermaid = [System.Text.StringBuilder]::new()
            while ($i -lt $lines.Length -and $lines[$i] -notmatch '^```') {
                $null = $mermaid.AppendLine($lines[$i])
                $i++
            }
            if ($mermaid.Length -gt 0) {
                $num = $Counter.Value
                $pngFile = Join-Path $OutputDir "diagram-$num.png"
                if (-not (Test-Path $pngFile)) {
                    $mmdFile = Join-Path $OutputDir "temp-diagram-$num.mmd"
                    try {
                        $mermaid.ToString() | Set-Content $mmdFile -Encoding UTF8 -ErrorAction Stop
                        & $npx --yes @mermaid-js/mermaid-cli -i $mmdFile -o $pngFile -q 2>&1 | Out-Null
                        if ($LASTEXITCODE -ne 0) { Write-Warning "mermaid diagram $num failed (ec=$LASTEXITCODE)" }
                    } finally {
                        Remove-Item $mmdFile -ErrorAction SilentlyContinue
                    }
                }
            }
            $null = $output.AppendLine("#image(""./diagram-$num.png"", width: 70%)")
            $Counter.Value++
            $i++ # skip ```
        } else {
            $null = $output.AppendLine($line)
            $i++
        }
    }
    return $output.ToString()
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
    # Escape $, # (hex colors), and _ (typst treats $ as math, # as code, _ as italic)
    $text = $text.Replace('$', '\$')
    $text = $text -replace '(?<!\w)#([0-9a-fA-F])', '\#$1'
    $text = $text.Replace('_', '\_')
    $text = Convert-Table -Text $text
    # Escape bare < characters not part of labels
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
$diagramCounter = 0
$outputDir = Join-Path $root "rendered"
$null = New-Item -ItemType Directory -Path $outputDir -Force

foreach ($file in $files) {
  $path = Join-Path $root $file
  if (-not (Test-Path $path)) { Write-Warning "Skipping $file -- not found"; continue }
  Write-Host "Processing $file..."
  $content = (Get-Content $path -Raw).Trim()
  $content = Convert-MermaidDiagrams -Text $content -OutputDir $outputDir -Counter ([ref]$diagramCounter)
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

$a.Invoke("// Generated by build-modlist-pdf.ps1 -- do not edit")
$a.Invoke("")
$a.Invoke("#let ew-version = `"$version`"")
$a.Invoke("#let ew-date = `"$date`"")
$a.Invoke("")
$a.Invoke("// -- Page Setup --")
$a.Invoke('#set text(size: 11pt)')
$a.Invoke('#show link: set text(fill: rgb("#2563EB"))')
$a.Invoke('#set raw(tab-size: 4)')
$a.Invoke('// Inline raw (backtick code) uses body font and size, not monospaced')
$a.Invoke('#show raw.where(block: false): set text(font: "Inter", size: 11pt)')
$a.Invoke('#set page(')
$a.Invoke('  margin: (left: 2.5cm, right: 2cm, top: 2cm, bottom: 2.5cm),')
$a.Invoke('  footer: context align(center + bottom,')
$a.Invoke('    text(9pt, fill: luma(140),')
$a.Invoke('      counter(page).display() + " — " + counter(page).display()')
$a.Invoke('  )),')
$a.Invoke(')')
$a.Invoke("")
$a.Invoke("// -- Heading Styling --")
$a.Invoke('#show heading: it => {')
$a.Invoke("  set text(")
$a.Invoke('    size: if it.level == 1 { 24pt } else if it.level == 2 { 16pt } else if it.level == 3 { 12pt } else { 11.5pt },')
$a.Invoke('    fill: if it.level == 1 { rgb("#1e293b") } else if it.level == 2 { rgb("#334155") } else { rgb("#475569") },')
$a.Invoke("  )")
$a.Invoke('  if it.level == 1 { v(1.5cm) } else if it.level == 2 { pagebreak(weak: true); v(0.8cm) } else if it.level >= 3 { v(0.4cm) }')
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
$a.Invoke('#align(center, text(size: 15pt, fill: rgb("#475569"), "Version " + ew-version))')
$a.Invoke('#align(center, text(size: 11pt, fill: luma(120), "Generated " + ew-date))')
$a.Invoke('#pagebreak()')
$a.Invoke("")
$a.Invoke("// -- Table of Contents --")
$a.Invoke('#text(size: 17pt, weight: "bold", fill: rgb("#1e293b"), "Contents")')
$a.Invoke("#v(0.5cm)")
$a.Invoke("#outline(depth: 2)")
$a.Invoke("#pagebreak()")
$a.Invoke("")
$a.Invoke("// -- Content --")
$a.Invoke("")
foreach ($section in $allSections) { $a.Invoke($section) }

$typContent = $typLines -join "`r`n"

# -- Remove # from anchor references (typst parses #ref-with-hyphens as variable minus subtraction) --
$typContent = $typContent -replace '#([a-zA-Z][a-zA-Z0-9-]*-(?:[a-zA-Z0-9-]+))', '$1'

# -- Write .typ file --
$outputDir = Join-Path $root "rendered"
$null = New-Item -ItemType Directory -Path $outputDir -Force
$typFile = Join-Path $outputDir "elder-wilds.typ"
$typContent | Set-Content $typFile -Encoding UTF8
Write-Host "Generated $typFile ($((Get-Item $typFile).Length / 1KB -as [int]) KB)"

# -- Compile to PDF --
Write-Host "Compiling PDF..."
$pdfFile = Join-Path $outputDir "elder-wilds.pdf"
$stderr = & typst compile --root (Join-Path $root ".") $typFile $pdfFile 2>&1
$pdfFileObj = Get-Item $pdfFile -ErrorAction SilentlyContinue
if ($pdfFileObj -and $pdfFileObj.Length -gt 0) {
  Write-Host "PDF generated -> $pdfFile ($($pdfFileObj.Length / 1KB -as [int]) KB)" -ForegroundColor Green
} else {
  Write-Host "Typst compilation failed:" -ForegroundColor Red
  $stderr | ForEach-Object { Write-Host $_ -ForegroundColor Red }
  exit 1
}

# -- Cleanup --
Remove-Item (Join-Path $outputDir "elder-wilds.md") -ErrorAction SilentlyContinue
