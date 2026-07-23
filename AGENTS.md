# AGENTS.md

## Project: The Long Ascent — KSP Modlist & Guide

A curated 4-wave modlist and game guide for Kerbal Space Program 1.12.5, distributed as a Typst-generated PDF with CKAN metapackages for one-click installation.

### Key Rules

- **KSP Version:** 1.12.5 (Jan 11, 2023). All mods must be compatible with 1.12.x minimum.
- **Wave Structure:** 4 cumulative waves. Each subsequent wave includes the prior.
  - Wave 0: Core UI/HUD/QoL & bugfix mods. No gameplay changes. Focused quickstart guide.
  - Wave 0.5: Advanced planning tools, VAB/SPH enhancements, mission management mods.
  - Wave 1: Graphics, parts packs, light mechanics. Comprehensive tutorial.
  - Wave 2: Life support, colonization, interstellar, realism. Strategy guide.
- **Wave Assignment Flowchart:**
  1. Does it change any game mechanic? No → Wave 0. Yes → continue.
  2. Does it add failure conditions, resource chains, or alter physics? Yes → Wave 2.
  3. Does it modify the VAB/SPH, add planning tools, or enhance mission management without altering game mechanics? Yes → Wave 0.5.
  4. Otherwise → Wave 1.
- **Mod Rules:** No conflicts within wave, no redundant mods, no cheating/OP mods, no NSFW/porn mods.
- **CKAN:** All mods must have valid CKAN identifiers. One `.ckan` file per wave, plus a combined file. All `.ckan` files must include `"kind": "metapackage"`.
- **Mod URLs — NEVER fabricate.** Every mod entry's `url` field must link to a real, verified project page (KSP forum thread, GitHub repo, or SpaceDock page). Source URLs from CKAN NetKAN metadata (`https://raw.githubusercontent.com/KSP-CKAN/NetKAN/master/NetKAN/<id>.netkan`) — check `resources.homepage`, `$kref` for GitHub/SpaceDock references, or search the KSP forum directly. Never guess topic IDs. Forum URLs require the full title slug: `/topic/<id>-<slug>/` — bare `/topic/<id>/` returns 404.
- **DLCs:** Breaking Ground and Making History recommended but not required. DLC-dependent mods go in optional subsections.

### File Roles

| File | Purpose |
|------|---------|
| `guide/*.typ` | Authoritative guide content in Typst markup. Edit these, not the PDF. |
| `template/main.typ` | Master Typst template. Includes all guide files. |
| `template/lib.typ` | Helper functions: wave title pages, mod entries, callout boxes, styling. |
| `scripts/build.bat` | Windows build. Calls `typst compile`. |
| `scripts/build.sh` | Linux/macOS build. Calls `typst compile`. |
| `the-long-ascent.ckan` | Combined CKAN metapackage (all 4 waves). |
| `the-long-ascent-wave-0.ckan` | Wave 0 CKAN metapackage. |
| `the-long-ascent-wave-05.ckan` | Wave 0.5 CKAN metapackage. |
| `the-long-ascent-wave-1.ckan` | Wave 1 CKAN metapackage. |
| `the-long-ascent-wave-2.ckan` | Wave 2 CKAN metapackage. |
| `mod-ideas.md` | Personal mod dev backlog. NOT included in PDF. |
| `output/the-long-ascent.pdf` | Generated output. Do not edit directly. |

### Mod Entry Format (in .typ files)

```typst
#mod-entry(
  name: [Mod Name],
  ckan_id: "CKAN-Identifier",
  url: "https://forum.kerbalspaceprogram.com/topic/<id>-<slug>/",
  description: [Brief description of the mod.],
  dependencies: (ModA, ModB, ModC),
  impact_types: (UI, Parts, Graphics, Mechanics, Gameplay),
  impact_description: [What systems this mod affects and how.],
  conflicts: [Known conflicts with other mods in this modlist.],
  version_pin: [Compatible with KSP 1.12.x. No version pin needed.],
)
```

### Build & Test

- **Build PDF:** Run `scripts/build.bat` (Windows) or `bash scripts/build.sh` (Linux/macOS)
- **Prerequisites:** Typst 0.13+ on PATH, Python 3 for font download script
