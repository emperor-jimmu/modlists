param(
  [string]$ModlistDir = (Join-Path $PSScriptRoot ".." "modlist"),
  [string]$OutputDir = (Join-Path $PSScriptRoot ".." "content")
)

$categories = @(
  @{file="01-bugfixes.md"; heading="Bugfixes"}
  @{file="02-ui-hud.md"; heading="UI / HUD"}
  @{file="03-map-environment.md"; heading="Map & Environment"}
  @{file="04-portraits-models.md"; heading="Portraits & Models"}
  @{file="05-culture-religion.md"; heading="Culture & Religion"}
  @{file="06-events-decisions.md"; heading="Events & Decisions"}
  @{file="07-gameplay-mechanics.md"; heading="Gameplay Mechanics"}
  @{file="08-map-expansion.md"; heading="Map Expansion"}
  @{file="09-music-sound.md"; heading="Music & Sound"}
  @{file="10-fantasy-optional.md"; heading="Fantasy (Optional)"}
  @{file="12-performance-tools.md"; heading="Performance Tools"}
)

$adultCategories = @(
  @{file="11-adult.md"; heading="Adult"}
)

function Parse-ModData {
  param([string]$Entry)

  $lines = $Entry -split "`n"
  $data = @{}
  $inMeta = $true

  foreach ($line in $lines) {
    if ($line -match "^## (.+)$") { $data.Name = $matches[1] }
    elseif ($line -match "^-\s+\*\*Link:\*\*\s*(.+)$") { $data.Link = ($matches[1] -replace "^<|>$", "").Trim() }
    elseif ($line -match "^-\s+\*\*Link \(EPE\):\*\*\s*(.+)$") { $data.LinkEPE = ($matches[1] -replace "^<|>$", "").Trim() }
    elseif ($line -match "^-\s+\*\*Mod Version:\*\*\s*(.+)$") { $data.ModVersion = $matches[1].Trim() }
    elseif ($line -match "^-\s+\*\*CK3 Version:\*\*\s*(.+)$") { $data.CK3Version = $matches[1].Trim() }
    elseif ($line -match "^-\s+\*\*Updated:\*\*\s*(.+)$") { $data.Updated = $matches[1].Trim() }
    elseif ($line -match "^-\s+\*\*Load Order:\*\*\s*(.+)$") { $data.LoadOrder = $matches[1].Trim() }
    elseif ($line -match "^-\s+\*\*Essential:\*\*\s*(.+)$") { $data.Essential = $matches[1].Trim() }
    elseif ($line -match "^-\s+\*\*Performance:\*\*\s*(.+)$") { $data.Performance = $matches[1].Trim() }
    elseif ($line -match "^-\s+\*\*Dependencies:\*\*\s*(.+)$") { $data.Dependencies = $matches[1].Trim() }
    elseif ($line -match "^-\s+\*\*Incompatibilities:\*\*\s*(.+)$") { $data.Incompatibilities = $matches[1].Trim() }
    elseif ($line -match "^-\s+\*\*System/Mechanic Impact:\*\*\s*(.+)$") { $data.SystemImpact = $matches[1].Trim() }
    elseif ($line -match "^-\s+\*\*Installation Notes:\*\*\s*(.+)$") { $data.InstallNotes = $matches[1].Trim() }
    elseif ($line -match "^-\s+\*\*Configuration:\*\*\s*(.+)$") { $data.Configuration = $matches[1].Trim() }
    elseif ($line -match "^-\s+\*\*Required by:\*\*\s*(.+)$") { $data.RequiredBy = $matches[1].Trim() }
  }

  # Extract description: text between Configuration line (or Performance if no config) and "Gameplay Impact"
  if ($Entry -match "^- \*\*Configuration:\*\*\s*[^\n]*\n+(.+?)\*\*Gameplay Impact:\*\*") {
    $data.Description = $matches[1].Trim()
  } elseif ($Entry -match "^- \*\*System/Mechanic Impact:\*\*\s*[^\n]*\n+([\s\S]+?)\*\*Gameplay Impact:\*\*") {
    # Fallback: from System Impact to Gameplay Impact
  }
  if (-not $data.Description) {
    # Broader fallback: text between the last metadata line and "Gameplay Impact"
    if ($Entry -match "^- \*\*Configuration:\*\*\s*[^\n]*\n([\s\S]*?)\*\*Gameplay Impact:\*\*") {
      $data.Description = $matches[1].Trim()
    }
  }
  if ($Entry -match "\*\*Gameplay Impact:\*\*\s*(.+?)(?:\n---|\n##|$)") {
    $data.GameplayImpact = $matches[1].Trim()
  }

  return $data
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

    $mod = Parse-ModData -Entry $entry.Trim()
    if (-not $mod.Name -or $mod.Name -eq "") { continue }

    $link = $mod.Link

    $output += "#heading(level: 3)[#link(`"$link`")[$($mod.Name)]]`n"

    # Metadata bar
    $metaLine = "[*Load Order:* $($mod.LoadOrder) | *Essential:* $($mod.Essential) | *Performance:* $($mod.Performance)"
    if ($mod.Dependencies -and $mod.Dependencies -ne "None") {
      $metaLine += " | *Dependencies:* $($mod.Dependencies)"
    }
    $metaLine += "]"
    $output += "#block(below: 0.5em)[#text(size: 9pt, fill: rgb(""#666666""))[$metaLine]]`n"

    # System/Mechanic Impact
    if ($mod.SystemImpact) {
      $output += "*System Impact:* $($mod.SystemImpact)`n`n"
    }

    # Description
    if ($mod.Description) {
      $output += "$($mod.Description)`n`n"
    }

    # Gameplay Impact
    if ($mod.GameplayImpact) {
      $output += "*Gameplay Impact:* $($mod.GameplayImpact)`n`n"
    }

    # Installation Notes
    if ($mod.InstallNotes -and $mod.InstallNotes -ne "None") {
      $output += "*Installation:* $($mod.InstallNotes)`n`n"
    }

    # Incompatibilities
    if ($mod.Incompatibilities -and $mod.Incompatibilities -ne "None known") {
      $output += "*Incompatibilities:* $($mod.Incompatibilities)`n`n"
    }

    # Configuration
    if ($mod.Configuration -and $mod.Configuration -ne "None") {
      $output += "*Configuration:* $($mod.Configuration)`n`n"
    }

    # Required by (for framework mods)
    if ($mod.RequiredBy) {
      $output += "*Required by:* $($mod.RequiredBy)`n`n"
    }
  }

  return $output
}

# Generate core modlist chapter
$coreContent = @"
#heading(level: 1)[Core Modlist]

This chapter covers all non-adult mods organized by category. Each entry includes installation details and gameplay impact.

"@

foreach ($cat in $categories) {
  $path = Join-Path $ModlistDir $cat.file
  $coreContent += Generate-TypstCategory -FilePath $path -Heading $cat.heading
}

$coreOutputFile = Join-Path $OutputDir "02-modlist-core.typ"
$coreContent | Set-Content $coreOutputFile -Encoding UTF8
Write-Host "Written: $coreOutputFile"

# Generate adult modlist chapter
$adultContent = @"
#heading(level: 1)[Adult Mods]

This chapter covers adult-oriented mods. Content separated from the main guide.

"@

foreach ($cat in $adultCategories) {
  $path = Join-Path $ModlistDir $cat.file
  $adultContent += Generate-TypstCategory -FilePath $path -Heading $cat.heading
}

$adultOutputFile = Join-Path $OutputDir "03-modlist-adult.typ"
$adultContent | Set-Content $adultOutputFile -Encoding UTF8
Write-Host "Written: $adultOutputFile"
