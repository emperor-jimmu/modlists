# CK3 Modlist Performance Benchmark Runner
#
# This script provides a standardized methodology for measuring FPS impact
# of different mod categories. Use CapFrameX or MSI Afterburner for measurement.
#
# Methodology:
# 1. Launch CK3 with Vortex profiles (one per category + baseline)
# 2. Load save at 1066 as Dublin (Ireland), Speed 5
# 3. Run for 10 minutes, record FPS (min/avg/max)
# 4. Record results in data/performance.yaml
#
# Usage:
#   .\scripts\benchmark-runner.ps1
#
# Prerequisites:
# - CapFrameX installed (https://www.capframex.com/)
# - Vortex profiles set up for each category
# - A consistent save file at 1066 start

Write-Host "=== CK3 Modlist Benchmark Runner ==="
Write-Host ""
Write-Host "This script guides you through performance testing."
Write-Host "Manual steps required:"
Write-Host ""
Write-Host "1. Create Vortex profiles for each category:"
Write-Host "   - baseline (no mods)"
Write-Host "   - bugfixes"
Write-Host "   - ui-hud"
Write-Host "   - map-environment"
Write-Host "   - portraits-models"
Write-Host "   - culture-religion"
Write-Host "   - events-decisions"
Write-Host "   - gameplay-mechanics"
Write-Host "   - map-expansion"
Write-Host "   - music-sound"
Write-Host "   - fantasy-optional"
Write-Host "   - adult"
Write-Host "   - performance-tools"
Write-Host "   - full-modlist"
Write-Host ""
Write-Host "2. For each profile:"
Write-Host "   a) Switch Vortex to that profile"
Write-Host "   b) Launch CK3"
Write-Host "   c) Load the benchmark save"
Write-Host "   d) Run CapFrameX recording"
Write-Host "   e) Play at Speed 5 for exactly 10 minutes"
Write-Host "   f) Record min/avg/max FPS"
Write-Host ""
Write-Host "3. Update data/performance.yaml with results"

$projectRoot = Split-Path $PSScriptRoot -Parent
$perfFile = Join-Path $projectRoot "data" "performance.yaml"

Write-Host ""
Write-Host "Performance data file: $perfFile"
Write-Host ""
Write-Host "Template filled at: $perfFile"
Write-Host "Edit it with your FPS results after testing each category."
