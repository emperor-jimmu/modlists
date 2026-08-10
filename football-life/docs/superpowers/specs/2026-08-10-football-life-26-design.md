# SP Football Life 26 — "Apex Life 26" Design Spec

**Date:** 2026-08-10
**Status:** Approved
**Game:** SP Football Life 2026 (v2.2), standalone, built on eFootball PES 2021 engine by Football4Life

## 1. Overview

A two-part guide for expert modders who want to install and enhance SP Football Life 2026, then embark on a theatrical manager career with self-imposed roleplay constraints. The guide teaches the game along the way — controls, tactics, scouting, transfers, training — while layering a curated mod stack that brings FL26 to near-VirtuaRED visual and audio quality.

### 1.1 Why Football Life 26

- **Standalone** — no PES 2021 purchase required (the game was delisted from Steam in 2021)
- **Free** — no Patreon paywall for the base game
- **Most stable** PES 2021 experience on modern hardware — pre-configured, single-installer, no legacy folder conflicts
- **Active mod ecosystem** via Sider — most PES 2021 mods are compatible; FL26-specific packs exist for faces, stadiums, and gameplay
- **FL27** is expected late 2026; this guide targets FL26 v2.2 as the current stable baseline

### 1.2 Competitors Considered & Rejected

| Option          | Verdict  | Reason                                                                                                   |
|-----------------|----------|----------------------------------------------------------------------------------------------------------|
| **VirtuaRED**   | Rejected | Requires delisted PES 2021 (Steam). 100GB+. Complex multi-step install with legacy folder cleanup risks. |
| **Dream Patch** | Rejected | Paid (Patreon). South American focus. Same PES 2021 requirement problem.                                 |

## 2. Audience

Expert modders comfortable with file systems, text-editor config (`sider.ini`), zip/archive extraction, and mod load-order reasoning. The guide is technical — no hand-holding on basic file operations — but explains every Sider module, directory convention, and compatibility constraint. The game itself is taught from scratch (controls, systems, career mode logic) since the reader may be new to PES/FL.

## 3. Deliverables

| File                | Purpose                                                                            |
|---------------------|------------------------------------------------------------------------------------|
| `template.typ`      | Typst master template (cover, TOC, page setup, fonts).                             |
| `guide/*.typ`       | Guide sections imported by the template (installation, sider, lets-play).          |
| `output/*.pdf`      | Generated PDF.                                                                     |
| `STATUS.md`         | Decision register — why each mod, rejected alternatives, compatibility notes.      |
| `mod-ideas.md`      | Future candidates, unverified mods, FL27 migration notes.                          |
| `conflicts-mods.md` | Known incompatibilities between mods.                                              |
| `AGENTS.md`         | Project-specific agent instructions.                                               |
| `build.bat`         | One-click PDF build (`typst compile template.typ output/apex-life-26.pdf`). |

### 3.1 PDF Pipeline

Typst (matching Kenshi, Factorio, X-COM 2, Monster Hunter Rise conventions). Sections authored as `.typ` files in `guide/`, imported by `template.typ`. Target: clean single-file PDF with cover, table of contents, and numbered sections. Fonts: pending selection during implementation.

## 4. Part 1 — Installation & Mod Stack

### 4.1 Base Game

