# 10 - Appearance & Character

**Goal:** Character customization. Body mods, skin textures, hair, cyberware
visuals, tattoos, and character creator presets. Visual-only -- no gameplay
impact. World immersion mods that reflect Night City's decadent atmosphere are
included when they serve authenticity rather than pure titillation.

---

### 8k-4k Skin Texture and Material

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/13537>
- **Version:** 2.0.1
- **Released:** 2026-05-28
- **Summary:** 8K and 4K skin textures for female and male characters. Includes skin material/shader improvements and head mesh replacer where needed. Light version and lower-res options available.
- **Why:** Supports the modlist's 4K baseline with high-resolution character textures. Multiple resolution options allow performance tuning. Actively updated.
- **Conflicts:** May conflict with other skin texture replacers or head mesh mods.
- **Dependencies:** None (standalone texture replacer)
- **MO2 Notes:** Extract to `archive/pc/mod/`. Choose resolution appropriate for your hardware — 4K version recommended for the modlist baseline.
- **Performance:** Light (higher VRAM usage for 8K variant)

### NPCs Enhancement - Hyst Bodies

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/9887>
- **Version:** 1.0.2
- **Released:** 2025-08-16
- **Summary:** Custom body meshes and appearance reworks for select NPCs, including hair and outfit swaps alongside body enhancements.
- **Why:** Night City is a body-modification culture where cosmetic cyberware and body sculpting are normalized. This enhances select NPCs to reflect that world authenticity — not just the player character, but the citizens of a decadent, transhumanist city should reflect its values.
- **Conflicts:** May conflict with other mods altering the same NPC appearances.
- **Dependencies:** ArchiveXL
- **MO2 Notes:** Extract to archive folder. Affects specific NPCs only, not a global replacer.
- **Performance:** None

### CET NPC Body Tweaks

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/10458>
- **Version:** 2.2.5
- **Released:** 2022-01-01
- **Summary:** Female NPC body tweaks for breast and lower body areas via Cyber Engine Tweaks scripting.
- **Why:** Complements Hyst Bodies for a more comprehensive world-appropriate character appearance. CET-based approach means no file conflicts with ArchiveXL-based body mods.
- **Conflicts:** None known (CET script-based, no loose file overwrites)
- **Dependencies:** Cyber Engine Tweaks
- **MO2 Notes:** Extract to game root. Works via CET scripting — no archive conflicts.
- **Performance:** None

### Citizen Breast Physics

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/21520>
- **Version:** 1.2.2
- **Released:** 2025-05-15
- **Summary:** Adds breast physics to most female NPCs using ArchiveXL patching. Does not overwrite any .app or .ent files — entirely conflict-free approach.
- **Why:** World authenticity mod — adds physical presence and motion to NPCs that matches the detailed visual standard of the modlist. The ArchiveXL patching approach means zero file conflicts, making this a safe addition.
- **Conflicts:** None (uses ArchiveXL patching, no file overwrites)
- **Dependencies:** ArchiveXL
- **MO2 Notes:** Extract to game root. No file conflicts by design — safe to install alongside any other appearance mod.
- **Performance:** None

---

### Songbird's New Look REMASTERED

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/15651>
- **Version:** 1.01
- **Released:** 2024-07-09
- **Summary:** Comprehensive Songbird head mesh overhaul with custom 4K textures. 24,000+ vertices on the mesh. Available in standard and lip filler versions.
- **Why:** Songbird is a central character in the modlist's Phantom Liberty quest content. This 4K-quality visual remaster ensures she matches the modlist's 4K baseline and looks her best throughout the Songbird romance quest arc.
- **Conflicts:** Any mod changing Songbird's head mesh. Compatible with hair/clothing mods. Cannot have textures overwritten separately (authored for this specific mesh).
- **Dependencies:** None (standalone .archive install)
- **MO2 Notes:** Extract to `archive/pc/mod/`. Pure mesh/texture replacer — no scripts, survives game updates. Two file versions available: standard and lip filler. Install only one.

---

## Install Order

All mods are **Root**-category — enable Root Builder in MO2 before installing.

1. 8k-4k Skin Texture and Material
2. Songbird's New Look REMASTERED
3. NPCs Enhancement - Hyst Bodies
4. CET NPC Body Tweaks
5. Citizen Breast Physics
