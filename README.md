# ETS2 Modlist Guide

A curated, community-sourced modlist for **Euro Truck Simulator 2 (Game Version 1.60)**. Compiled for stability, performance, and visual fidelity.

## PDF Generation

Install [Typst](https://typst.app/), then:

```powershell
.\build.ps1
```

Output: `ets2-modlist-guide.pdf`

Requires DejaVu Sans or Liberation Sans fonts.

## Mod Sourcing Philosophy

- **Verified compatibility** with ETS2 1.60
- **Community favorites** from Steam Workshop, SCS Forum, and trusted mod sites
- **Performance-conscious** — each mod evaluated for frame-rate impact
- **Load-order tested** — sections arranged to match a working mod load order

## Quick Links

| Section | File |
|---------|------|
| Introduction | `sources/00-introduction.md` |
| Getting Started | `sources/01-getting-started.md` |
| Mod Manager | `sources/02-mod-manager.md` |
| Configuration | `sources/03-configuration.md` |
| Maps | `sources/04-maps.md` |
| Graphics | `sources/05-graphics.md` |
| Weather | `sources/06-weather.md` |
| Trucks | `sources/07-trucks.md` |
| Audio | `sources/08-audio.md` |
| Gameplay | `sources/09-gameplay.md` |
| Trailers & Cargo | `sources/10-trailers.md` |
| Load Order | `sources/11-load-order.md` |
| Installation | `sources/12-installation.md` |
| Performance | `sources/13-performance.md` |
| Troubleshooting | `sources/14-troubleshooting.md` |
| Missing Mods | `sources/15-missing-mods.md` |

## Contributing

1. Fork the repo
2. Edit or add source files in `sources/`
3. Verify the PDF compiles: `.\build.ps1`
4. Open a pull request

Issues and suggestions: [GitHub Issues](https://github.com/anomalyco/ets2-modlist/issues)

## Credits

- **Mod authors** across Steam Workshop, SCS Forum, and the ETS2 modding community
- **Mod sites**: Steam Workshop, SCS Software Forum, TruckyMods, GrimmsMods

Built with [Typst](https://typst.app/).
