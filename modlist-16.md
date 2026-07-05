# Main Character Voicing

**MO2 Separator:** `16 Voicing`

## Core Idea → `16`

Skyrim's player character has never had a voice. Dragonborn Voice Over (DBVO) and Main Character Voice Over Generator (MCVO Generator) together solve this: DBVO is the runtime framework that plays audio for the player's dialogue lines, and MCVO Generator scans the full load order and produces the data files that drive voice generation. Combined with AI voice synthesis (xVASynth or ElevenLabs), the player character speaks every dialogue line across the entire modlist.

This section covers both variants: using pre-made voice packs for a drop-in solution, and generating custom voice packs via ElevenLabs for those who want a specific voice for their character.

## Options → `16`

### Pipeline Overview

The toolchain works in layers:

- **Dragonborn Voice Over** (Nexus 84329, 9,629 endorsements) — the SKSE-based framework. It intercepts player dialogue responses and plays .wav files from an installed voice pack. MCM allows switching between voice packs per character. Required by MCVO Generator as a master.
- **Main Character Voice Over Generator** (Nexus 86737, 237 endorsements) — a standalone .exe that scans the entire load order and produces `DBVO-All.esp` and `DBVO-All.csv`. The `.csv` contains every player dialogue line in the load order with its text and the voice model to use. The `.esp` maps those dialogue responses to voice files. Must be re-run whenever the load order changes. → `16`
- **xVASynth v3 - SKVA Synth** (Nexus 44184, 5,555 endorsements) — the AI voice synthesis engine that MCVO Generator was designed to feed into. Supports 28 languages, per-letter pitch/duration/energy control, voice conversion mode, and batch CSV processing. xVASynth uses its own PyTorch-based voice models trained on game audio, available for Skyrim, Fallout, The Witcher, Mass Effect, Cyberpunk 2077, and dozens of other games. MCVO Generator's default target is `witcher,w_geralt` (Geralt of Rivia model, Witcher 3 Nexus 5676). Quality is good but noticeably synthetic compared to ElevenLabs. xVASynth does not directly integrate with the ElevenLabs API. → `16`
- **ElevenLabs** (elevenlabs.io) — premium AI voice synthesis. Used as an alternative to xVASynth for higher-quality, more natural-sounding voice output. Requires an ElevenLabs account and either pre-made voice packs or custom generation via the DBVO Voice Pack Creator tool.

### Pre-Made Voice Packs (Drop-In, No Generation)

The simplest path. Download a completed voice pack and install it as a mod in MO2.

