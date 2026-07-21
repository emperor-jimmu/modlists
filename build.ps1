# build.ps1 — Beyond the Surface PDF Build Script
# Requires: typst 0.15, pandoc, PowerShell 7+

$ErrorActionPreference = "Stop"

Write-Host "=== Beyond the Surface PDF Build ===" -ForegroundColor Cyan

# --- Dependency checks ---
Write-Host "`nChecking dependencies..." -ForegroundColor Yellow

if (-not (Get-Command typst -ErrorAction SilentlyContinue)) {
    Write-Error "typst not found on PATH. Install Typst 0.15 from https://typst.app"
    exit 1
}
Write-Host "  [OK] typst found" -ForegroundColor Green

if (-not (Get-Command pandoc -ErrorAction SilentlyContinue)) {
    Write-Error "pandoc not found on PATH. Install pandoc from https://pandoc.org"
    exit 1
}
Write-Host "  [OK] pandoc found" -ForegroundColor Green

# --- Create directories ---
if (-not (Test-Path "output")) {
    New-Item -ItemType Directory -Path "output" | Out-Null
}
if (-not (Test-Path "template/generated")) {
    New-Item -ItemType Directory -Path "template/generated" -Force | Out-Null
}
if (-not (Test-Path "template/generated/wave-0")) {
    New-Item -ItemType Directory -Path "template/generated/wave-0" -Force | Out-Null
}
if (-not (Test-Path "template/generated/wave-1")) {
    New-Item -ItemType Directory -Path "template/generated/wave-1" -Force | Out-Null
}
if (-not (Test-Path "template/generated/wave-2")) {
    New-Item -ItemType Directory -Path "template/generated/wave-2" -Force | Out-Null
}

# --- Mod data generation ---
Write-Host "`nGenerating mod data files..." -ForegroundColor Cyan

# Check for powershell-yaml module
$hasYaml = Get-Module -ListAvailable -Name powershell-yaml
if (-not $hasYaml) {
    Write-Host "  Installing powershell-yaml module..." -ForegroundColor Yellow
    Install-Module -Name powershell-yaml -Force -Scope CurrentUser -ErrorAction SilentlyContinue
}

