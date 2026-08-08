$scriptDir = Split-Path -Parent $PSCommandPath
$root = Split-Path -Parent $scriptDir

#region Helper functions

function Ensure-Fonts {
    <#
    .SYNOPSIS
        Downloads Inter and JetBrains Mono fonts to assets/fonts/ if missing.
    #>
    $fontDir = Join-Path (Join-Path $root "assets") "fonts"
    $null = New-Item -ItemType Directory -Path $fontDir -Force

    $fonts = @{
        "Inter.ttf"                = "https://github.com/google/fonts/raw/main/ofl/inter/Inter%5Bopsz%2Cwght%5D.ttf"
        "Inter-Italic.ttf"          = "https://github.com/google/fonts/raw/main/ofl/inter/Inter-Italic%5Bopsz%2Cwght%5D.ttf"
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

function Test-TypstInstalled {
    <#
    .SYNOPSIS
        Returns $true if typst is found on PATH, $false otherwise.
        Typical caller pattern: if (-not (Test-TypstInstalled)) { exit 1 }
    #>
    return [bool](Get-Command "typst" -ErrorAction SilentlyContinue)
}

#endregion

function Convert-GfmAlerts {
    param([string]$Text)
    $result = [System.Text.StringBuilder]::new()
    $lines = $Text -split "`r`n|`n"
    $i = 0
    $inCodeBlock = $false
    while ($i -lt $lines.Length) {
        $line = $lines[$i]
        if ($line -match '^\s*```') { $inCodeBlock = !$inCodeBlock }
        if ($inCodeBlock) { $result.AppendLine($line) | Out-Null; $i++; continue }
        if ($line -match '^>\s*\[!(NOTE|TIP|WARNING|CAUTION|IMPORTANT)\]\s*$') {
            $type = $matches[1].ToLower()
            $i++
            $bodyLines = [System.Collections.Generic.List[string]]::new()
            while ($i -lt $lines.Length -and $lines[$i] -match '^>\s?(.*)$') {
                $null = $bodyLines.Add($matches[1])
                $i++
            }
            $body = ($bodyLines | Where-Object { $_ -ne $null }) -join "`n"
            $result.AppendLine("#$type[")
            $result.AppendLine($body)
            $result.AppendLine("]")
        } else {
            $result.AppendLine($line) | Out-Null
            $i++
        }
    }
    return $result.ToString()
}

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
      $result.AppendLine('  inset: (x: 8pt, y: 5pt),') | Out-Null
      if ($header.Count -gt 0) {
        $result.AppendLine('  fill: (x, y) => if y == 0 { rgb("#1E293B") } else if calc.rem(y - 1, 2) == 0 { rgb("#F8FAFC") } else { none },') | Out-Null
        $result.AppendLine('  stroke: 0.5pt + rgb("#CBD5E1"),') | Out-Null
      } else {
        $result.AppendLine('  fill: (x, y) => if calc.rem(y, 2) == 0 { rgb("#F8FAFC") } else { none },') | Out-Null
        $result.AppendLine('  stroke: 0.5pt + rgb("#CBD5E1"),') | Out-Null
      }
      foreach ($cell in $header) { $result.AppendLine("  [*#text(fill: white)[$($cell)]*],") | Out-Null }
      if ($rows.Count -gt 0) { $result.AppendLine('  table.hline(stroke: 0.75pt + rgb("#94A3B8")),') | Out-Null }
      foreach ($row in $rows) { foreach ($cell in $row) { $result.AppendLine("  [$($cell)],") | Out-Null } }
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
    param([string]$Text, [string]$FileH1Anchor, [string]$FileKey, [hashtable]$AnchorMap)
    # 1. Strip HTML comments
    $text = $Text -replace '(?s)<!--.*?-->', ''
    # 1b. Convert GFM alerts to callout blocks
    $text = Convert-GfmAlerts -Text $text
    # 2. Convert markdown autolinks <url> to plain URLs (typst treats <...> as labels)
    $text = $text -replace '<(https?://[^>]+)>', '$1'
    # 3. Convert markdown italic *text* to typst #emph[text] (single *, before bold)
    $text = $text -replace '(?<!\*)\*(?!\*)(.+?)(?<!\*)\*(?!\*)', '#emph[$1]'
    # 4. Convert markdown bold **text** to typst bold *text*
    $text = $text -replace '\*\*(.+?)\*\*', '*$1*'
    $lines = $text -split "`r`n|`n"
    $usedLabels = @{}
    $headingOrder = @()
    $converted = [System.Text.StringBuilder]::new()
    foreach ($line in $lines) {
        if ($line -match '^(#{1,6})\s+(.+)$') {
            $level = $matches[1].Length
            $body = $matches[2] -replace '`([^`]+)`', '$1'  # strip inline backticks so separator names use heading font
            $converted.AppendLine(("=" * $level) + " $body") | Out-Null
            $rawAnchor = ($body -replace '\s*&\s*', '--' -replace '[^\w\s-]', '' -replace '\s+', '-' -replace '-{3,}', '-' -replace '^-|-$', '').ToLower()
            if ([string]::IsNullOrEmpty($rawAnchor)) { $rawAnchor = "section" }
            $label = if ($level -eq 1) { "$FileKey-$rawAnchor" } else { "$FileH1Anchor-$rawAnchor" }
            $final = $label; $suffix = 2
            while ($usedLabels.ContainsKey($final)) { $final = "$label-$suffix"; $suffix++ }
            $usedLabels[$final] = $true
            $converted.AppendLine("<$final>") | Out-Null
            $headingOrder += @{Text = $body; Anchor = $final; Level = $level}
        } else { $converted.AppendLine($line) | Out-Null }
    }
    $text = $converted.ToString() -replace '!\[([^\]]*)\]\(([^)]+)\)', '#image("$2")'
    # 4. Convert cross-file markdown links [text](file.md) to internal #link(<anchor>)[text]
    $text = [regex]::Replace($text, '\[(.+?)\]\(([^)]+)\)', {
        param($m)
        $url = $m.Groups[2].Value
        if ($url -match '^https?://') { return "#link(`"$url`")[$($m.Groups[1].Value -replace '^`(.+)`$', '$1')]" }
        if ($url -match '^#') { return $m.Value }
        $bare = ($url -replace '\.md$', '') -replace '^.*/', ''
        $anchor = $AnchorMap[$bare]
        if (-not $anchor) { $anchor = $AnchorMap[$url -replace '\.md$', ''] }
        if (-not $anchor) { $anchor = $AnchorMap[$url] }
        if ($anchor) { return "@$($anchor)" }
        return $m.Value
    })
    # Escape $, # (hex colors), and _ (typst treats $ as math, # as code, _ as italic)
    $text = $text.Replace('$', '\$')
    $text = $text -replace '(?<!\w)#([0-9a-fA-F]{6}|[0-9a-fA-F]{3})\b', '\#$1'
    $text = $text.Replace('_', '\_')
    $text = Convert-Table -Text $text
    # Escape bare < characters not part of labels
    $text = $text -replace '<(?![a-zA-Z][a-zA-Z0-9-]*>)', '\<'
    # Unescape underscores inside URL strings (Typst strings don't treat \_ as escape)
    $text = [regex]::Replace($text, '#(link|image)\("([^"]+)"\)', {
        param($m)
        $fn = $m.Groups[1].Value
        $clean = $m.Groups[2].Value -replace '\\_', '_'
        return "#${fn}(`"$clean`")"
    })
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
  "guide/modlist-design-philosophy.md",
  "guide/modlist-world-feel.md",
  "guide/modlist-world-content.md",
  "guide/modlist-npcs.md",
  "guide/modlist-creatures.md",
  "guide/modlist-weapons-armor.md",
  "guide/modlist-audio.md",
  "guide/modlist-survival-combat.md",
  "guide/modlist-lotd.md",
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

# -- Read version --
$versionPath = Join-Path $root "VERSION"
$version = if (Test-Path $versionPath) { (Get-Content $versionPath -Raw).Trim() } else { Write-Warning "VERSION file not found — using 0.0.1-dev"; "0.0.1-dev" }
$date = Get-Date -Format "yyyy-MM-dd"

# -- Pre-pass: build file → H1 anchor map --
$fileAnchorMap = @{}
foreach ($file in $files) {
  $path = Join-Path $root $file
  if (-not (Test-Path $path)) { continue }
  $rawContent = (Get-Content $path -Raw)
  if ($rawContent -match '(?m)^# (.+)$') {
    $h1Text = $matches[1].Trim()
    $rawAnchor = ($h1Text -replace '\s*&\s*', '--' -replace '[^\w\s-]', '' -replace '\s+', '-' -replace '-{3,}', '-' -replace '^-|-$', '').ToLower()
    if ([string]::IsNullOrEmpty($rawAnchor)) { $rawAnchor = "untitled" }
    $fileKey = $file -replace '^guide/', '' -replace '^modlist-', '' -replace '\.md$', '' -replace '/', '-'
    $anchor = "$fileKey-$rawAnchor"
    $basename = Split-Path -Leaf $file
    $fileAnchorMap[$basename] = $anchor
    $fileAnchorMap[$file] = $anchor
  }
}

# -- Process files --
$allSections = [System.Collections.Generic.List[string]]::new()
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
  $fileKey = $file -replace '^guide/', '' -replace '^modlist-', '' -replace '\.md$', '' -replace '/', '-'
  $result = Convert-MarkdownToTypst -Text $content -FileH1Anchor $fileH1Anchor -FileKey $fileKey -AnchorMap $fileAnchorMap
  $allSections.Add("// -- $file --")
  $allSections.Add($result.Content)
  $allSections.Add("")
}

# -- Build .typ file --
$relFontDir = "../assets/fonts"
$relCover = "../assets/logo.jpg"
$typLines = [System.Collections.Generic.List[string]]::new()
$a = { param($s) $typLines.Add($s) }.GetNewClosure()

$a.Invoke("// Generated by build-modlist-pdf.ps1 -- do not edit")
$a.Invoke("")
$a.Invoke("#let ew-version = `"$version`"")
$a.Invoke("#let ew-date = `"$date`"")
$a.Invoke("")
$a.Invoke("// -- Color Palette --")
$a.Invoke("#let clr-primary   = rgb(`"#0F172A`")")
$a.Invoke("#let clr-heading   = rgb(`"#1E293B`")")
$a.Invoke("#let clr-accent    = rgb(`"#3B82F6`")")
$a.Invoke("#let clr-accent-warm = rgb(`"#F59E0B`")")
$a.Invoke("#let clr-muted     = rgb(`"#64748B`")")
$a.Invoke("#let clr-border    = rgb(`"#CBD5E1`")")
$a.Invoke("#let clr-bg-code   = luma(248)")
$a.Invoke("#let clr-bg-stripe = rgb(`"#F8FAFC`")")
$a.Invoke("#let clr-bg-alt    = rgb(`"#F1F5F9`")")
$a.Invoke("")
$a.Invoke("// -- Fonts --")
$a.Invoke('#set text(font: ("Inter", "Arial"), size: 10.5pt, hyphenate: false)')
$a.Invoke('#set par(leading: 0.65em, justify: true)')
$a.Invoke('#show link: set text(font: ("Inter", "Arial"), size: 10.5pt, fill: clr-accent)')
$a.Invoke('#show ref: set text(font: ("Inter", "Arial"), size: 10.5pt, fill: clr-accent)')
$a.Invoke('#show raw.where(block: true): set text(font: ("JetBrains Mono", "Consolas", "Courier New"), size: 0.82em)')
$a.Invoke('#show raw.where(block: true): set block(fill: clr-bg-code, radius: 4pt, inset: (x: 12pt, y: 10pt))')
$a.Invoke('#show raw.where(block: false): it => {')
$a.Invoke('  box(')
$a.Invoke('    fill: luma(234),')
$a.Invoke('    radius: 2.5pt,')
$a.Invoke('    inset: (x: 3.5pt, y: 1.5pt),')
$a.Invoke('    outset: (y: 0.5pt),')
$a.Invoke('    text(font: ("JetBrains Mono", "Consolas", "Courier New"), size: 0.87em, fill: rgb("#334155"), it)')
$a.Invoke('  )')
$a.Invoke('}')
$a.Invoke("")
$a.Invoke("// -- Page Setup --")
$a.Invoke('#set page(')
$a.Invoke('  margin: (left: 2cm, right: 1.8cm, top: 2cm, bottom: 2cm),')
$a.Invoke('  header-ascent: 30%,')
$a.Invoke('  header: context [')
$a.Invoke('    #set text(size: 7.5pt, fill: clr-muted)')
$a.Invoke('    #align(right, [')
$a.Invoke(    '      #if counter(page).get().first() > 1 [')
$a.Invoke('        Elder Wilds  —  Skyrim AE 1.6.1170')
$a.Invoke('      ]')
$a.Invoke('    ])')
$a.Invoke('  ],')
$a.Invoke('  footer: context [')
$a.Invoke('    #set text(size: 8pt, fill: clr-muted)')
$a.Invoke('    #align(center)[')
$a.Invoke('      #counter(page).display()')
$a.Invoke('    ]')
$a.Invoke('  ],')
$a.Invoke(')')
$a.Invoke("")
$a.Invoke("// -- Heading Styling --")
$a.Invoke('#set heading(numbering: "1.")')
$a.Invoke('#show heading: it => {')
$a.Invoke("  set text(")
$a.Invoke('    weight: if it.level <= 2 { "bold" } else { "semibold" },')
$a.Invoke('    size: if it.level == 1 { 22pt } else if it.level == 2 { 14pt } else if it.level == 3 { 11.5pt } else { 10.5pt },')
$a.Invoke('    fill: if it.level == 1 { clr-primary } else if it.level == 2 { clr-heading } else { rgb("#475569") },')
$a.Invoke("  )")
$a.Invoke('  if it.level == 1 {')
$a.Invoke("    pagebreak()")
$a.Invoke('    v(0.4cm)')
$a.Invoke('    line(length: 100%, stroke: 1.5pt + clr-accent)')
$a.Invoke('    v(0.3cm)')
$a.Invoke("    it")
$a.Invoke('    v(0.3cm)')
$a.Invoke("  } else if it.level == 2 {")
$a.Invoke('    v(0.7cm)')
$a.Invoke("    it")
$a.Invoke('    v(0.15cm)')
$a.Invoke("  } else {")
$a.Invoke('    v(0.35cm)')
$a.Invoke("    it")
$a.Invoke('    v(0.1cm)')
$a.Invoke("  }")
$a.Invoke("}")
$a.Invoke("")
$a.Invoke("// -- Callout Boxes (GFM Alerts) --")
$a.Invoke('#let callout-base(fill, stroke-clr, icon, body) = block(')
$a.Invoke('  fill: fill,')
$a.Invoke('  stroke: (left: 4pt + stroke-clr, top: 0.5pt + stroke-clr, bottom: 0.5pt + stroke-clr, right: 0.5pt + stroke-clr),')
$a.Invoke('  inset: (left: 14pt, right: 10pt, top: 9pt, bottom: 9pt),')
$a.Invoke('  radius: 5pt,')
$a.Invoke('  width: 100%,')
$a.Invoke('  [')
$a.Invoke('    #text(size: 0.9em, weight: "bold", fill: stroke-clr)[#icon]')
$a.Invoke('    #v(5pt)')
$a.Invoke('    #set par(leading: 0.55em)')
$a.Invoke('    #body')
$a.Invoke('  ],')
$a.Invoke(')')
$a.Invoke('#let note(body)     = callout-base(rgb("#EFF6FF"), rgb("#3B82F6"), [NOTE], body)')
$a.Invoke('#let tip(body)      = callout-base(rgb("#ECFDF5"), rgb("#10B981"), [TIP], body)')
$a.Invoke('#let warning(body)  = callout-base(rgb("#FFFBEB"), rgb("#F59E0B"), [WARNING], body)')
$a.Invoke('#let caution(body)  = callout-base(rgb("#FEF2F2"), rgb("#EF4444"), [CAUTION], body)')
$a.Invoke('#let important(body)= callout-base(rgb("#F5F3FF"), rgb("#8B5CF6"), [IMPORTANT], body)')
$a.Invoke("")
$a.Invoke("// -- Typographic Enhancements --")
$a.Invoke('#show line: set line(stroke: 0.75pt + clr-border)')
$a.Invoke('#show quote: block.with(')
$a.Invoke('  fill: clr-bg-alt,')
$a.Invoke('  stroke: (left: 3pt + clr-accent),')
$a.Invoke('  inset: (left: 12pt, right: 8pt, top: 6pt, bottom: 6pt),')
$a.Invoke('  radius: 3pt,')
$a.Invoke(')')
$a.Invoke("#show figure.where(kind: image): it => {")
$a.Invoke("  align(center, it)")
$a.Invoke("}")
$a.Invoke("")

# -- Cover Page --
if ($relCover) {
  $a.Invoke('#align(center + horizon, image("' + $relCover + '", width: 85%))')
  $a.Invoke('#v(2cm)')
}
$a.Invoke('#align(center, text(size: 32pt, weight: "bold", fill: clr-primary, "Elder Wilds"))')
$a.Invoke('#align(center)[#v(0.4cm)#text(size: 13pt, fill: clr-muted, "Skyrim AE 1.6.1170 Modlist Design Guide")]')
$a.Invoke('#v(0.6cm)')
$a.Invoke('#align(center)[#line(length: 30%, stroke: 1pt + clr-border)]')
$a.Invoke('#v(0.6cm)')
$a.Invoke('// Pillars')
$a.Invoke('#align(center)[#set text(size: 8.5pt, fill: clr-muted)')
$a.Invoke("  #grid(")
$a.Invoke("    columns: 3,")
$a.Invoke("    column-gutter: 14pt,")
$a.Invoke("    row-gutter: 6pt,")
$a.Invoke('    [Modern UI \& Graphics], [Big, Dark, Awe-Inspiring World], [Lots of New Content],')
$a.Invoke('    [Modern Mechanics], [Third-Person Gamepad Parity], [Living the World],')
$a.Invoke("  )")
$a.Invoke(']')
$a.Invoke('#v(0.8cm)')
$a.Invoke('#align(center, text(size: 10pt, fill: clr-muted, "Version " + ew-version + "  ·  " + ew-date))')
$a.Invoke("#outline(depth: 2, indent: 1.2em)")
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
$stderr = & typst compile --root (Join-Path $root ".") --font-path $fontDir $typFile $pdfFile 2>&1
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
