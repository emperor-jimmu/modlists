param(
    [string]$OutputFile = "ets2-modlist-guide.pdf"
)

$ProjectRoot = $PSScriptRoot
$SourcesDir = Join-Path $ProjectRoot "sources"

function Find-ClosingBacktick {
    param([string]$Row, [int]$startPos, [int]$delimLen)
    $i = $startPos + $delimLen
    while ($i -le $Row.Length - $delimLen) {
        $ok = $true
        for ($j = 0; $j -lt $delimLen; $j++) { if ($Row[$i + $j] -ne '`') { $ok = $false; break } }
        if ($ok -and ($i + $delimLen -ge $Row.Length -or $Row[$i + $delimLen] -ne '`')) { return $i }
        $i++
    }
    return -1
}

function Split-TableRowCells {
    param([string]$Row)
    $cells = @(); $current = ""; $i = 0
    while ($i -lt $Row.Length) {
        $c = $Row[$i]
        if ($c -eq '`') {
            $delimLen = 0
            for ($j = $i; $j -lt $Row.Length -and $Row[$j] -eq '`'; $j++) { $delimLen++ }
            $closePos = Find-ClosingBacktick $Row $i $delimLen
            if ($closePos -ge 0) {
                # Valid code span: include everything from opening to closing backticks
                $spanLen = $closePos + $delimLen - $i
                $current += $Row.Substring($i, $spanLen)
                $i += $spanLen
            } else {
                # Unclosed code span: treat backtick as literal
                $current += $c; $i++
            }
        } elseif ($c -eq '|') {
            $cells += $current.Trim(); $current = ""; $i++
        } else { $current += $c; $i++ }
    }
    $cells += $current.Trim()
    if ($cells.Count -gt 0 -and $cells[0] -eq '') { $cells = $cells[1..($cells.Count-1)] }
    if ($cells.Count -gt 0 -and $cells[-1] -eq '') { $cells = $cells[0..($cells.Count-2)] }
    return ,$cells
}

function Convert-Inline {
    param([string]$Text)
    $t = $Text

    # Extract code spans (temporarily replace with placeholders)
    $codeMap = @{}
    $counter = 0
    $t = [regex]::Replace($t, '(?<!`)(`+)(.+?)\1(?!`)', {
        param($m)
        $delim = $m.Groups[1].Value
        $code = $m.Groups[2].Value
        $maxInner = 0; $cnt = 0
        foreach ($ch in $code.ToCharArray()) { if ($ch -eq '`') { $cnt++ } else { $maxInner = [Math]::Max($maxInner, $cnt); $cnt = 0 } }
        $maxInner = [Math]::Max($maxInner, $cnt)
        $newDelim = '`' * ($maxInner + 1)
        $key = "##CODE$counter##"
        $codeMap[$key] = $newDelim + $code + $newDelim
        $counter++
        return $key
    })

    # Images: ![alt](path)
    $t = [regex]::Replace($t, '!\[([^\]]*)\]\(([^)]+)\)', {
        param($m)
        $alt = $m.Groups[1].Value; $path = $m.Groups[2].Value
        $resolvedPath = [System.IO.Path]::GetFullPath((Join-Path $SourcesDir $path))
        if (Test-Path $resolvedPath) {
            if ($alt) { return '#image("' + $path + '", alt: "' + $alt + '")' }
            else { return '#image("' + $path + '")' }
        } else {
            if ($alt) { return '#text(fill: gray)[_Screenshot: ' + $alt + '_]' }
            else { return '#text(fill: gray)[_Screenshot_]' }
        }
    })

    # Links: [text](url) -> #link("url")[text]
    $t = [regex]::Replace($t, '\[([^\]]+)\]\(([^)]+)\)', {
        param($m)
        return '#link("' + $m.Groups[2].Value + '")[' + $m.Groups[1].Value + ']'
    })

    # Bold: **text** -> _text_
    $t = [regex]::Replace($t, '\*\*(.+?)\*\*', {
        param($m)
        return '_' + $m.Groups[1].Value + '_'
    })

    # Bare URLs: <url> -> #link("url")[url] (before generic < > escaping)
    $t = [regex]::Replace($t, '<(https?://[^>]+)>', {
        param($m)
        $url = $m.Groups[1].Value
        return '#link("' + $url + '")[' + $url + ']'
    })

    # Escape remaining Typst special chars
    $t = $t -replace '`', '\`'
    $t = $t -replace '<', '\<'
    $t = $t -replace '>', '\>'
    $t = $t -replace '\$', '\$'

    # Restore code spans
    foreach ($key in $codeMap.Keys) { $t = $t -replace [regex]::Escape($key), $codeMap[$key] }

    return $t
}