- **Bella Voice DBVO** (Nexus 89810, 2,532 endorsements) — the most popular pre-made pack. Female voice generated with ElevenLabs using the "Bella" voice prefix. Covers base game + many popular mods. The pack comes as a main AIO file plus dozens of optional add-on patches for specific mods. The author also accepts ElevenLabs API key submissions to generate additional lines on request (see mod page for instructions).
- **DBVO - Allison Voice Pack** (Nexus 126843, 93 endorsements) — female British voice pack using ElevenLabs' "Allison" voice. Covers base game + Anniversary Edition content + a curated set of popular mods. Maintained as an AIO file. The author explicitly states no requests taken — this is their personal list pack shared publicly.
- **Male voice pack availability**: Pre-made male voice packs are less common than female. The xVASynth-based route using the Geralt of Rivia model (MCVO Generator's default) is the most accessible option for a male voice. Manual ElevenLabs generation is the best path for a custom male voice with natural quality.

### Custom Generation via ElevenLabs

For players who want a specific voice not available in pre-made packs.

**Workflow A: DBVO Voice Pack Creator tool** — the DBVO author provides a tool on their Discord server (`#tool-download` channel at https://discord.gg/7EFNjzATvC) that automates voice pack creation. It accepts dialogue text input, sends it to the ElevenLabs API, and outputs properly-named .wav files in the correct DBVO folder structure. This is the recommended approach for generating custom voice packs at scale.

**Workflow B: MCVO Generator + manual ElevenLabs conversion** — run MCVO Generator to produce the `.csv` of all dialogue lines, then use the ElevenLabs API or web interface to generate audio for each line. Files must be named according to the DBVO voice pack convention and structured into the correct folder layout manually. This is labor-intensive and only practical for small line counts or specific mods.

### Voice Type Mapping

Skyrim uses voice types defined by the player character's race and gender. DBVO respects this mapping. The relevant voice types are:

- `MaleEvenToned` — default male (Nord, Imperial, Breton, Redguard, Dunmer, Altmer, Bosmer, Orc) → `16`
- `MaleBrute` — unused by default player races, but some mods may assign it → `16`
- `FemaleEvenToned` — default female (Nord, Imperial, Breton, Redguard, Dunmer, Altmer, Bosmer, Orc) → `16`
- `FemaleShrill` — unused by default player races → `16`
- `FemaleCommander` — unused by default player races → `16`

DBVO voice packs typically cover `MaleEvenToned` and `FemaleEvenToned` as the primary targets.

## Recommendation → `16`

Use **Dragonborn Voice Over** as the framework baseline. It is the only SKSE-based player voice solution and is required as a master by MCVO Generator.

For the voice content, prefer **pre-made voice packs** when the desired voice matches available options. The Bella Voice pack is the strongest community pick, with the broadest mod coverage and an active request system for generating additional lines.

For custom voices or male voices, use the **MCVO Generator + xVASynth** pipeline for the simplest path (defaulting to the Geralt voice model), or invest in **ElevenLabs + the DBVO Voice Pack Creator tool** for higher audio quality. The ElevenLabs route requires a paid subscription (Creator plan at $22/month recommended for adequate character quota) and access to the DBVO author's Discord tool.

## Risks → `16` & Compatibility

- DBVO requires ConsoleUtilSSE NG, JContainers SE, SkyUI, and SKSE64. These are standard baseline dependencies already present in the Elder Wilds foundations.
- DBVO must load after any mod that edits `dialoguemenu.swf` (UI mods). Place it after the UI stack in the left pane. → `16`
- MCVO Generator must be re-run whenever the load order changes (adding or removing a mod that adds player dialogue lines).
- Long file paths can crash the game on startup. Windows has a 255-character path limit, and deeply nested file paths (long mod names + long dialogue line names + `.wav`) can exceed this. Keep the Skyrim install path short (e.g., `C:\Games\Skyrim`) and consider short voice pack folder names. → `16`
- Pre-made voice packs may not cover every mod in the load order. Uncovered lines will be silent (fall back to subtitle-only display). Bella Voice has the widest coverage; check the mod page for the supported mod list.
- ElevenLabs-generated voice packs must comply with ElevenLabs' terms of service. Do not distribute packs generated with a paid ElevenLabs account unless the voice is from the public Voice Library.
- MCVO Generator last updated March 2023. It still works on 1.6.1170 per community reports, but has no active development. The tool produces a `.csv` and `.esp`; the `.esp` may require cleaning in xEdit if it carries ITM records. → `16`
- xVASynth batch processing is GPU-accelerated but slow at scale. A heavily modded load order (50,000+ lines) can take 2-3 hours to process.
- The DBVO Voice Pack Creator tool is hosted on Discord only, not on Nexus. Access requires joining the DBVO author's Discord server at https://discord.gg/7EFNjzATvC.

## Including Both → `16` Male And Female Voice Sets

Since Elder Wilds supports both male and female player characters, the guide should produce two complete voice packs.

### Option A: Pre-Made Packs (Recommended Path)

Install both a male and female voice pack as separate MO2 mods:

1. **Female pack**: Bella Voice DBVO (Nexus 89810) or Allison Voice Pack (Nexus 126843).
2. **Male pack**: Generate via MCVO Generator + xVASynth using the default Geralt voice model (see Instructions below), or use a custom ElevenLabs-generated pack.
3. In the DBVO MCM, select the voice pack that matches the current character. Switching characters mid-save requires changing the MCM selection.

### Option B: Generate Both Via ElevenLabs

1. Select two ElevenLabs voices — one male, one female. Use Voice Design in ElevenLabs to create them, or pick from the Voice Library.
2. Run the DBVO Voice Pack Creator tool twice: once with the male voice ID, once with the female voice ID.
3. Package each output as a separate MO2 mod folder (e.g., `DBVO - Male Voice`, `DBVO - Female Voice`).
4. Install both mods. Only one can be active at a time — disable the unused set in MO2, or use DBVO's MCM voice pack switching (if both are installed, DBVO lists them both in the dropdown).

### Option C: MCVO Generator + xVASynth (Default Male Path)

Use the MCVO Generator pipeline once with the male voice model (default: Geralt) and once with a female xVASynth voice model (e.g., `skyrim,sk_femaleelfhaughty`). Keep the two output mods separate and swap in MO2 or MCM as above.

## Instructions → `16`: MCVO Generator + xVASynth Pipeline

This is the standard workflow for generating a voice pack from the full load order.

### Before Starting

- Install DBVO and its dependencies (ConsoleUtilSSE NG, JContainers SE, SkyUI, SKSE64) as part of the foundations stack. DBVO must be enabled and its .esp must be in the load order before running MCVO Generator.
- Build the full modlist in MO2 with the desired load order finalized (or as final as possible — rerunning later is possible but time-consuming).
- Install xVASynth and the desired voice models. For the default male voice, download the Geralt of Rivia voice pack (Witcher 3 Nexus 5676) and place it in xVASynth's voice model directory.
- Download MCVO Generator from Nexus and extract it to a convenient location (e.g., `C:\Modding\Tools\MCVO Generator`). → `16`

### Generating the Voice Pack

1. Run MCVO Generator (`DBVO-All.exe`). It scans every .esp in the load order and produces two files:
   - `DBVO-All.esp` in the Skyrim `Data` folder — add this to MO2 as a new mod (create a mod named `DBVO-All Output`, copy the .esp in, enable it).
   - `DBVO-All.csv` in the same directory as the .exe — this is the batch input file for xVASynth.

2. Open xVASynth, switch to **Batch Mode**, and load `DBVO-All.csv`. Select the voice model (default: `witcher,w_geralt` for male, or choose a female model like `skyrim,sk_femaleelfhaughty`). Click **Generate**.

3. xVASynth processes every line. Output .wav files are written to the paths specified in the CSV (typically under `Data\Sound\Voice\Dragonborn Voice Over\`). This can take hours for large load orders.

4. Once generation completes, create a new MO2 mod folder named `DBVO - Voice Pack` and include the entire `Sound\Voice\Dragonborn Voice Over\` directory structure. Enable it below the DBVO framework mod.

5. Launch the game through SKSE. Open the DBVO MCM and select the generated voice pack. Test a few dialogue lines by talking to an NPC.

### Generating The Second Set (Male/Female)

Repeat steps 2-4 with a different voice model. Create a separate MO2 mod (e.g., `DBVO - Male Voice`, `DBVO - Female Voice`). Enable one at a time.

## Instructions → `16`: ElevenLabs Custom Voice Pack

For higher quality than xVASynth, generate the audio via ElevenLabs instead.

### Prerequisites

- ElevenLabs account with a paid plan (Starter $5/mo. for small packs, Creator $22/mo. recommended for full load order coverage).
- Access to the DBVO Voice Pack Creator tool (join the DBVO author's Discord server at https://discord.gg/7EFNjzATvC, channel `#tool-download`). → `16`
- An ElevenLabs API key (found in your ElevenLabs account under Profile settings).

### ElevenLabs Voice Selection

1. In ElevenLabs, browse the **Voice Library** for a pre-made voice, or use **Voice Design** to create one from a text description.
2. Once the voice is in your VoiceLab, get its **voice ID**:
   - Call the ElevenLabs API: `GET https://api.elevenlabs.io/v1/voices` with your API key in the `xi-api-key` header.
   - Find the voice name in the response and copy its `voice_id`.
3. Alternatively, use a default ElevenLabs voice (no ID needed — the tool may accept voice names directly for default voices).

### Generating The Voice Pack

1. Run MCVO Generator to produce `DBVO-All.csv` (same as the xVASynth pipeline above).
2. Use the DBVO Voice Pack Creator tool:
   - Point it at the `DBVO-All.csv`.
   - Enter your ElevenLabs API key.
   - Enter the target voice ID.
   - Run the tool. It sends each line of dialogue text to ElevenLabs, receives the audio, and names the output files according to DBVO conventions.
3. The tool outputs a complete voice pack folder structure. Create an MO2 mod from it and enable it.
4. Launch the game and select the pack in DBVO's MCM.

### Generating Male + Female Sets With ElevenLabs

1. Pick two ElevenLabs voice IDs (male + female).
2. Run the DBVO Voice Pack Creator tool twice — once per voice ID — outputting to separate folders.
3. Create two MO2 mods (`DBVO - Male ElevenLabs`, `DBVO - Female ElevenLabs`). Enable only the one matching the current character.
4. To switch characters, disable the active voice pack mod in MO2 and enable the other. Restart the game.

### Character Quota Planning

The ElevenLabs **Creator plan** ($22/month, 100,000 characters) covers roughly 15,000-20,000 dialogue lines per month (depending on average line length). A full modlist with 50,000+ lines may require the **Pro plan** ($99/month, 500,000 characters) or multiple months of generation. Use the free tier (10,000 characters/month) only for testing a few lines before committing to a subscription.

## Acceptance Criteria → `16`

- DBVO loads without missing master errors on 1.6.1170.
- Player dialogue lines play audio during NPC conversations, not just subtitles.
- MCVO Generator scans the full load order and produces a non-empty `DBVO-All.csv`. → `16`
- xVASynth or ElevenLabs batch generation completes without errors.
- All voice files load in-game without file-path-length crashes.
- Both male and female voice packs can be swapped in MCM without crashes.
- Bella Voice or Allison pack (if used) covers base game dialogue without silent lines.

## Post-Install Smoke Test

After completing this section, verify stability with the coc console command at these 6 locations:

| # | Command | Location | Stress Profile |
|---|---------|----------|----------------|
| 1 | `coc Whiterun` | Whiterun | Major city — NPCs, shadows, architecture density |
| 2 | `coc Solitude` | Solitude | Large city — water reflections, long draw distances |
| 3 | `coc RiftenOrigin` | Riften | Canopy lighting, heavy NPC AI packages |
| 4 | `coc MarkarthOrigin` | Markarth | Dwemer stone, waterfalls, extreme verticality |
| 5 | `coc Riverwood` | Riverwood | Forest exterior — grass, trees, landscape LOD |
| 6 | `coc BleakFallsBarrow01` | Bleak Falls Barrow | Interior dungeon — close-quarters lighting |
| 7 | `coc WhiterunBanneredMare` | Bannered Mare (Whiterun) | Tavern interior — fire lighting, patron NPCs, confined space |

**Pass criteria:** No crash on load. No missing textures. ≥60 FPS maintained (uncap framerate, use `tgm` for god mode if needed).

If any location fails, the most recently installed mod or generation step is the first suspect.
