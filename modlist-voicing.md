# Main Character Voicing

**MO2 Separator:** `Voicing`

All mods in this section belong to the `Voicing` MO2 separator.

---

## Framework Overview

Dragonborn Voice Over (DBVO) and Main Character Voice Over Generator (MCVO Generator) together give Skyrim's player character a voice. DBVO is the runtime framework; MCVO Generator scans the full load order and produces the data files for voice generation. Combined with AI voice synthesis (xVASynth or ElevenLabs), the player character speaks every dialogue line.

### Baseline
- **Dragonborn Voice Over** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/84329)) — SKSE-based framework. Intercepts player dialogue and plays `.wav` files from installed voice pack. MCM allows switching packs per character. Required by MCVO Generator as a master.
- **Pre-made voice packs (drop-in):**
    - **Bella Voice DBVO** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/89810)) — Most popular female pack, broadest mod coverage.
    - **DBVO - Allison Voice Pack** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/126843)) — British female alternative.
    - Pre-made male packs are less common.
- **Recommended actress:** Jennifer Hale (Bella Voice DBVO uses spliced Hale VO catalog).
- **Recommended actor:** Travis Willingham (MCVO Generator + xVASynth pipeline).

### Alternatives
- **MCVO Generator + xVASynth** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/86737) / [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/44184)) — Free custom-generation path. Quality is noticeably synthetic. Must re-run when load order changes.
- **ElevenLabs + DBVO Voice Pack Creator** — Premium path. Higher quality, more natural output. Requires paid account and Discord-only tool.

### Notes
- DBVO requires ConsoleUtilSSE NG, JContainers SE, SkyUI, and SKSE64 (all in foundations stack).
- DBVO must load after any mod editing `dialoguemenu.swf`. Place after the UI stack in the left pane.
- Windows 255-char path limit can crash on startup — keep install path short.
- Pre-made packs may not cover every mod. Uncovered lines fall back to subtitles.
- MCVO Generator last updated March 2023; still works on 1.6.1170 but no active development.
- xVASynth batch processing can take 2-3 hours for 50,000+ lines.

---

## Dual Voice Pack Strategy

Two complete voice packs (one male, one female) for character flexibility. Install as separate MO2 mods, swap via MO2 profile or DBVO MCM.

- **Option A: Pre-Made Packs (Recommended)** — Female pack (Bella/Allison) + generate male via MCVO Generator + xVASynth (Geralt default).
- **Option B: ElevenLabs Both** — Run tool twice with two voice IDs. Package as separate mods.
- **Option C: MCVO + xVASynth Both** — Run once with male model, once with female model.

---

## MCVO Generator + xVASynth Pipeline

### Before Starting
- Install DBVO and dependencies. DBVO must be enabled and in the load order before running MCVO Generator.
- Build the full modlist in MO2 with final load order.
- Install xVASynth and desired voice models (default male: Geralt of Rivia pack from Witcher 3 Nexus 5676).
- Download MCVO Generator from Nexus, extract to convenient location.

### Generating the Voice Pack
1. Run MCVO Generator (`DBVO-All.exe`). Produces `DBVO-All.esp` in `Data\` and `DBVO-All.csv`. Add the .esp to MO2 as new mod.
2. Open xVASynth in Batch Mode, load `DBVO-All.csv`, select voice model, click **Generate**.
3. xVASynth outputs `.wav` files under `Data\Sound\Voice\Dragonborn Voice Over\`. Create MO2 mod from this folder structure.
4. Launch game through SKSE, open DBVO MCM, select voice pack, test dialogue lines.

### Generating The Second Set (Male/Female)
Repeat steps 2-4 with different voice model. Create separate MO2 mod. Enable one at a time.

---

## ElevenLabs Custom Voice Pack

### Prerequisites
- ElevenLabs paid account (Creator $22/mo. recommended for full load order).
- DBVO Voice Pack Creator tool (DBVO author's Discord, `#tool-download` channel).
- ElevenLabs API key.

### Voice Selection
Browse ElevenLabs Voice Library or use Voice Design. Get voice ID via `GET https://api.elevenlabs.io/v1/voices`.

### Generating
1. Run MCVO Generator to produce `DBVO-All.csv`.
2. Use DBVO Voice Pack Creator: point at CSV, enter API key and voice ID, run.
3. Package output as MO2 mod.

### Character Quota Planning
Creator plan (100,000 chars/month) covers ~15,000-20,000 lines. Full 50,000+ line load order may need Pro plan ($99/month, 500,000 chars) or multiple months. Use free tier (10,000 chars/month) for testing only.
