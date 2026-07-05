# Main Character Voicing

**MO2 Separator:** `Voicing`

## Framework Overview → `Voicing`

Dragonborn Voice Over (DBVO) and Main Character Voice Over Generator (MCVO Generator) together give Skyrim's player character a voice: DBVO is the runtime framework that plays audio for the player's dialogue lines, and MCVO Generator scans the full load order and produces the data files that drive voice generation. Combined with AI voice synthesis (xVASynth or ElevenLabs), the player character speaks every dialogue line across the entire modlist. This section covers both variants: using pre-made voice packs for a drop-in solution, and generating custom voice packs for those who want a specific voice for their character.

### Baseline

- **Dragonborn Voice Over** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/84329)) — The SKSE-based framework. Intercepts player dialogue responses and plays .wav files from an installed voice pack. MCM allows switching between voice packs per character. Required by MCVO Generator as a master. → `Voicing`
- **Pre-made voice packs (drop-in, no generation)** — Download a completed voice pack and install it as a mod in MO2. **Bella Voice DBVO** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/89810)) is the most popular female pack with the broadest mod coverage. **DBVO - Allison Voice Pack** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/126843)) is a British female alternative. Pre-made male packs are less common. → `Voicing`

### Alternatives

- **MCVO Generator + xVASynth** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/86737) / [Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/44184)) — Free custom-generation path. MCVO Generator scans the full load order and produces `DBVO-All.esp` and `DBVO-All.csv`. xVASynth batch-generates .wav files using PyTorch-based voice models (default: Geralt of Rivia). Quality is noticeably synthetic. The simplest custom path for male voices or when pre-made packs don't match the desired voice. Must be re-run whenever the load order changes. → `Voicing`
- **ElevenLabs + DBVO Voice Pack Creator** — Premium custom-generation path. Higher quality, more natural-sounding output. Requires an ElevenLabs paid account and the DBVO Voice Pack Creator tool (Discord-only, not on Nexus). Recommended for players who want a specific voice identity not available in pre-made packs. → `Voicing`

### Notes

- DBVO requires ConsoleUtilSSE NG, JContainers SE, SkyUI, and SKSE64 (all already in the foundations stack).
- DBVO must load after any mod that edits `dialoguemenu.swf`. Place it after the UI stack in the left pane. → `Voicing`
- Long file paths can crash the game on startup (Windows 255-char limit). Keep the install path short. → `Voicing`
- Pre-made voice packs may not cover every mod. Uncovered lines fall back to subtitles.
- ElevenLabs packs must comply with the service's terms of service.
- MCVO Generator last updated March 2023; still works on 1.6.1170 but has no active development. → `Voicing`
- xVASynth batch processing can take 2-3 hours for 50,000+ lines.
- DBVO respects Skyrim's race/gender voice types. Primary targets are `MaleEvenToned` and `FemaleEvenToned`.

## Dual Voice Pack Strategy → `Voicing`

Since Elder Wilds supports both male and female player characters, two complete voice packs (one male, one female) must be generated or sourced. They are installed as separate MO2 mods and swapped either via MO2 profile or DBVO MCM.

### Baseline

- **Option A: Pre-Made Packs (Recommended)** — Install a female pack (Bella or Allison) and generate a male pack via MCVO Generator + xVASynth (Geralt default).

### Alternatives

- **Option B: ElevenLabs Both** — Run the DBVO Voice Pack Creator tool twice with two different voice IDs. Package as separate MO2 mods.
- **Option C: MCVO + xVASynth Both** — Run the MCVO pipeline once with a male model and once with a female xVASynth model. Keep output mods separate.

### Notes

- Reserve Options B and C for players who want a specific voice identity not available in pre-made packs.

## MCVO Generator + xVASynth Pipeline → `Voicing`

The standard workflow for generating a voice pack from the full load order using free tools.

### Before Starting

- Install DBVO and its dependencies. DBVO must be enabled and its .esp in the load order before running MCVO Generator.
- Build the full modlist in MO2 with the final load order.
- Install xVASynth and the desired voice models. For the default male voice, download the Geralt of Rivia voice pack (Witcher 3 Nexus 5676).
- Download MCVO Generator from Nexus and extract it to a convenient location (e.g., `C:\Modding\Tools\MCVO Generator`). → `Voicing`

### Generating the Voice Pack

1. Run MCVO Generator (`DBVO-All.exe`). It produces `DBVO-All.esp` in `Data\` and `DBVO-All.csv` next to the .exe. Add the .esp to MO2 as a new mod.
2. Open xVASynth in Batch Mode, load `DBVO-All.csv`, select the voice model, click **Generate**.
3. xVASynth outputs .wav files under `Data\Sound\Voice\Dragonborn Voice Over\`. Create an MO2 mod from this folder structure.
4. Launch the game through SKSE, open the DBVO MCM, select the generated voice pack, and test a few dialogue lines.

### Generating The Second Set (Male/Female)

Repeat steps 2-4 with a different voice model. Create a separate MO2 mod. Enable one at a time.

## ElevenLabs Custom Voice Pack → `Voicing`

Generate higher-quality audio via ElevenLabs as an alternative to xVASynth.

### Prerequisites

- ElevenLabs account with a paid plan (Creator $22/mo. recommended for full load order).
- Access to the DBVO Voice Pack Creator tool (DBVO author's Discord server, `#tool-download` channel). → `Voicing`
- An ElevenLabs API key.

### Voice Selection

Browse the ElevenLabs Voice Library for a pre-made voice, or use Voice Design to create one. Get the voice ID via `GET https://api.elevenlabs.io/v1/voices` with your API key.

### Generating The Voice Pack

1. Run MCVO Generator to produce `DBVO-All.csv`.
2. Use the DBVO Voice Pack Creator tool: point it at the CSV, enter your API key and target voice ID, run the tool.
3. Package the output folder structure as an MO2 mod and enable it.

### Generating Male + Female Sets

Pick two voice IDs, run the tool twice, create two MO2 mods. Enable only the one matching the current character.

### Character Quota Planning

The Creator plan (100,000 characters/month) covers ~15,000-20,000 dialogue lines. A full 50,000+ line load order may need the Pro plan ($99/month, 500,000 characters) or multiple months. Use the free tier (10,000 characters/month) for testing only.
