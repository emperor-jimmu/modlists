# Third-Person & Gamepad Compatibility Review

Review date: 2026-06-20
Reviewing against: the updated directives in `modlist.md:8` and `modlist-14.md:17-26` requiring the entire modlist to be completely playable in third-person with a gamepad.

---

## Mods That Risk Breaking Immersion

### 1. Immersive Wenches — `modlist-16.md:138-156`

- **Risk**: Adds "wenches" (serving wenches, barmaids, maid wenches) to every inn. The tone clashes with Elder Wilds' grim-dark, northern-wilderness identity — it reads as a theme-park attraction rather than a lived-in world.
- **Evidence**: Previously rejected in `modlist-09.md` for support concerns. The modlist's own recommendation says "Treat stability as the gate." No tonal justification is given for why it fits beyond "adds NPCs that have more to do than sit at tables."
- **Recommendation**: Reconsider whether Immersive Wenches belongs at all. If kept, flag its tone mismatch explicitly and add acceptance criteria for tonal fit.

### 2. Amorous Adventures — `modlist-16.md:52-88`

- **Risk**: The modlist itself acknowledges the "cringe" problem in the writing. While the Dialogue Rewritten patch fixes player dialogue, the quest structure and NPC dialogue still have uneven quality that can break immersion in a serious playthrough.
- **Evidence**: `modlist-16.md:53`: "The writing tone is uneven — some quests land well, some lean into cringe."
- **Recommendation**: Keep the Dialogue Rewritten patch as mandatory, but document that AA's tone is a known weak point that players should evaluate for themselves before including the full stack.

### 4. Know Your Enemy 2 — `modlist-11.md:141-162`

- **Risk**: The inspect flow and resistance homework could turn combat into a checklist. The modlist notes: "judge it on whether it rewards preparation and damage-type diversity without turning ordinary combat into checklist homework."
- **Evidence**: `modlist-11.md:149`
- **Recommendation**: Keep the caution. No change needed.

---

## Mods That May Not Work in Third-Person

### 1. Hunterborn SE — `modlist-08.md:231`

- **Risk**: The dressing/skinning/butchering process plays an animation. The mod page documentation mentions this is viewable in third-person, but this has not been verified for the specific animation replacer stack in `modlist-03.md`. If OAR replaces the default skinning animation, it may break or show incorrectly.
- **Recommendation**: Add a research task to verify Hunterborn's dressing/skinning/butchering process animations work correctly in third-person with the OAR/Pandora animation stack.

### 2. Simple Fishing Overhaul — `modlist-08.md:230`

- **Risk**: Adds fishing animations. The author states it supports both first-person and third-person, but should be verified against the specific animation stack.
- **Recommendation**: Add a verification check during integration testing. Low risk.

### 3. Legacy of the Dragonborn Museum — `modlist-13.md`

- **Risk**: Heavy menu interaction: sorting displays, activating museum exhibits, curator's companion tracking. All of these work through SkyUI menus which are gamepad-viable (via Controller Interface Fix), but the sheer volume of display interaction could be fatiguing on a gamepad compared to keyboard/mouse.
- **Recommendation**: Add a note to `modlist-13.md` that museum menu navigation and display sorting should be tested for gamepad comfort before locking the LoTD setup as final. Consider whether The Curator's Companion's in-world tracking reduces the need for deep menu dives.

---

## Gamepad-Specific Concerns

### 1. MCM-Heavy Configuration Stack

Affects mods across: `SmoothCam`, `TrueHUD`, `True Directional Movement`, `Starfrost`/`SunHelm`, `Stress and Fear`, `Bathing in Skyrim`, `Know Your Enemy 2`, `Immersive Armors`, `Hunterborn`, `Missives` (via voice/quest expansion), and `Simple Fishing Overhaul`.

- **Risk**: Every one of these requires initial MCM setup. SkyUI MCM navigation works with gamepad (d-pad + A), but it is significantly slower than mouse navigation. A fifty-mod MCM setup session can take 30-45 minutes on a gamepad.
- **Recommendation**: Add a documented MCM preset strategy to `modlist-15.md` (Performance and Technical Workflow) or `guide.md`: ship a pre-configured `skse/plugins/SkyUI/config` folder with .json preset files for every MCM-heavy mod. This eliminates the per-gamepad-session setup burden and makes the list more reproducible.

### 2. Starfrost (MCM-Heavy) vs SunHelm (Radial Menu)

- **Risk**: `Starfrost` (`modlist-05.md:185`) requires MCM navigation for all configuration, while `SunHelm` uses an in-world radial menu system that is inherently more gamepad-friendly. The modlist currently prefers Starfrost for Simonrim alignment.
- **Recommendation**: Document this trade-off in `modlist-05.md`'s Survival Systems subsection. If gamepad-friendly survival interaction is a priority, SunHelm's radial approach may outweigh the Simonrim alignment benefit. At minimum, add an acceptance criterion that the survival baseline's primary interaction loop (eating, drinking, checking needs) must work comfortably on a gamepad without MCM navigation.

### 3. Take Notes - Journal — `modlist-05.md:17`

- **Risk**: The journal requires keyboard text input to write entries. There is no in-game keyboard on gamepad.
- **Recommendation**: This is an optional roleplay companion, not a core system. Acceptable. Document in the guide that journal entry creation requires a keyboard, or flag it as PC-only feature.

### 4. Immersive Armors Distribution — `modlist-08.md:274`

- **Risk**: The mod uses either MCM or a spell/power for distribution control. Spell-based activation works on gamepad (favorites menu) but the initial MCM setup is required.
- **Recommendation**: Covered by the broader MCM preset recommendation above.

---

## Things Already Handled Well