function Convert-ModDataToMarkdown {
    param([string]$YamlPath, [string]$OutputPath)

    if (-not (Test-Path $YamlPath)) {
        Write-Host "  [SKIP] $YamlPath not found" -ForegroundColor DarkYellow
        return
    }

    $yamlContent = Get-Content $YamlPath -Raw
    $data = ConvertFrom-Yaml $yamlContent

    $md = "# $($data.title)`n`n"
    $md += "**$($data.subtitle)**`n`n"

    if ($data.mods -and $data.mods.Count -gt 0) {
        foreach ($mod in $data.mods) {
            $md += "### [$($mod.name)]($($mod.url))`n`n"
            $md += "**Description:** $($mod.description)`n`n"

            if ($mod.dependencies -and $mod.dependencies.Count -gt 0) {
                $md += "**Dependencies:**`n"
                foreach ($dep in $mod.dependencies) {
                    $prefix = if ($dep.type -eq "hard") { "!" } else { "" }
                    $loadOrder = ""
                    if ($dep.load_order) {
                        $loadOrder = " #load-$($dep.load_order) $($dep.name)"
                    }
                    $md += "- $prefix$($dep.name)$loadOrder`n"
                }
                $md += "`n"
            }

            $md += "**System/Mechanic Impact:**`n"
            $impact = $mod.impact
            $md += "- [$($(if ($impact.new_items) { 'x' } else { ' ' }))] New items/equipment`n"
            $md += "- [$($(if ($impact.new_npcs) { 'x' } else { ' ' }))] New NPCs/enemies`n"
            $md += "- [$($(if ($impact.new_biomes) { 'x' } else { ' ' }))] New biomes`n"
            $md += "- [$($(if ($impact.new_bosses) { 'x' } else { ' ' }))] New bosses`n"
            $md += "- [$($(if ($impact.mechanic_changes) { 'x' } else { ' ' }))] Gameplay mechanic changes`n"
            $md += "- [$($(if ($impact.ui_qol) { 'x' } else { ' ' }))] UI/QoL only (no gameplay impact)`n`n"
        }
    } else {
        $md += "*No mods added yet. Fill in `data/wave-$($data.wave)-mods.yaml` with your mod selections.*`n`n"
        $md += "## Mod Entry Template`n`n"
        $md += "Use this format when adding mods to the YAML data file:`n`n"
        $md += '```yaml' + "`n"
        $md += '- name: "Mod Name"' + "`n"
        $md += '  url: "https://steamcommunity.com/sharedfiles/filedetails/?id=XXXXX"' + "`n"
        $md += '  description: "Brief description of what this mod does."' + "`n"
        $md += '  dependencies:' + "`n"
        $md += '    - name: "Dependency Mod"' + "`n"
        $md += '      type: "hard"  # or "soft"' + "`n"
        $md += '      load_order: "before"  # or "after"' + "`n"
        $md += '  impact:' + "`n"
        $md += '    new_items: false' + "`n"
        $md += '    new_npcs: false' + "`n"
        $md += '    new_biomes: false' + "`n"
        $md += '    new_bosses: false' + "`n"
        $md += '    mechanic_changes: false' + "`n"
        $md += '    ui_qol: true' + "`n"
        $md += '```' + "`n"
    }

    if ($data.load_order -and $data.load_order.Count -gt 0) {
        $md += "## Load Order for Wave $($data.wave)`n`n"
        $md += "Enable mods in this exact order:`n`n"
        $i = 1
        foreach ($modName in $data.load_order) {
            $md += "$i. $modName`n"
            $i++
        }
    }

    $md | Out-File -FilePath $OutputPath -Encoding UTF8
    Write-Host "  [OK] Generated $OutputPath" -ForegroundColor Green
}

function Convert-ConflictsToMarkdown {
    param([string]$YamlPath, [string]$OutputPath)

    if (-not (Test-Path $YamlPath)) {
        Write-Host "  [SKIP] $YamlPath not found" -ForegroundColor DarkYellow
        return
    }

    $data = ConvertFrom-Yaml (Get-Content $YamlPath -Raw)

    $md = "# Known Mod Conflicts`n`n"

    if ($data.conflicts -and $data.conflicts.Count -gt 0) {
        foreach ($conflict in $data.conflicts) {
            $md += "## Wave $($conflict.wave)`n`n"
            $md += "**Mods:** $($conflict.mods -join ', ')`n"
            $md += "**Symptom:** $($conflict.symptom)`n"
            $md += "**Workaround:** $($conflict.workaround)`n`n"
        }
    } else {
        $md += "*No conflicts recorded yet.*`n"
    }

    $md | Out-File -FilePath $OutputPath -Encoding UTF8
    Write-Host "  [OK] Generated $OutputPath" -ForegroundColor Green
}

function Convert-ModIdeasToMarkdown {
    param([string]$YamlPath, [string]$OutputPath)

    if (-not (Test-Path $YamlPath)) {
        Write-Host "  [SKIP] $YamlPath not found" -ForegroundColor DarkYellow
        return
    }

    $data = ConvertFrom-Yaml (Get-Content $YamlPath -Raw)

    $md = "# Mod Ideas`n`n"
    $md += "Mods that would complement the guide but don't exist for 1.4.5.`n`n"

    if ($data.ideas -and $data.ideas.Count -gt 0) {
        foreach ($idea in $data.ideas) {
            $md += "## $($idea.name)`n`n"
            $md += "**Description:** $($idea.description)`n"
            $md += "**Wave:** $($idea.wave)`n"
            $md += "**Priority:** $($idea.priority)`n"
            if ($idea.notes) {
                $md += "**Notes:** $($idea.notes)`n"
            }
            $md += "**Status:** $($idea.status)`n`n"
        }
    } else {
        $md += "*No ideas recorded yet.*`n"
    }

    $md | Out-File -FilePath $OutputPath -Encoding UTF8
    Write-Host "  [OK] Generated $OutputPath" -ForegroundColor Green
}

