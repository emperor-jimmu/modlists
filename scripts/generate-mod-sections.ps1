param(
    [string]$ModlistDir = (Join-Path $PSScriptRoot ".." "modlist"),
    [string]$OutputFile = (Join-Path $PSScriptRoot ".." "content" "02-modlist-core.typ"),
    [string]$AdultOutputFile = (Join-Path $PSScriptRoot ".." "content" "03-modlist-adult.typ")
)

Write-Host "Generating modlist Typst sections..."

$categories = @(
    @{file="01-bugfixes.md"; heading="Bugfixes"},
    @{file="02-ui-hud.md"; heading="UI / HUD"},
    @{file="03-map-environment.md"; heading="Map & Environment"},
    @{file="04-portraits-models.md"; heading="Portraits & Models"},
    @{file="05-culture-religion.md"; heading="Culture & Religion"},
    @{file="06-events-decisions.md"; heading="Events & Decisions"},
    @{file="07-gameplay-mechanics.md"; heading="Gameplay Mechanics"},
    @{file="08-map-expansion.md"; heading="Map Expansion"},
    @{file="09-music-sound.md"; heading="Music & Sound"},
    @{file="10-fantasy-optional.md"; heading="Fantasy (Optional)"},
    @{file="12-performance-tools.md"; heading="Performance Tools"}
)

$adultCategories = @(
    @{file="11-adult.md"; heading="Adult"}
)

function Parse-ModEntry {
    param([string]$Entry)

    $lines = $Entry -split "`n"
    $name = ""
    $link = ""
    $modVersion = ""
    $ck3Version = ""
    $updated = ""
    $loadOrder = ""
    $essential = ""
    $performance = ""
    $description = ""
    $gameplayImpact = ""
    $inDescription = $false
    $inImpact = $false

    foreach ($line in $lines) {
        $trimmed = $line.Trim()
        if ($trimmed -match "^## (.+)$") {
            $name = $matches[1]
        } elseif ($trimmed -match "^\*\*Link:\*\*\s*(.+)$") {
            $link = $matches[1]
        } elseif ($trimmed -match "^\*\*Mod Version:\*\*\s*(.+)$") {
            $modVersion = $matches[1]
        } elseif ($trimmed -match "^\*\*CK3 Version:\*\*\s*(.+)$") {
            $ck3Version = $matches[1]
        } elseif ($trimmed -match "^\*\*Updated:\*\*\s*(.+)$") {
            $updated = $matches[1]
        } elseif ($trimmed -match "^\*\*Load Order:\*\*\s*(.+)$") {
            $loadOrder = $matches[1] -replace '\|.*$', '' -replace '\*$', ''
            $loadOrder = $loadOrder.Trim()
        } elseif ($trimmed -match "^\*\*Essential:\*\*\s*(.+)$") {
            $essential = $matches[1] -replace '\|.*$', '' -replace '\*$', ''
            $essential = $essential.Trim()
        } elseif ($trimmed -match "^\*\*Performance:\*\*\s*(.+)$") {
            $performance = $matches[1]
        } elseif ($trimmed -match "^\*\*Gameplay Impact:\*\*") {
            $inImpact = $true
            $inDescription = $false
        } elseif ($trimmed -match "^\*\*") {
            $inDescription = $false
            $inImpact = $false
        } elseif ($trimmed -eq "" -or $trimmed -match "^- \*\*") {
            if (-not ($trimmed -match "^\*\*Link" -or $trimmed -match "^\*\*Mod" -or $trimmed -match "^\*\*CK3" -or $trimmed -match "^\*\*Updated" -or $trimmed -match "^\*\*Load" -or $trimmed -match "^\*\*Essential" -or $trimmed -match "^\*\*Performance" -or $trimmed -match "^\*\*Gameplay")) {
                $inDescription = $true
                $inImpact = $false
            }
        } else {
            if ($inImpact) {
                $gameplayImpact += $trimmed + " "
            } elseif ($inDescription) {
                $description += $trimmed + " "
            }
        }
    }

    return @{
        Name = $name
        Link = $link
        ModVersion = $modVersion
        CK3Version = $ck3Version
        Updated = $updated
        LoadOrder = $loadOrder
        Essential = $essential
        Performance = $performance
        Description = $description.Trim()
        GameplayImpact = $gameplayImpact.Trim()
    }
}

function Generate-TypstCategory {
    param([string]$FilePath, [string]$Heading)

    if (-not (Test-Path $FilePath)) {
        Write-Warning "File not found: $FilePath"
        return ""
    }

    $content = Get-Content $FilePath -Raw
    $entries = $content -split "`n---`n"

    $output = "#heading(level: 2)[$Heading]`n`n"

    foreach ($entry in $entries) {
        if ($entry.Trim() -eq "" -or $entry -match "^# ") { continue }

        $mod = Parse-ModEntry -Entry $entry.Trim()
        if ($mod.Name -eq "") { continue }

        $output += "#heading(level: 3)[$($mod.Name)]`n"
        $output += "#block[`n"
        $output += "  *Link:* $($mod.Link) \`n"
        if ($mod.ModVersion) { $output += "  *Mod Version:* $($mod.ModVersion) \`n" }
        if ($mod.CK3Version) { $output += "  *CK3 Version:* $($mod.CK3Version) \`n" }
        if ($mod.Updated) { $output += "  *Updated:* $($mod.Updated) \`n" }
        $output += "  *Load Order:* $($mod.LoadOrder) | *Essential:* $($mod.Essential) | *Performance:* $($mod.Performance)`n`n"
        if ($mod.Description) { $output += "  $($mod.Description)`n`n" }
        if ($mod.GameplayImpact) { $output += "  *Gameplay Impact:* $($mod.GameplayImpact)`n" }
        $output += "]`n`n"
    }

    return $output
}

$coreContent = @"
#heading(level: 1)[Core Modlist]

This chapter covers all non-adult mods organized by category. Each entry includes installation details and gameplay impact.

"@

foreach ($cat in $categories) {
    $path = Join-Path $ModlistDir $cat.file
    $coreContent += Generate-TypstCategory -FilePath $path -Heading $cat.heading
}

$coreContent | Set-Content $OutputFile
Write-Host "Written: $OutputFile"

$adultContent = @"
#heading(level: 1)[Adult Mods]

This chapter covers adult-oriented mods. Content separated from the main guide.

"@

foreach ($cat in $adultCategories) {
    $path = Join-Path $ModlistDir $cat.file
    $adultContent += Generate-TypstCategory -FilePath $path -Heading $cat.heading
}

$adultContent | Set-Content $AdultOutputFile
Write-Host "Written: $AdultOutputFile"

Write-Host "Modlist generation complete."
