# Main Character Voicing

---

## Framework Overview
Dragonborn Voice Over 2 (DBVO2) is the runtime framework that intercepts player dialogue and plays `.wav`/`.fuz` files via an SKSE plugin. Combined with the xEdit dialogue export tool and AI voice synthesis (ElevenLabs or xVASynth), the player character speaks every dialogue line.

### Baseline

| Mod / Resource                                                                       | Type                | Notes                                                                                                                                                         |
|--------------------------------------------------------------------------------------|---------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [Dragonborn Voice Over 2](https://www.nexusmods.com/skyrimspecialedition/mods/84329) | Framework           | SKSE plugin. Intercepts player dialogue and plays `.wav`/`.fuz` files. Settings via SKSE Menu Framework (F1). Per-character pack switching, per-save presets. |
| [Bella Voice DBVO](https://www.nexusmods.com/skyrimspecialedition/mods/89810)        | Voice Pack          | Most popular female pack, broadest mod coverage.                                                                                                              |
| [DBVO - Allison Voice Pack](https://www.nexusmods.com/skyrimspecialedition/mods/126843) | Voice Pack          | British female alternative.                                                                                                                                   |
| Pre-made male packs                                                                  | Voice Pack          | Less common pre-made options available.                                                                                                                       |
| Laura Bailey                                                                         | Recommended Actress | ElevenLabs Voice Design target for custom female pack via → [Custom Voice Pack Pipeline](#custom-voice-pack-pipeline).                                        |
| Graham McTavish (The Saint / Geralt)                                                            | Recommended Actor   | ElevenLabs custom target for male pack via → [Custom Voice Pack Pipeline](#custom-voice-pack-pipeline).                                                        |

### Alternatives

| Mod / Resource                                                                               | Type        | Notes                                                                                               |
|----------------------------------------------------------------------------------------------|-------------|-----------------------------------------------------------------------------------------------------|
| [xVASynth](https://www.nexusmods.com/skyrimspecialedition/mods/44184)                        | Alternative | Free audio generation. Quality is noticeably synthetic. Used for male default (Geralt voice model). |
| [ElevenLabs](https://elevenlabs.io)                                                          | Alternative | Premium audio generation. Higher quality, more natural output. Used for Laura Bailey custom target. |
| [DBVO Dialogue Export for xEdit](https://www.nexusmods.com/skyrimspecialedition/mods/182009) | Alternative | Replaces MCVO Generator for dialogue export. xEdit script with optional ESPFE fix patch.            |
| [MCVO Generator](https://www.nexusmods.com/skyrimspecialedition/mods/86737)                  | Alternative | Legacy dialogue export. Still works with DBVO2 legacy mode. Last updated March 2023.                |

### Setup Requirements

- DBVO2 requires SKSE64, Address Library for SKSE Plugins, and SKSE Menu Framework (all in → `Foundations` and `UI` stacks).
- No `dialoguemenu.swf` patching needed — works with most UI mods without modification.
- Windows 255-char path limit can crash on startup — keep install path short.
- Pre-made packs may not cover every mod. Uncovered lines fall back to subtitles.
- xVASynth batch processing can take 2-3 hours for 50,000+ lines.

---

## Two Custom Voice Packs
Two custom-generated packs (Laura Bailey female, Graham McTavish male) for character flexibility. Run → [Custom Voice Pack Pipeline](#custom-voice-pack-pipeline) twice with two ElevenLabs voice IDs; package as separate MO2 mods and enable one at a time (MO2 profile or DBVO2 voice pack dropdown, F1).

---

## Custom Voice Pack Pipeline
Unified workflow covering dialogue export → audio generation → packaging into DBVO2 format.

### Prerequisites

- Install DBVO2 and dependencies (SKSE64, Address Library, SKSE Menu Framework). DBVO2 must be enabled in MO2 before exporting.
- Build the full modlist in MO2 with final load order.
- Download [DBVO Dialogue Export for xEdit](https://www.nexusmods.com/skyrimspecialedition/mods/182009) — modern xEdit script that exports player dialogue lines.
- [ElevenLabs](https://elevenlabs.io) paid account — required for both custom targets (Laura Bailey and Graham McTavish).
- Download DBVO Voice Packer 2 V2.5.1 (Google Drive link) — packages generated audio into DBVO2 format with `.fuz` files and `voice-pack.json` manifest.

### Step 1: Export Dialogue

1. Open SSEEdit/xEdit with all load-order mods active.
2. Right-click any plugin → **Apply Script** → select `DBVO_Dialogue_Export.pas`.
3. The script scans all dialogue in the load order and outputs one `TopicList*.txt` file per dialogue-containing mod, plus a `BrokenTopicList*.txt` listing lines that need manual editing.
4. Optionally create the ESPFE fix patch (trims whitespace, deduplicates lines).
5. Save the output to a working directory outside MO2's `mods` folder.

### Step 2: Generate Audio

**ElevenLabs (recommended for Laura Bailey or Graham McTavish custom pack):**

1. Create an [ElevenLabs](https://elevenlabs.io) account. A paid subscription is required for full load orders (Creator $22/mo. or Pro $99/mo.).
2. Get your API key: Profile → **Profile Settings** → **API Key** → copy the key.
3. Choose a voice:
   - **Voice Library** — browse pre-made voices. For a Laura Bailey target, look for voices tagged with similar qualities (warm alto, American female). For Graham McTavish, look for deep, gravelly male voices (Scottish-accented where possible).
   - **Voice Design** — create a custom voice from scratch with fine-grained control over accent, age, gender, and style.
   - **Voice Cloning** — if you have a clean audio sample of the target actor, use Instant Voice Cloning.
4. Get the voice ID: every voice has a unique ID in its URL (`/voice/<voice-id>`) or via `GET https://api.elevenlabs.io/v1/voices`.
5. Download the DBVO Voice Pack Creator tool from the DBVO author's [Discord](https://discord.gg/7EFNjzATvC), `#tool-download` channel.
6. Point the Voice Pack Creator at your exported `TopicList*.txt` files, enter your API key and target voice ID, then run.
7. The tool batch-generates `.wav` files covering every dialogue line in your load order.

### Step 3: Package into DBVO2 Format

1. Run DBVO Voice Packer 2 V2.5.1.
2. Point it at your generated `.wav` files and the exported `TopicList*.txt` files.
3. The tool creates the correct DBVO2 folder structure and files:
   - `Sound\Voice\Dragonborn Voice Over\<pack-name>\*.fuz`
   - `voice-pack.json` manifest
4. Create an MO2 mod from the output folder. Name it descriptively (e.g., `DBVO - Laura Bailey Custom`).

### Step 4: Install & Activate

1. Enable the mod in MO2. Place after DBVO2 in the left pane.
2. Launch the game through SKSE.
3. Open SKSE Menu Framework (Press **F1**) → Dragonborn Voice Over → General.
4. Ensure **Use legacy voice over** is **Off** (V2 packs only).
5. Select your voice pack from the dropdown.
6. Test dialogue lines with any NPC — uncovered lines fall back to subtitles.

### Character Quota Planning

ElevenLabs Creator plan (100,000 chars/month) covers ~15,000–20,000 lines. Full 50,000+ line load order may need Pro plan ($99/month, 500,000 chars) or multiple months. Use free tier (10,000 chars/month) for testing only.

### Generating The Second Set (Male/Female)

Repeat Steps 2–4 with the other voice target and ElevenLabs voice ID (Laura Bailey → female, Graham McTavish → male). Create a separate MO2 mod with a distinct pack name. Enable one at a time via the DBVO2 dropdown in SKSE Menu Framework.