- Download FL26 base + latest update (v2.2, May 2026) from [caocacao.net](https://caocacao.net/download-football-life-2026-fl-26/)
- Install outside `C:\Program Files` (permission issues with Sider injection)
- Verify launch before any mods
- Directory anatomy walkthrough: `Sider/`, `livecpk/`, `content/`, `sider.ini`

### 4.2 Mod Stack (Installation Order)

Order matters — install in this sequence, testing launch after each major layer.

#### Layer 1: Commentary

| Mod                | Details                  | Install                                                                       |
|--------------------|--------------------------|-------------------------------------------------------------------------------|
| English Commentary | Peter Drury & Jim Beglin | Separate download from caocacao.net → install → System Settings > Language |

#### Layer 2: Audio Framework & Atmosphere

| Mod                       | Details                                                                               | Install                                                     |
|---------------------------|---------------------------------------------------------------------------------------|-------------------------------------------------------------|
| SoundServer (nesa24/juce) | Audio mixer: crowd, referee, announcer, ambient                                       | Sider module → enable in `sider.ini`                        |
| Predator002 Chant Pack V8 | Thousands of team-specific chants + ChantsBase ambient crowd. Player-specific chants. | Sider `livecpk/preds-root` → `cpk.root` line in `sider.ini` |
| Referee Whistle Mod       | High-fidelity whistle replacements                                                    | Sider `livecpk`                                             |
| Atmosphere Overhaul       | Goal reactions, jeers, momentum crowd swells                                          | Sider `livecpk`                                             |

**Volume tuning:** In-game, drop Commentary to 10–12 and Stadium Sound to balance chants through.

#### Layer 3: Visual Foundation

| Mod                 | Details                                                                                                           | Install                                              |
|---------------------|-------------------------------------------------------------------------------------------------------------------|------------------------------------------------------|
| Essentials Mod Pack | Community AIO: balls, scoreboards, adboards, kit server, entrance scenes. The foundation everything else expects. | EvoWeb → extract into FL26 root, merge `SiderAddons` |

#### Layer 4: Faces

| Mod                     | Details                                    | Install                                            |
|-------------------------|--------------------------------------------|----------------------------------------------------|
| Mega Facepack V4 (Football4Life) | 15,842 faces. 7-part download from pesoccerworld.com. V5 upgrade available (17,555 faces). | Extract to `SP Football Life 26/download\` — no `cpk.root` needed. Facepack v2 (14,714 faces) from pes-files.com as alternative. |

#### Layer 5: Stadiums

| Mod              | Details                                              | Install                                              |
|------------------|------------------------------------------------------|------------------------------------------------------|
| Stadium Server   | Framework for per-team/per-league stadium assignment | Sider module → enable in `sider.ini`                 |
| AIO Stadium Pack | High-res stadiums with 2025/26 adboards and tunnels  | `content/stadium-server` → configure `map_teams.txt` |

#### Layer 6: Graphics Overhaul

| Mod                    | Details                                                                          | Install                                                                                                                    |
|------------------------|----------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------|
| Soccer Revolution      | Lighting overhaul — pitch textures, stadium shadows, no FPS hit                  | Sider module / `livecpk`                                                                                                   |
| Jeremiah's Ultra Turfs | Organic, non-repeating grass with realistic wear                                 | Sider `livecpk`                                                                                                            |
| ReShade                | Kills the PES engine's grayish tint. HDR-like depth. KnightMD or Machete preset. | Drop `.ini` preset into FL26 root (next to `FL 26.exe`). Install ReShade separately via reshade.me, targeting `FL 26.exe`. |

#### Layer 7: Camera

| Mod                     | Details                                           | Install                              |
|-------------------------|---------------------------------------------------|--------------------------------------|
| Nesa24's Camera Modules | TV-broadcast camera: zoom, height, smooth panning | Sider module → enable in `sider.ini` |

#### Layer 8: Balls

| Mod                 | Details                                                                              | Install                                                                 |
|---------------------|--------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
| Ball Server (Hawke) | Competition-aware ball selection. Premier League → Nike Flight, UCL → UCL ball, etc. | Sider module → enable in `sider.ini`. In-game: Spacebar → `~` → OMB.lua |

#### Layer 9: Gameplay

| Mod                                   | Details                                                                  | Install             |
|---------------------------------------|--------------------------------------------------------------------------|---------------------|
| Gameplay Loader                       | Swap between gameplay mods without reinstalling                          | Sider module        |
| Holland's Gameplay Mod or Allstar Mix | Fixes AI build-up, scripting, physicality. More simulation, less arcade. | Via Gameplay Loader |

#### Layer 10: Career Depth

| Mod                             | Details                                                                                                                                                                                                          | Install                                                                                                                     |
|---------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------------------------------------------------|
| Ultimate Master League (UML) v3 | **Paid** (Patreon, ~$5–10). Overhauled player dev curves, 2,800+ stat adjustments, realistic transfers/market values, World Cup 2026 rosters, K League 1, new managers, exclusive facepacks, custom scoreboards. | Follow UML team guide — involves database files, Sider modules, and kit server config. Verify compatibility with FL26 v2.2. |

#### Layer 11: Optional League Expansions

| Mod                      | Details                                                   | Install                                         |
|--------------------------|-----------------------------------------------------------|-------------------------------------------------|
| Ultra League Patch (ULP) | Adds Liga MX, Chinese Super League, other missing leagues | Community patches — follow per-mod instructions |

### 4.3 Sider Configuration

Full `sider.ini` walkthrough:

- Enabling modules: uncomment `lua.module = "..."` lines
- `cpk.root` paths: order matters — later entries override earlier ones
- Common pitfalls: unmapped stadiums, missing face folders, module load-order conflicts
- Backup strategy: zip `SiderAddons` and `sider.ini` before each major layer

### 4.4 Known Limitations

- **No full lower-league pyramid.** The PES engine cannot support proper promotion/relegation chains beyond the built-in league structure. FL26 includes the English Championship (tier 2) and equivalent second divisions. League One/Two/National League are structurally impossible.
- **UML is paid.** The free alternative is the base Master League with gameplay mods only. UML is recommended for the full experience but is not required.
- **Classic/legendary teams not included.** Not in FL26 base or the mod stack. VirtuaRED ships with these; FL26 does not.

### 4.5 Save Compatibility Warning

FL26 updates (e.g., v2.1 → v2.2) can and do break Master League saves. The game does not warn you — you load a 40-hour career and it crashes or corrupts. **Before updating the base game, back up your entire `save/` folder and your current `FL 26.exe`.** If an update breaks your save, you can revert by restoring the previous executable and data files. For the long-form manager careers in Part 2, consider locking your FL26 version at v2.2 for the duration of a save. Updating mid-career is a gamble — the guide recommends against it.

## 5. Part 2 — Let's Play: Manager Roleplay Guide

### 5.1 Learning the Game

Teach PES/FL from scratch for a new player entering via Master League:

- **Prerequisites:** PES is designed for controller. Xbox pads work natively. DualShock 4 / DualSense may need DS4Windows or Steam Input (add `FL 26.exe` as a non-Steam game and enable PlayStation Configuration Support). Keyboard is technically supported but not recommended — the analog precision required for dribbling, passing weight, and shot placement makes it a handicap. If you must use keyboard, expect to lose 1–2 difficulty levels of effective play.
- **Controls primer** — what matters for ML vs exhibition (tactical D-pad, off-ball movement, set pieces)
- **Tactics system** — fluid formations, advanced instructions, team spirit, familiarity
- **Scouting & youth academy** — how the scout network works, what UML changes, wonderkid identification
- **Transfer market** — negotiation logic, release clauses, wage budget, sell-on clauses
- **Training & development** — growth curves, peak ages, position training, mentoring
- **Match-day management** — game plans, subs timing, stamina, form/morale arrows

### 5.2 Manager Personas

Each persona is written in theatrical prose — a short character sketch followed by concrete rules. The reader picks one before starting their save.

**Difficulty baseline:** All personas assume **Professional** difficulty, **10-minute halves**, and **normal game speed** unless specified otherwise. These are dials, not decoration: Superstar on 15-minute halves makes the Disgraced Legend's transfer ban actually suffocating; Beginner on 5-minute halves makes the Journeyman's trophy hunt a formality. Adjust up if you're winning every match by February; adjust down if you haven't scored in four games. The rules only work if the AI pushes back.

#### Persona 1: The Disgraced Legend

> *They still sing his name in the Curva Sud. They also still spit it.*
>
> Fifteen years ago, Marco Vieri was the crown prince of Italian football — a Ballon d'Or podium finisher whose career detonated on a single night in a Monaco hotel room. The details depend on who's telling the story. What's certain: he walked away from a €90M contract, served an 18-month ban, and vanished into punditry exile.
>
> Now he's back. No top-flight club would touch him. A relegation-zone Championship side, desperate enough to gamble on a name, has handed him the keys. The brief is simple: keep them up. But Vieri didn't come back for survival. He came back to build something no boardroom can take away.

- **Suggested teams:** Derby County, Portsmouth, Hull City
- **Formation:** Back-three system mandatory (3-5-2, 3-4-3, or 3-4-2-1)
- **Transfers:** No signings from top-6 European leagues for 2 full seasons
- **Budget:** No single player purchase above 50% of available transfer budget
- **Match settings:** Baseline (Professional, 10-min halves). Bump to Superstar after first promotion — top-flight football won't show mercy and neither should the game.
- **Narrative goal:** Reach the Premier League within 4 seasons. Win a domestic cup before season 6.

#### Persona 2: The Data Unicorn

> *Lena Okonkwo has never kicked a ball professionally. She has, however, built three quantitative hedge funds, sold two of them, and retired at 34. Boredom is a sharper spur than ambition ever was.*
>
> When a mid-table second-division club put out a CEO posting, she applied as a joke. They didn't treat it as one. Six months later she'd fired the manager, installed herself in the dugout, and replaced the scouting department with a PostgreSQL cluster. The football world laughed. Then they looked at the table.

- **Suggested teams:** Any mid-table second-division side (2. Bundesliga, Segunda, Championship mid-table)
- **Formation:** Data-driven systems only — 4-2-3-1 gegenpress, 4-3-3 with inverted fullbacks, or 3-4-3 fluid
- **Transfers:** Only sign players with above-average match rating in their position's key stats. No "marquee" signings over age 28.
- **Scouting:** Must maintain a shortlist ranked by statistical output. Cut any player who drops below replacement level for 10+ matches.
- **Match settings:** Baseline (Professional, 10-min halves). Drop to Regular if you're losing too many data points — the model needs a functioning sample size, not a confidence crisis.
- **Narrative goal:** Achieve top-flight promotion using a squad with an average age under 25.

#### Persona 3: The Basque Purist

> *Iker Etxebarria was born 300 meters from San Mamés. His father laid the pitch. His grandfather watched Pichichi score. He played 412 matches for Athletic Bilbao and never once considered leaving. When they offered him the manager's job, he didn't negotiate the salary — he negotiated control of La Cantera.*
>
> But Athletic passed him over at the last minute. So he took the philosophy on the road. Somewhere, at some club that doesn't understand what it's about to become, the children of the region are about to inherit a football team.

- **Suggested teams:** Any club — the constraint is the philosophy, not the location
- **Formation:** 4-2-3-1 or 4-4-2 (Basque traditions)
- **Transfers:** Can only sign players from the club's nation or immediate geographic region. Must accept every transfer request — if a player wants to leave, he leaves.
- **Youth:** Academy must produce 3 first-team-ready players within 4 seasons
- **Squad:** Match-day squad must include at least 3 homegrown players (club or nation)
- **Match settings:** Professional, 12-min halves, normal speed. Youth players need minutes to develop — longer halves give your academy kids meaningful game time without forcing them into rushed cameos.
- **Narrative goal:** Win a top-flight title with a squad where 50%+ players are academy graduates or regional signings.

#### Persona 4: The Journeyman

> *Fifty-three years old. Fourteen clubs. Eight countries. Zero major trophies. Thomas Krause has been a firefighter, a stopgap, a "safe pair of hands" — the man you call in March when you're four points adrift and your fancy appointment has just been escorted out by security. He always keeps them up. He never stays.*
>
> His wife has stopped asking which city they live in. His kids track his career via Wikipedia. One more cycle. One last shot at a league title before the body gives out and the phone stops ringing. This is the final tour.

- **Suggested teams:** Lowest-ranked playable team in any league
- **Job movement:** Must change clubs every 2 seasons — accept the first reasonable offer that arrives
- **Hard stop:** Retire the save at age 60 (7 seasons). If no major trophy by then, the career is complete but unfulfilled. *(Honor-system rule — PES Master League has no manager aging or forced retirement.)*
- **Match settings:** Top Player, 8-min halves, fast game speed. The journeyman has seen every tactical trick in the book — the game should move at his tempo. Bump to Superstar at the final club; this is the last dance, not a testimonial.
- **Narrative goal:** Win a top-flight league title before retirement. The clock is ticking.

### 5.3 Self-Imposed Rule Frameworks

Mix-and-match constraints the reader can layer onto any save:

- **Transfer realism:** Sell before buying above a threshold. Use release clauses honestly. No exploiting free-agent-to-sell pipeline.
- **Scouting realism:** Can only scout regions the club has real-world ties to (former colonies, border nations, shared language). No global scouting unless you're a Champions League club.
- **Youth-first:** Minimum 2 academy graduates in every match-day squad. Transfer budget secondary to academy investment.
- **Financial fair play:** Wage-to-revenue ratio capped at 70%. No running deficits across two consecutive windows.
- **Sporting director mode:** Delegate all transfers to the CPU. You coach what you're given. (Use in-game delegation where available; otherwise simulate by only signing players your scouts find.)

## 6. Guide Structure

```
football-life/
  template.typ              # Typst master (cover, TOC, page setup, fonts)
  guide/
    installation.typ        # Part 1: Base game + mod stack install
    sider-config.typ        # Part 1: sider.ini walkthrough
    lets-play.typ           # Part 2: Game tutorial + personas + rule frameworks
  output/
    apex-life-26.pdf
  assets/
    logo.jpg                # Cover art
  STATUS.md                 # Decision register
  mod-ideas.md              # Future candidates, FL27 migration notes
  conflicts-mods.md         # Known incompatibilities
  AGENTS.md                 # Project instructions for agents
  build.bat                 # One-click build (`typst compile template.typ output/apex-life-26.pdf`)
```

### 6.1 Tone & Style

- **Installation sections:** Technical, direct, terminal-style. Assume reader fluency with file systems, text editors, and modding concepts. Every command/path is exact.
- **Let's Play sections:** Theatrical, immersive, character-driven for personas. Instructional but warm for game tutorial sections. The reader should feel like they're being handed a dossier, not a manual.

## 7. Constraints & Non-Goals

- **NEVER fabricate or suggest mods.** All mods referenced must be verified as real and compatible with FL26 v2.2 at time of writing.
- **No mod URLs in the spec.** Actual download links go into the guide; spec describes what to install and why.
- **No ENB/LUX/Reshade conflicts.** ReShade is the only post-processing injector; FL26 doesn't use ENB.
- **FL27 migration note.** The spec should include a forward-looking note that FL27 is expected late 2026 and this guide may need updating.
- **This guide is NOT a Football Manager replacement.** The PES engine has hard limits on league depth. Set expectations honestly.
