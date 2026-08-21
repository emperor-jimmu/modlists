---
title: Load Order Guide
description: Correct load order for all mods across all waves
---

# Load Order Guide

<span class="wave-badge wave-0">All Waves</span>

## General Load Order Principles

For Witcher 3 Mod Manager, load order is typically handled automatically, but manual adjustment may be needed:

1. **Core/Utility mods** - mods that provide frameworks
2. **Graphics mods** - textures, lighting, environments
3. **UI mods** - HUD, inventory, map changes
4. **Gameplay mods** - combat, progression, mechanics
5. **Content mods** - quests, gear, NPCs
6. **Overhaul mods** - total conversion mods

## Load Order by Wave

### Wave 0 (Vanilla+QoL)

| Priority | Mod | Type | Notes |
|----------|-----|------|-------|
| 1 | Ultimate ASI Loader | Utility | Manual - game root directory (`dinput8.dll`) |
| 2 | Mod Limit Adjuster | Utility | Manual - game root directory (`.asi` + `.cfg`) |
| 3 | Script Merger | Utility | Tool, not a game mod - run after every batch |
| 4 | Community Patch - Shared Imports | Framework | First community patch - shared class imports |
| 5 | Community Patch - Menu Strings | Framework | Before Bootstrap (dependency) |
| 6 | Community Patch - Bootstrap and Utilities | Framework | Requires Shared Imports + Menu Strings |
| 7 | Brothers In Arms - Ultimate Edition | Bug Fixes | Large content/bugfix pack |
| 8 | Clever Main Menu (Redux) | UI | Own menu system - no Menu Organizer |

### Wave 1 Additions

| Priority | Mod | Type | Notes |
|----------|-----|------|-------|
| 9 | HD Reworked Project NextGen Edition | Textures | Base environment overhaul |
| 10 | Characters Reworked Project | Textures | Character faces/skin |
| 11 | HD Monsters Reworked | Textures | Monsters/beasts |
| 12 | HD Animals Reworked | Textures | Wildlife |
| 13 | Meadows Remastered | Grass | Standalone grass overhaul |
| 14 | UHD Oaks Redux | Vegetation | Oak tree bark/moss |
| 15 | New Clouds | Sky | Cloud textures |
| 16 | Promotional Atmosphere Lighting Mod | Lighting | Only lighting mod (classic lighting mods are broken on 4.04) |
| 17 | True Rain | Weather FX | Requires DX12 |
| 18 | Improved Sign Effects Next Gen | Sign FX | Script mod - Script Merger |
| 19 | No Dirty Lens Effect | FX | Lens-dirt removal |
| 20 | All Quest Objectives On Map | UI | Script mod - Script Merger |
| 21 | Upscaled UI - HUD Elements | UI | Do not stack with other HUD .redswf mods |
| 22 | Better Torches Next-Gen | QoL | Script mod - Script Merger |
| 23 | Tales of The Witcher - Cintra | Content | Standalone expansion world |
| 24 | A Witcher Can Hide Another | Content | Level 40+, starts in Novigrad |
| 25 | The Spider and The Wolf | Content | Level ~17, Velen |
| 26 | Impostor Community DLC | Content | Oxenfurt start |
| 27 | The Great Arena - Shadow of Lawlessness | Content | Skellige arena |

### Wave 2 Additions

| Priority | Mod | Type | Notes |
|----------|-----|------|-------|
| 28 | Stronger Monster Status Effects | Difficulty | Monster status effects |
| 29 | SCAAR - Smooth Combat And Animations Redux | Combat | Animation feel layer |
| 30 | Eternal Hunt | Overhaul | Combat/content overhaul - pairs with Spectre |
| 31 | Spectre | Overhaul | Economy/alchemy overhaul - highest priority (overrides BiA files) |