function Convert-MarkdownToTypst {
    param([string]$Content)

    $lines = $Content -split "`n"
    $output = @()
    $i = 0

    while ($i -lt $lines.Count) {
        $line = $lines[$i]

        # Table: contiguous lines starting with |
        if ($line -match '^\|') {
            $tableLines = @()
            while ($i -lt $lines.Count -and $lines[$i] -match '^\|') { $tableLines += $lines[$i]; $i++ }

            if ($tableLines.Count -ge 2) {
                $headerRow = Split-TableRowCells $tableLines[0]
                $dataStart = if ($tableLines[1] -match '^\|[\s\-:]+\|') { 2 } else { 1 }
                $dataRows = @()
                for ($r = $dataStart; $r -lt $tableLines.Count; $r++) {
                    $dataRows += ,(Split-TableRowCells $tableLines[$r])
                }

                $colCount = $headerRow.Count
                if ($colCount -eq 0) { continue }

                $output += "#table("
                $output += "  columns: (" + (($colCount..1 | ForEach-Object { "auto" }) -join ", ") + "),"
                foreach ($h in $headerRow) { $output += "  [" + (Convert-Inline $h) + "]," }
                foreach ($row in $dataRows) {
                    foreach ($cell in $row) { $output += "  [" + (Convert-Inline $cell) + "]," }
                }
                $output += ")"
            }
            continue
        }

        # Code block: pass through verbatim
        if ($line -match '^```') {
            $output += $line; $i++
            while ($i -lt $lines.Count -and $lines[$i] -notmatch '^```') { $output += $lines[$i]; $i++ }
            if ($i -lt $lines.Count) { $output += $lines[$i]; $i++ }
            continue
        }

        # Headings
        if ($line -match '^#### (.+)$') { $output += '==== ' + $Matches[1]; $i++; continue }
        if ($line -match '^### (.+)$') { $output += '=== ' + $Matches[1]; $i++; continue }
        if ($line -match '^## (.+)$') { $output += '== ' + $Matches[1]; $i++; continue }
        if ($line -match '^# (.+)$') { $output += '= ' + $Matches[1]; $i++; continue }

        # Horizontal rule
        if ($line -match '^---\s*$') { $output += '#line(length: 100%)'; $i++; continue }

        # Regular line
        $output += Convert-Inline $line; $i++
    }

    return ($output -join "`n")
}

Write-Host "Converting markdown sources to Typst..." -ForegroundColor Cyan

$sourceFiles = Get-ChildItem -Path $SourcesDir -Filter "*.md" | Sort-Object Name
foreach ($file in $sourceFiles) {
    $content = Get-Content $file.FullName -Raw
    $typContent = Convert-MarkdownToTypst $content
    $typFile = Join-Path $SourcesDir ($file.BaseName + ".typ")
    Set-Content -Path $typFile -Value $typContent -NoNewline
    Write-Host "  Converted: $($file.Name) -> $($file.BaseName).typ" -ForegroundColor Gray
}

Write-Host "Compiling ETS2 Modlist Guide..." -ForegroundColor Cyan
Write-Host "Output: $OutputFile" -ForegroundColor Cyan

typst compile "$ProjectRoot\build.typ" "$ProjectRoot\$OutputFile"

if ($LASTEXITCODE -eq 0) {
    Write-Host "PDF generated successfully: $OutputFile" -ForegroundColor Green
} else {
    Write-Host "Compilation failed with exit code: $LASTEXITCODE" -ForegroundColor Red
    exit $LASTEXITCODE
}
