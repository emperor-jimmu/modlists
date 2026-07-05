# Main Character Voicing

**MO2 Separator:** `Voicing`

## Framework Overview → `Voicing`

### Core Idea

Dragonborn Voice Over (DBVO) and Main Character Voice Over Generator (MCVO Generator) together give Skyrim's player character a voice: DBVO is the runtime framework that plays audio for the player's dialogue lines, and MCVO Generator scans the full load order and produces the data files that drive voice generation. Combined with AI voice synthesis (xVASynth or ElevenLabs), the player character speaks every dialogue line across the entire modlist.

This section covers both variants: using pre-made voice packs for a drop-in solution, and generating custom voice packs via ElevenLabs for those who want a specific voice for their character.

### Options

**Pipeline Overview.** The toolchain works in layers:
- **Dragonborn Voice Over** (Nexus 84329) — the SKSE-based framework. Intercepts player dialogue responses and plays .wav files from an installed voice pack. MCM allows switching between voice packs per character. Required by MCVO Generator as a master.
- **Main Character Voice Over Generator** (Nexus 86737) — a standalone .exe that scans the entire load order and produces `DBVO-All.esp` and `DBVO-All.csv`. The `.csv` contains every player dialogue line with the voice model to use. Must be re-run whenever the load order changes. → `Voicing`
- **xVASynth v3** (Nexus 44184) — the AI voice synthesis engine that MCVO Generator was designed to feed into. Uses PyTorch-based voice models trained on game audio. MCVO Generator's default target is `witcher,w_geralt` (Geralt of Rivia model). Quality is good but noticeably synthetic compared to ElevenLabs. → `Voicing`
- **ElevenLabs** — premium AI voice synthesis. Higher quality, more natural-sounding voice output. Requires an ElevenLabs account and either pre-made voice packs or custom generation via the DBVO Voice Pack Creator tool. → `Voicing`

**Pre-Made Voice Packs (drop-in, no generation).** Download a completed voice pack and install it as a mod in MO2. Bella Voice DBVO (Nexus 89810) is the most popular female pack, with the broadest mod coverage. DBVO - Allison Voice Pack (Nexus 126843) is a British female alternative. Pre-made male packs are less common — the xVASynth Geralt route is the most accessible male option.

**Custom Generation via ElevenLabs.** Two workflows: the DBVO Voice Pack Creator tool (recommended, automates folder structure and naming) or manual MCVO Generator + ElevenLabs conversion (labor-intensive, only practical for small line counts).

**Voice Type Mapping.** DBVO respects Skyrim's race/gender voice types. Primary targets are `MaleEvenToned` and `FemaleEvenToned`. Packs typically cover these two.

### Recommendation

Use **Dragonborn Voice Over** as the framework baseline. For voice content, prefer **pre-made voice packs** when the desired voice matches available options (Bella Voice is the strongest community pick). For custom voices or male voices, use the **MCVO Generator + xVASynth** pipeline for the simplest path (Geralt model default), or invest in **ElevenLabs + the DBVO Voice Pack Creator tool** for higher audio quality.

### Risks & Compatibility

- DBVO requires ConsoleUtilSSE NG, JContainers SE, SkyUI, and SKSE64 (all already in the foundations stack).
- DBVO must load after any mod that edits `dialoguemenu.swf`. Place it after the UI stack in the left pane. → `Voicing`
- MCVO Generator must be re-run whenever the load order changes.
- Long file paths can crash the game on startup (Windows 255-char limit). Keep the install path short. → `Voicing`
- Pre-made voice packs may not cover every mod. Uncovered lines fall back to subtitles.
- ElevenLabs packs must comply with the service's terms of service.
- MCVO Generator last updated March 2023; still works on 1.6.1170 but has no active development. → `Voicing`
- xVASynth batch processing can take 2-3 hours for 50,000+ lines.
- The DBVO Voice Pack Creator tool is Discord-only, not on Nexus.

## Dual Voice Pack Strategy → `Voicing`

Since Elder Wilds supports both male and female player characters, the guide should produce two complete voice packs.

### Core Idea

Two voice packs (one male, one female) must be generated or sourced. They are installed as separate MO2 mods and swapped either via MO2 profile or DBVO MCM.

### Options

- **Option A: Pre-Made Packs (Recommended).** Install a female pack (Bella or Allison) and generate a male pack via MCVO Generator + xVASynth (Geralt default).
- **Option B: ElevenLabs Both.** Run the DBVO Voice Pack Creator tool twice with two different voice IDs. Package as separate MO2 mods.
- **Option C: MCVO + xVASynth Both.** Run the MCVO pipeline once with a male model and once with a female xVASynth model. Keep output mods separate.

### Recommendation

Use Option A as the default path (pre-made female + xVASynth male). Reserve Options B and C for players who want a specific voice identity not available in pre-made packs.

## MCVO Generator + xVASynth Pipeline → `Voicing`

### Core Idea

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

### Core Idea

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

## Acceptance Criteria → `Voicing`

- DBVO loads without missing master errors on 1.6.1170.
- Player dialogue lines play audio during NPC conversations, not just subtitles.
- MCVO Generator scans the full load order and produces a non-empty `DBVO-All.csv`. → `Voicing`
- xVASynth or ElevenLabs batch generation completes without errors.
- All voice files load in-game without file-path-length crashes.
- Both male and female voice packs can be swapped in MCM without crashes.
- Bella Voice or Allison pack (if used) covers base game dialogue without silent lines.