| Mod/Section                                                                         | Why It's Fine                                                                                                                                        |
|-------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------|
| `modlist-06.md:225-255` Controller-Friendly UI Support                              | Has dedicated subsection with `Controller Interface Fix`, `Gamepad Plus Plus`, `Wheeler` radial menu. Good awareness.                                |
| `modlist-04.md` Third-Person Gameplay                                               | Owns camera framework (`SmoothCam`), movement (`TDM`), targeting, and shoulder switching. Core pillar.                                               |
| `modlist-14.md:17-26` (just updated)                                                | Third-Person-First Design with Full Gamepad Support rule explicitly covers lockpicking, reading, menu nav, crafting, dialogue, looting, favouriting. |
| `Better Dialogue Controls` + `Better MessageBox Controls` (`modlist-06.md:201-209`) | Fixes the most common gamepad dialogue friction points.                                                                                              |
| OStim Standalone + Clean Navigation Icons (`modlist-16.md:19-21`)                   | Framework includes gamepad-friendly navigation icons.                                                                                                |
| `Wheeler` (`modlist-06.md:236`)                                                     | Radial quick-access wheel designed for gamepad.                                                                                                      |
| `Skyrim SE Controller Interface Fix` (`modlist-06.md:234`)                          | Base controller fix for the UI stack.                                                                                                                |
| `Constructible Object Custom Keyword System` (`modlist-06.md:332`)                  | Improves crafting menu navigation, which benefits gamepad users.                                                                                     |

---

---

## MCM Auto-Configuration Strategy

The modlist's MCM-heavy stack (~12+ mods need configuration) is the single biggest gamepad friction point. There are two established solutions, both using **MCM Helper** (Nexus 53000) as the foundation.

### Foundation: MCM Helper + MCM Unlocked

| Mod              | Nexus ID | Purpose                                                                                                                                          |
|------------------|----------|--------------------------------------------------------------------------------------------------------------------------------------------------|
| **MCM Helper**   | 53000    | Framework that persists MCM settings to INI files across saves/games. Already a hard dependency of TDM v1.4.0+ and many other mods in the stack. |
| **MCM Unlocked** | 180186   | New (May 2026) — removes SkyUI's 128 MCM limit and loads all MCMs in seconds. Useful for large lists. Optional but recommended.                  |

### Approach A: MaskedRPGFan's Settings Loader Series (Per-Mod)

Per-mod plugins that auto-save/load MCM settings via MCM Helper. Zero user interaction — settings persist automatically.

**Found for our stack:**

| Mod                           | Has Settings Loader?                                                | Nexus ID |
|-------------------------------|---------------------------------------------------------------------|----------|
| **Missives**                  | ✅ Yes                                                               | 69617    |
| **True Directional Movement** | ✅ Built-in (MCM Helper native)                                      | —        |
| **TrueHUD**                   | ✅ Built-in (same author, MCM Helper native)                         | —        |
| **SmoothCam**                 | ⚠️ No dedicated loader, but has 6 preset slots saving to JSON files | —        |
| **Starfrost**                 | ❌ No settings loader found                                          | —        |
| **Hunterborn**                | ❌ No settings loader found                                          | —        |
| **Stress and Fear**           | ❌ No settings loader found                                          | —        |
| **Know Your Enemy 2**         | ❌ No settings loader found                                          | —        |
| **Bathing in Skyrim**         | ❌ No settings loader found                                          | —        |
| **Immersive Armors**          | ❌ No settings loader found                                          | —        |


### Approach B: MCM Recorder (Universal — Recommended)

**MCM Recorder** (Nexus 61719) records all MCM configuration steps into a shareable recording file. The user plays back the recording on any save to auto-configure every mod at once.

**This is the approach used by Nolvus** (the largest Skyrim SE modlist). Their workflow:

1. Ship a pre-recorded MCM configuration as part of the modlist.
2. User opens MCM → MCM Recorder → selects "Elder Wilds MCM" → clicks Yes.
3. Recorder auto-drives through every MCM menu and applies the settings.

Recording files are simple `.json` and can be edited by hand or packaged as a mod in MO2.

### Recommendation

**Use both approaches together:**

1. **MCM Helper** (already a dependency for TDM) — keeps settings for TDM, TrueHUD, and any MCM Helper-aware mods.
2. **Missives - Settings Loader** — dedicated auto-loader for Missives.
3. **MCM Recorder** — a single pre-recorded `Elder Wilds.json` that covers everything else (SmoothCam preset + MCM, Starfrost, Hunterborn, Stress and Fear, Know Your Enemy 2, Bathing in Skyrim, Immersive Armors, and any others).

This combo means: the mods that support auto-loading do it silently, and the rest are handled in one 2-click playback session. The user only configures key bindings (which must be personal).

**What to ship with the guide:**

- `Elder Wilds MCM Recording.zip` — the MCM Recorder output folder, installed as an MO2 mod.
- `Elder Wilds SmoothCam Preset.zip` — the SmoothCam JSON preset file, installed as an MO2 mod.
- A one-page MCM setup appendix: install the recording mod → open MCM Recorder → select "Elder Wilds MCM" → play → set personal keybinds.

## Summary of Action Items

1. **Reconsider Immersive Wenches** — tone mismatch with grim-dark identity.
2. **Add Hunterborn 3rd-person animation research task** — verify skinning/butchering animations work with the OAR stack.
3. **Adopt MCM Recorder approach** — pre-record all MCM settings during development and ship the recording with the guide. Add documentation to `modlist-15.md` or `guide.md`.
4. **Add Starfrost vs SunHelm gamepad trade-off note** — document that SunHelm's radial menus are more gamepad-friendly.
5. **Add LoTD museum gamepad testing note** — verify curator's companion and display navigation comfort on gamepad.
6. **Document Take Notes keyboard requirement** — minor, but should be in guide.
