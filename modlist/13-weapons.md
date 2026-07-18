# 13 - Weapons

**Goal:** Weapons and combat tools. New firearms, melee weapons, cyberware
weapons, attachments, optics, and weapon visuals.

> Mods will be added as they pass through the research pipeline.
> See `research/mods-to-investigate.md` for candidates under review.

---

### Militech Holosight

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/6463>
- **Version:** 0.84
- **Released:** 2024-02-08
- **Summary:** Replaces the Kanone MINI optic with a futuristic holographic sight. Custom model, icon, and tech-weapon charging bar integration.
- **Why:** Vanilla Kanone MINI is generic and dated-looking. The holographic sight adds a proper cyberpunk aesthetic to weapon optics with a clean, futuristic reticle and visual feedback for tech weapon charging.
- **Conflicts:** None known
- **Dependencies:** None
- **MO2 Notes:** Place `Scope_2.archive` in `Cyberpunk 2077/archive/pc/mod/`. Replaces Kanone MINI — other optics are unaffected.
- **Performance:** None

### Expanded Ammo Counts

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/5040>
- **Version:** 1.0
- **Released:** 2022-08-21
- **Summary:** Expands maximum ammo capacity for all weapon types. Available in Unlimited and Realistic variants.
- **Why:** Vanilla ammo pools are large enough to rarely matter. The Realistic variant turns ammo into a resource to manage, adding light survival tension without being punishing.
- **Conflicts:** None known
- **Dependencies:** Cyber Engine Tweaks
- **MO2 Notes:** Use the **Realistic** variant only (not Unlimited -- conflicts with no-cheat philosophy). Install to `Cyberpunk 2077/bin/x64/plugins/cyber_engine_tweaks/mods/`. No FOMOD — choose Realistic file from the Files tab.
- **Performance:** None

### Better Chimera Mods

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/18209>
- **Version:** 1.1.1
- **Released:** 2024-12-03
- **Summary:** Overhauls Chimera weapon modifications (Firecracker, etc.) to be more impactful and mechanically interesting while staying balanced.
- **Why:** Vanilla Chimera mods are underwhelming for Phantom Liberty's late-game reward tier. This rebalance makes them worth hunting without power creep, matching the Merchants of Death quality standard.
- **Conflicts:** Other mods modifying Chimera weapon mod stats
- **Dependencies:** Phantom Liberty, ArchiveXL, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Uses `archive/pc/mod/` and `r6/tweaks/` structure. v1.1.1 adds Pyromania Unchained compatibility.
- **Performance:** None

### Nomad Cache - New Iconic Weapons

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/19234>
- **Version:** 1.0.1
- **Released:** 2025-01-21
- **Summary:** Adds four Nomad-themed iconic weapons (Inferno-V8R, Warden Infernal, Satara Trailblazer, Tomahawk Tepew) with custom models, effects, and world-placed acquisition.
- **Why:** High-quality weapon pack from the Merchants of Death collective. Each weapon has unique mechanics tied to location-based discovery rather than crafting, rewarding exploration.
- **Conflicts:** Other mods using the same base weapon icon slots
- **Dependencies:** Phantom Liberty, ArchiveXL, Codeware, RED4ext, redscript, Trigger Mode Control (for Trailblazer variant), TweakXL
- **MO2 Notes:** Extract to game root. Uses `archive/pc/mod/`, `r6/tweaks/`, and `r6/scripts/`. Trigger Mode Control required for the Trailblazer Satara variant. Weapons found through world exploration -- refer to mod page images for locations.
- **Performance:** None

### Mox Cache - New Iconic Weapons

- **Nexus:** <https://www.nexusmods.com/cyberpunk2077/mods/20073>
- **Version:** 1.0.2
- **Released:** 2025-03-02
- **Summary:** Adds three Mox-themed iconic weapons (Sloppy Seconds Guillotine, Glitch Bitch Achilles, +1 secret) with custom appearance, unique effects, and vendor/world acquisition.
- **Why:** Complements Nomad Cache with a different faction theme. Creative weapon mechanics (bounce-between-enemies, micro-taser activation) add tactical variety. World-integrated through vendors and exploration rather than menus.
- **Conflicts:** Other mods using the same base weapon icon slots
- **Dependencies:** Phantom Liberty, ArchiveXL, Codeware, RED4ext, redscript, TweakXL
- **MO2 Notes:** Extract to game root. Weapons acquired from: Lizzie's Bar bartender (Glitch Bitch), NCPD Scanner Hustle south of Kabuki Market (Sloppy Seconds), Jig-Jig Street vendor (secret weapon). Alternate acquisition via Mr. Blue Eyes vendor mod available.
- **Performance:** None

---

## Install Order

1. Militech Holosight
2. Expanded Ammo Counts
3. Better Chimera Mods
4. Nomad Cache - New Iconic Weapons
5. Mox Cache - New Iconic Weapons

**Notes:**

- **Militech Holosight** and **Expanded Ammo Counts** are standalone with minimal or no dependencies — install early
- **Better Chimera Mods**, **Nomad Cache**, and **Mox Cache** all require Phantom Liberty and the TweakXL/ArchiveXL/redscript stack — ensure core utilities (Category 02) are installed first
- **Nomad Cache** and **Mox Cache** share the same author and archiving structure — no overlap between them
- **Trigger Mode Control** must be installed for Nomad Cache's Trailblazer Satara variant