# Generate mod data files
Convert-ModDataToMarkdown -YamlPath "data/wave-0-mods.yaml" -OutputPath "guide/wave-0/modlist.md"
Convert-ModDataToMarkdown -YamlPath "data/wave-1-mods.yaml" -OutputPath "guide/wave-1/modlist.md"
Convert-ModDataToMarkdown -YamlPath "data/wave-2-mods.yaml" -OutputPath "guide/wave-2/modlist.md"
Convert-ConflictsToMarkdown -YamlPath "data/conflicts.yaml" -OutputPath "conflicts.md"
Convert-ModIdeasToMarkdown -YamlPath "data/mod-ideas.yaml" -OutputPath "mod-ideas.md"

# --- Markdown to Typst conversion ---
Write-Host "`nConverting Markdown to Typst..." -ForegroundColor Cyan

$mdFiles = @(
    @{ Source = "guide/setup.md"; Target = "template/generated/setup.typ" },
    @{ Source = "guide/wave-0/story.md"; Target = "template/generated/wave-0/story.typ" },
    @{ Source = "guide/wave-0/guide.md"; Target = "template/generated/wave-0/guide.typ" },
    @{ Source = "guide/wave-0/modlist.md"; Target = "template/generated/wave-0/modlist.typ" },
    @{ Source = "guide/wave-1/story.md"; Target = "template/generated/wave-1/story.typ" },
    @{ Source = "guide/wave-1/guide.md"; Target = "template/generated/wave-1/guide.typ" },
    @{ Source = "guide/wave-1/modlist.md"; Target = "template/generated/wave-1/modlist.typ" },
    @{ Source = "guide/wave-2/story.md"; Target = "template/generated/wave-2/story.typ" },
    @{ Source = "guide/wave-2/guide.md"; Target = "template/generated/wave-2/guide.typ" },
    @{ Source = "guide/wave-2/modlist.md"; Target = "template/generated/wave-2/modlist.typ" }
)

foreach ($file in $mdFiles) {
    if (-not (Test-Path $file.Source)) {
        Write-Host "  [SKIP] $($file.Source) not found" -ForegroundColor DarkYellow
        continue
    }
    Write-Host "  Converting $($file.Source) -> $($file.Target)..." -ForegroundColor Yellow
    & pandoc $file.Source -f markdown -t typst -o $file.Target
    if ($LASTEXITCODE -ne 0) {
        Write-Error "Failed to convert $($file.Source)"
        exit 1
    }
    Write-Host "  [OK] $($file.Target)" -ForegroundColor Green
}

# --- Copy assets to template directory ---
if (-not (Test-Path "template/assets")) {
    New-Item -ItemType Directory -Path "template/assets" -Force | Out-Null
}
if (Test-Path "assets/logo.png") {
    Copy-Item "assets/logo.png" "template/assets/logo.png" -Force
    Write-Host "  [OK] Copied logo.png to template/assets/" -ForegroundColor Green
}

# --- Compile PDF ---
Write-Host "`nCompiling PDF..." -ForegroundColor Cyan

& typst compile --font-path "assets/fonts" template/main.typ output/beyond-the-surface.pdf

if ($LASTEXITCODE -eq 0) {
    $fileSize = [math]::Round((Get-Item "output/beyond-the-surface.pdf").Length / 1MB, 2)
    Write-Host "`n=== SUCCESS ===" -ForegroundColor Green
    Write-Host "PDF generated: output/beyond-the-surface.pdf ($fileSize MB)" -ForegroundColor Cyan
} else {
    Write-Error "PDF compilation failed."
    exit 1
}
