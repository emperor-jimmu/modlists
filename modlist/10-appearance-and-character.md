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

### Universal Skin Tone - Realistic Textures

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/15426>
- **Version:** 1
- **Released:** 2024-11-05
- **Summary:** Comprehensive FemV texture rework covering head, body, arms, genitals, and nipple textures. 72 skin tones across diverse human skin types. Framework-agnostic — works with any VTK body mod.
- **Why:** Vanilla skin textures lack detail and range at 4K resolution. This provides 72 skin tones with realistic subsurface scattering, normal maps, and microdetails. 65 other mods depend on it — the standard for FemV skin textures.
- **Conflicts:** Other skin texture replacers for FemV. Must match skin tone selection between this and Realistic Complexion II head textures.
- **Dependencies:** VTK body mod (e.g., Vanilla HD, ANGEL, EBB)
- **MO2 Notes:** Extract to game root. Large file set (17 files). Choose matching skin tone across body and head textures. 4K recommended for the 4K baseline; 8K variant available but VRAM-intensive. Tag as **Root**.
- **Performance:** Light (4K); Moderate (8K)

### Realistic Complexion II (for Universal Skin Tone)

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/15634>
- **Version:** 1
- **Released:** 2025-12-12
- **Summary:** Hand-painted FemV head color textures with 5 skin types and 6 base variants (72 tones total). Includes hand-sculpted face detail normal map in 4K or 8K.
- **Why:** Complements Universal Skin Tone with matching head textures and enhanced face detail (normal map/roughness). The hand-sculpted face detail adds realism that vanilla head meshes lack, visible even at 4K.
- **Conflicts:** Other FemV head texture mods. Must match skin tone with Universal Skin Tone body texture.
- **Dependencies:** Universal Skin Tone (#15426) — hard requirement. VTK head mesh (from Vanilla HD or similar).
- **MO2 Notes:** Extract to game root. Choose the same skin tone family (Pale/Fair/Vanilla/Tan/Brown/Dark) as the Universal Skin Tone body texture. 4K face detail recommended; 8K may cause stutter on lower VRAM. Tag as **Root**.
- **Performance:** Light (4K); Moderate (8K face detail)

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

### Gymfiend - Body Mod - Male V - VTK

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/6423>
- **Version:** 1.4.2
- **Released:** 2025-11-10
- **Summary:** Muscular Male V body with full VTK support. Exclusive texture paths (not shared with NPCs). Includes VTK-supported head mesh, body, arms, and genitals with multiple muscle definition options.
- **Why:** Male V body customization is underserved compared to Fem V. Gymfiend provides a high-quality VTK body with exclusive texture paths (no NPC sharing), enabling tattoo and skin texture mod compatibility. 307 other mods use it as a dependency — a sign of ecosystem quality.
- **Conflicts:** Other Male V body mods. Compatible with skin texture and tattoo mods (VTK-supported).
- **Dependencies:** None (self-contained VTK body)
- **MO2 Notes:** Extract to game root. Multiple muscle definition options available in files. VTK head mesh included in separate file — install separately. Tag as **Root**.
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

### Hair Color Profiles CCXL

- **Nexus:** https://www.nexusmods.com/cyberpunk2077/mods/19115
- **Version:** 1.02
- **Released:** 2025-01
- **Summary:** Adds new hair color profiles to the character creator via the Community Color eXtended Library (CCXL) framework, expanding the range of natural and cyberpunk hair colors.
- **Why:** Character customization is limited in vanilla. Adding more hair color options via CCXL framework enables more diverse character creation without file conflicts. Serves the appearance pillar.
- **Conflicts:** None known (CCXL-based, no file overwrites)
- **Dependencies:** Community Palette Project (CCXL framework, already in modlist)
- **MO2 Notes:** Extract to game root. Requires CCXL framework. Tag as **Root**.
- **Performance:** None

### Wolfcut Hair Collection - CCXL

- **Nexus:** https://www.nexusmods.com/cyberpunk2077/mods/16697
- **Version:** 2.0
- **Released:** 2024-09
- **Summary:** Adds wolfcut hairstyle variants for Fem V via CCXL framework. Includes multiple length and styling options.
- **Why:** Expands Fem V hairstyle options with a popular modern cut. CCXL-based means no file conflicts. Serves character customization depth.
- **Conflicts:** None known (CCXL-based)
- **Dependencies:** Community Palette Project (CCXL framework, already in modlist)
- **MO2 Notes:** Extract to game root. Fem V only. Requires CCXL framework. Tag as **Root**.
- **Performance:** None

### Beanie's CCXL Salon - 21 Fem V Hairstyles

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/19191>
- **Version:** 1.3
- **Released:** 2025-02-10
- **Summary:** 21 standalone FemV hairstyles (no replacers) with CCXL hair profile compatibility. Uses vanilla hair cards for Preem Hair compatibility.
- **Why:** Expands FemV hairstyle options significantly with standalone hairs that don't replace any vanilla slots. CCXL-compatible for future hair profile expansion. Simple drag-and-drop install.
- **Conflicts:** None known. Cannot use with mods that replace vanilla hair cards if those differ from vanilla.
- **Dependencies:** None (standalone). Optional: Community Palette Project (CCXL framework) for hair profiles.
- **MO2 Notes:** Extract to game root. Hairs appear after vanilla numbered hairstyles in the character creator. Compatible with Preem Hair (uses vanilla cards). Tag as **Root**.
- **Performance:** None

### EKT Custom Character Creator - FEMV ONLY

- **Nexus:** https://www.nexusmods.com/cyberpunk2077/mods/12807
- **Version:** 1.10
- **Released:** 2024-02
- **Summary:** Enhanced character creator for Fem V with expanded sliders, additional customization options, and improved face morphing capabilities.
- **Why:** Vanilla character creator has limited sliders. This expands Fem V customization options significantly, allowing more unique and personalized character creation. The appearance pillar depends on strong character customization tools.
- **Conflicts:** Fem V only — no impact on male V or NPCs. May conflict with other character creator mods.
- **Dependencies:** ArchiveXL. Optional: VTK Vanilla HD Body - Head (#7054) if using VTK version; Eyes LOD Fix (#2865) as soft dependency. Verify on Nexus for full dependency list.
- **MO2 Notes:** Extract to game root. Fem V only. Apply before starting a new game for full effect. Tag as **Root**.
- **Performance:** None

### Vessnelle's 4K Johnny Silverhand Overhaul

- **Nexus:** https://www.nexusmods.com/cyberpunk2077/mods/8965
- **Version:** 1.0
- **Released:** 2023-08
- **Summary:** 4K texture overhaul for Johnny Silverhand's character model, including his clothing, cyberware arm, and facial details.
- **Why:** Johnny is the most visible NPC in the game, appearing in countless cutscenes and dialogue sequences. A 4K texture upgrade for his model supports the modlist's 4K baseline and ensures the most frequently seen character looks their best.
- **Conflicts:** May conflict with other Johnny Silverhand texture replacers
- **Dependencies:** None (texture replacer)
- **MO2 Notes:** Extract to `archive/pc/mod/`. Tag as **Root**.
- **Performance:** Light (single-character texture upgrade)

### Judy Enhanced Body with 4K Texture

- **Nexus:** https://www.nexusmods.com/cyberpunk2077/mods/10150
- **Version:** 1.0.2
- **Released:** 2023-10
- **Summary:** Enhanced body mesh and 4K texture for Judy Alvarez. Improves detail and resolution of Judy's character model.
- **Why:** Judy is a primary romance option and appears extensively throughout the main story and her romance questline. A 4K texture upgrade ensures she looks her best, supporting the 4K baseline. Built on the Hyst Bodies framework — compatible with #9887 already installed.
- **Conflicts:** May conflict with Judy appearance mods or other NPC replacers affecting Judy.
- **Dependencies:** Hyst Bodies (#9887, already in modlist — file is Hyst-based: `Judy_Enhanced_Hyst_Body.archive`)
- **MO2 Notes:** Extract .archive to `archive/pc/mod/`. Compatible with Hyst Bodies (#9887) by design. Tag as **Root**.
- **Performance:** Light (single-character texture upgrade)

### Lethal Curves - Modular Body Rig

- **Nexus:** https://www.nexusmods.com/cyberpunk2077/mods/23462
- **Version:** 2.0.0
- **Released:** 2025-08
- **Summary:** Modular deform rig for Fem V's body with 117,648 shape combinations. Customizes proportions while remaining compatible with all Fem V body mods. Deform-based approach sits on top of existing body meshes.
- **Why:** Provides player body customization without replacing the body mesh — works as a deform layer compatible with any body mod. Serves the appearance pillar by giving the player full control over V's body shape. Install only the Fem V target — skip the optional Judy/Panam/Evelyn NPC targets to avoid conflicts with Hyst Bodies.
- **Conflicts:** Skip the optional NPC target frameworks (Judy/Panam/Evelyn Unique Body Shape Rigs) to avoid conflicts with Hyst Bodies (#9887).
- **Dependencies:** Unique V Body Rig Framework - ArchiveXL (separate Nexus mod, install first). WolvenKit Console (required for archive generation — involves a build step, not drag-and-drop). Optional: MPAF framework for UV variants.
- **MO2 Notes:** This is NOT drag-and-drop. Requires WolvenKit Console for archive generation. Steps: (1) Install Unique V Body Rig Framework first, (2) Install Lethal Curves, (3) Use WolvenKit Console to generate the deform archive, (4) Load the generated archive in MO2. Install only Fem V target — do NOT install the optional NPC targets (Judy/Panam/Evelyn). Tag as **Root**.
- **Performance:** None (deform layer, no runtime scripts beyond initial generation)

### VAXIS's ULTRA Physics Overhaul

- **Nexus:** https://www.nexusmods.com/cyberpunk2077/mods/30332
- **Version:** 1.5
- **Released:** 2026-07
- **Summary:** Comprehensive physics overhaul for character and cloth physics. Improves the quality and realism of body physics, clothing movement, and environmental physics interactions.
- **Why:** Physics quality is particularly noticeable at 4K resolution where jittery or low-fidelity physics animations break visual consistency. This overhaul improves physics simulation quality, enhancing the visual presence of characters and their clothing.
- **Conflicts:** May conflict with other physics mods. Check compatibility with Citizen Breast Physics (#21520, already installed).
- **Dependencies:** Verify on Nexus — likely ArchiveXL and RED4ext. Check for other native plugin dependencies.
- **MO2 Notes:** Extract to game root. Test physics quality impact at 4K — may have performance implications in crowded areas. Verify compatibility with Citizen Breast Physics. Tag as **Root**.
- **Performance:** Moderate (physics calculations, more noticeable in crowded areas)

---

## Install Order

All mods are **Root**-category — enable Root Builder in MO2 before installing.

1. 8k-4k Skin Texture and Material
2. Universal Skin Tone - Realistic Textures
3. Realistic Complexion II (for Universal Skin Tone)
4. Songbird's New Look REMASTERED
5. NPCs Enhancement - Hyst Bodies
6. CET NPC Body Tweaks
7. Gymfiend - Body Mod - Male V - VTK
8. Citizen Breast Physics
9. Hair Color Profiles CCXL
10. Wolfcut Hair Collection - CCXL
11. Beanie's CCXL Salon - 21 Fem V Hairstyles
12. EKT Custom Character Creator - FEMV ONLY
13. Vessnelle's 4K Johnny Silverhand Overhaul
14. Judy Enhanced Body with 4K Texture
15. Lethal Curves - Modular Body Rig
16. VAXIS's ULTRA Physics Overhaul
