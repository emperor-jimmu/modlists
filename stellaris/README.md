# Starbound Stories

A curated, beginner-friendly modlist and learning guide for **Stellaris 4.4.6 "Nomads"** (all DLC) on Windows.

Built with [MkDocs](https://www.mkdocs.org/) + [Material](https://squidfunk.github.io/mkdocs-material/) + [mkdocs-exporter](https://adrienbrignon.github.io/mkdocs-exporter/) for a browsable website and a production-quality PDF.

## Scope

- **~60-120 mods** — bugfixes, UI/HUD, graphics, gameplay, content, galaxy diversity, alien breeding
- **No cheating or overpower mods** — balanced, vanilla+
- **Beginner-first** — teaches Stellaris from the ground up

## Quick Start

```powershell
# Install dependencies
pip install mkdocs mkdocs-material mkdocs-exporter
playwright install chrome

# Build site + PDF
python -m mkdocs build

# Live preview
python -m mkdocs serve
```

The PDF is output at `site/pdf/guide.pdf` after build.

## Guide Sections

| Section | What You'll Learn |
|---------|-------------------|
| Getting Started | Stellaris 101 — galaxy setup, basics, economy, war |
| Modlist Setup | Mod Organizer 2 install, mod sourcing, version locking |
| The Modlist | Full curated modlist by category |
| Load Order | MO2 load order rules + visual separators |
| Starting a Game | Origins, galaxy settings, rules for a balanced run |
| Performance | Empirical FPS/load time benchmarks |
| Appendix | Glossary, troubleshooting, mod credits |

## Resolution Baseline

All screenshots and UI mod recommendations target **3840×2160 (4K)**. Web-scaled images max out at 1920px wide; the PDF retains full resolution.

## Versioning

- `VERSION` — guide version (bumped when the modlist changes significantly)
- `STELLARIS_VERSION` — target Stellaris version (currently **4.4.6 "Nomads"**)

When Stellaris updates, check the [Paradox Patches wiki](https://stellaris.paradoxwikis.com/Patches) for the latest version before adding mods.
