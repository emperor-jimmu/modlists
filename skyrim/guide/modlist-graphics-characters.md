# Characters & Creatures

## Character, Skin, And Creature Visuals
Baseline visual treatment for player bodies, skin textures, and common creature visuals before NPC-specific overhauls are chosen. Target: grounded modern look that holds up in third person without drifting into overly glossy, doll-like, or hyper-stylized presentation.

### Body Bases And Skins

**⏱ Install order:** CBBE → CBBE 3BA → HIMBO → RaceMenu → BnP skins → female preset → male preset → overlay/freckle packs.

#### Female Body

| Mod | Notes |
| --- | --- |
| [CBBE NSFW](https://www.nexusmods.com/skyrimspecialedition/mods/74257) | Female body base. |
| [CBBE 3BA (3BBB)](https://www.nexusmods.com/skyrimspecialedition/mods/30174) | Extension and preset ecosystem. |
| [BnP — Female Skin](https://www.nexusmods.com/skyrimspecialedition/mods/65274) | Female skin textures. |

#### Male Body

| Mod | Notes |
| --- | --- |
| [HIMBO](https://www.nexusmods.com/skyrimspecialedition/mods/74174) | Male body base. |
| [BnP — Male Skin](https://www.nexusmods.com/skyrimspecialedition/mods/65402) | Male skin textures. |

#### Character Creation

| Mod | Notes |
| --- | --- |
| [RaceMenu SE](https://www.nexusmods.com/skyrimspecialedition/mods/29624) | Character creation framework. |
| High Poly Head 1.4 SE | [Google Drive mirror](https://drive.google.com/drive/folders/1V_jcYzwTiKnSv8Dbv-7Z0hh9SWbkn6Bi). Pair with Expressive Facegen Morphs + Expressive Facial Animation (Female + Male). |
| [SlimFantasy — 3BAv2 Body Preset](https://www.nexusmods.com/skyrimspecialedition/mods/119145) | Female Bodyslide preset. Slim/lean dancer physique. |
| [HIMBO Preset — Chadborn](https://www.nexusmods.com/skyrimspecialedition/mods/155757) | Male Bodyslide preset. Muscular build. |
| [Lovely Makeup — Racemenu Overlays](https://www.nexusmods.com/skyrimspecialedition/mods/94271) | Makeup overlay collection. |
| [Lovely Makeup 2](https://www.nexusmods.com/skyrimspecialedition/mods/102335) | Additional makeup overlays. |
| [Koralina's Freckles and Moles](https://www.nexusmods.com/skyrimspecialedition/mods/62508) | Freckle and mole overlays. |

### Face Mesh Branch Notes

- `High Poly Head 1.4` still has current ecosystem support — used in Wabbajack compilations with a whitelisted Google Drive source.
- Treat it as a player-face and selective NPC-support branch, not a full beauty-overhaul stack.
- The strongest modern alternative (`Alternate High Poly Head`) still depends on the original HPH 1.4 package.
- Headpart mismatches, facegen conflicts, and vampire edge cases are still common — keep downstream patching documented in → `Performance`.

---

### BodySlide And Outfit Studio Setup

- **BodySlide and Outfit Studio** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/201))
- Install as a normal mod in MO2.
- Register `BodySlide x64.exe` in MO2 as an executable.
- Create a dedicated `BodySlide Output` mod before generating anything.
- Keep `BodySlide Output` in the `Output` separator.
- Keep CBBE, CBBE 3BA, HIMBO, the chosen preset, and body-aware armor/outfit mods installed before building meshes.

#### Recommended Setup Order

1. Install CBBE NSFW
2. Install CBBE 3BA (3BBB)
3. Install HIMBO
4. Install BodySlide and Outfit Studio
5. Install SlimFantasy preset
6. Install OBody NG and all body-variety preset packs (before first BodySlide build)
7. Install selected skin textures (if the skin package expects a specific layout)
8. Install armor/clothing packs needing body refits (before first BodySlide build)
9. Add and enable the empty `BodySlide Output` mod before generating anything

#### BodySlide Configuration

- Run BodySlide through MO2, not from the game folder.
- Set output path to the dedicated `BodySlide Output` mod location.
- **Female meshes:** Select the `SlimFantasy` preset (not plain CBBE).
- **Male meshes:** Select the `Chadborn` preset before batch building.
- Use **Batch Build** once the baseline armor/clothing set is stable enough to avoid constant rebuilds.
- If multiple body variants appear, choose the option matching active CBBE 3BA and HIMBO ecosystems.
- Rebuild after installing or replacing major armor packs, outfit conversions, or body-shape presets.

#### 3BA And Preset-Specific Notes

- The chosen female body path is CBBE NSFW + CBBE 3BA + SlimFantasy preset.
- Do not batch build female outfits against plain CBBE if the actual in-list preset requires 3BA/3BBB.
- When armor mods offer both CBBE and 3BA/3BBB options, choose 3BA/3BBB.
- Keep the female body stack consistent across base, preset, and outfit conversions.

#### Outfit Studio Guidance

- Treat Outfit Studio as the exception tool for fixing problem outfits, not a default for every armor.
- Use when a chosen armor/clothing mod does not match the active CBBE or HIMBO setup cleanly.
- Keep edited/converted outfit output separate from the original source mod.
- Document manual outfit fixes so future rebuilds don't depend on memory.

---

### Body Variety And Distribution

Distributes different BodySlide presets across NPCs so the world doesn't look like everyone shares the same body shape.

#### Baseline

- **OBody NG** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/77016)) — Core distribution layer.
- **Real Body - 3BA (3BBB) CBBE Presets** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/83299)) — Curated semi-realistic 3BA presets for OBody distribution.
- **Realistic Racial Body Diversity - OBody NG Config** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/87239)) — Per-race body distribution (broader Nords, leaner Elves, heavy Orcs). Covers both CBBE 3BA and HIMBO.
- **Individual presets:** `Rugged Body - 3BA`, `Skinny Berry - 3BA`, `Realistic chubby and curvy body - 3BA`.
- **Male variety:** **HIMBO SliderPresets Pack 02** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/176023)) — 10 presets.

#### Alternatives

- OBody NG is the only maintained OBody version that works with both OStim and standalone.
- Additional male presets: `The Common Guy - SerketHetyt's HIMBO Preset`, `Greek God -- HIMBO Bodyslide Preset` (adult-content page; review before adding).

#### Notes

- OBody NG requires building all included presets in BodySlide with `Create Morphs` ticked — larger batch build.
- Every additional preset pack increases BodySlide build time. Keep pack size intentional.
- OBody NG works with CBBE 3BA and HIMBO but may need config adjustment for other body mods.
- SlimFantasy preset remains the player-character default; OBody distributes additional presets to NPCs only.

---

### Clothing And Armor Texture Upgrades

| Mod | Notes |
| --- | --- |
| [Faultier's PBR Armors and Clothes](https://www.nexusmods.com/skyrimspecialedition/mods/175319) (2.9 GB) | Complete PBR retexture of all vanilla armors/weapons/clothes. Requires CS + PGPatcher. |
| [RUSTIC CLOTHING — SE](https://www.nexusmods.com/skyrimspecialedition/mods/4703) | Higher-res clothing textures. Test for style consistency. |
| [Dwemer Armors and Weapons Retexture SE](https://www.nexusmods.com/skyrimspecialedition/mods/93088) | Gear-side companion to VPBR's Dwemer ruin textures. |
| [Steel Armor Redone — PBR](https://www.nexusmods.com/skyrimspecialedition/mods/177513) | PBR retexture of CC Steel Armor. Requires CC Alternative Armors — Steel Soldier, CS, PGPatcher. Optional. |
| [Robes Retexture SE](https://www.nexusmods.com/skyrimspecialedition/mods/110655) | Higher-quality robe textures for all vanilla robes. |
| [Divine Crusader Retexture SE](https://www.nexusmods.com/skyrimspecialedition/mods/123738) | Retexture of Divine Crusader armor set. |
| [aMidianBorn Book of Silence SE](https://www.nexusmods.com/skyrimspecialedition/mods/35382) | Comprehensive armor/weapon/dragon retexture. 207K endorsements. |
| [aMidianBorn Content Addon](https://www.nexusmods.com/skyrimspecialedition/mods/35390) | Extends aMidianBorn coverage to additional armors. Install after Book of Silence. |
| [aMidianBorn Content Addon - 3BA and HIMBO Patch](https://www.nexusmods.com/skyrimspecialedition/mods/144952) | Body refit patch for Content Addon. |
| [Resurgence Armory - Artifact Weapons and Armor Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/83855) | Visual overhaul for artifact weapons and armor models. |
| [3BA and HIMBO Refits for Resurgence Armors](https://www.nexusmods.com/skyrimspecialedition/mods/85669) | Body refit for Resurgence Armory armors. |
| [HDT-SMP Vanilla Armors](https://www.nexusmods.com/skyrimspecialedition/mods/142450) | Adds HDT-SMP physics to all vanilla armors. |

---

### Recommended Creature Baseline

| Mod | Notes |
| --- | --- |
| [Bellyaches Animal and Creature Pack SSE](https://www.nexusmods.com/skyrimspecialedition/mods/6839) | Creature texture foundation. |

---

### General Notes

- Body-base choices create a large armor-refit and outfit-conversion workload later.
- Choosing 3BA/3BBB increases female outfit compatibility requirements versus plain CBBE.
- Letting BodySlide output overwrite source mods makes auditing and rebuilds much harder.
- Skin mods that look strong in screenshots can still appear too polished or glossy in gameplay lighting.
- High Poly Head 1.4 adds headpart and facegen complexity with vampire fixes, NPC overhauls, and custom presets.
- Do not let this section expand into full NPC beautification — that belongs in → `NPCs`.

---

## Hair, Eyes, And Beards
Per-character face assets: hairstyles, eye textures, and beard options. Ensures character close-ups match the grim-dark tone without pulling in full NPC face-gen overhauls.

| Mod | Type | Notes |
| --- | --- | --- |
| [KS Hairdos SSE](https://www.nexusmods.com/skyrimspecialedition/mods/6817) | Baseline | Community-canonical hair pack. 141K endorsements. |
| [Eyes Nouveaux](https://www.nexusmods.com/skyrimspecialedition/mods/131210) | Baseline | Khisartin-style eye textures, grim-dark tone. |
| [LDD Clean Cubemap for Eyes 4K](https://www.nexusmods.com/skyrimspecialedition/mods/168060) | Baseline | Cleaner eye cubemaps. Stacks on eye-texture baseline. |
| [Brows](https://www.nexusmods.com/skyrimspecialedition/mods/1062) | Baseline | Brow shape and texture replacer for all races. |
| [Better Argonian Horns](https://www.nexusmods.com/skyrimspecialedition/mods/80568) | Baseline | Higher-quality Argonian horn meshes and textures. BOS-based. |
| [The Eyes Of Beauty SSE](https://www.nexusmods.com/skyrimspecialedition/mods/16185) | Alternative | Community-standard alternative to Eyes Nouveaux. |
| [Argonian - Khajiit FabULook Eyes SSE](https://www.nexusmods.com/skyrimspecialedition/mods/15136) | Alternative | High-res eye textures for Argonian and Khajiit. |
| [Beards of Power](https://www.nexusmods.com/skyrimspecialedition/mods/42635) | Alternative | High-fidelity beard meshes and textures. Adds variety over vanilla. |
| [BnP - Teeth Overhaul](https://www.nexusmods.com/skyrimspecialedition/mods/84288) | Alternative | Higher-quality teeth meshes/textures. Complements BnP skin stack. |
| [New Beast Feet](https://www.nexusmods.com/skyrimspecialedition/mods/107689) | Alternative | Higher-detail beast race (Khajiit/Argonian) feet with claws/digits. |
| [SG Female Eyebrows](https://www.nexusmods.com/skyrimspecialedition/mods/25890) + [Improved](https://www.nexusmods.com/skyrimspecialedition/mods/93266) | Alternative | Higher-fidelity female eyebrow shapes. Use Improved variant. |
| [Eyes of Beauty - Nouveaux](https://www.nexusmods.com/skyrimspecialedition/mods/152223) | Alternative | Combines Eyes Nouveaux meshes with The Eyes of Beauty textures. Requires both as dependencies. |
| Discipline-first route | Alternative | Rely on vanilla hair and eye textures entirely. |

Keep the beard decision minimal; vanilla beards work well with the chosen body and face mesh stack.

### Risks & Compatibility

- High-poly hair can clash with extreme lighting/shadow setups; verify KS Hairdos works with the CS-native lighting stack.
- Eye textures that lean too stylized look out of place; pick a realistic pack matching grim-dark.
- Hair assets are common in NPC-overhaul conflicts; check for hair-distribution patches when → `NPCs` is active.
- Adding a beard pack without testing creates obvious neck clipping under most lighting.

---

## Skeleton And Bone Replacers
Visual upgrades to in-world skeleton and bone assets: skulls, bone piles, skeleton models in dungeons, Nordic ruins, draugr crypts, dragon priest rooms. Kept separate from the rigged skeleton baseline in → `Animations`.

| Mod | Type | Notes |
| --- | --- | --- |
| [Skeleton Replacer HD — SE](https://www.nexusmods.com/skyrimspecialedition/mods/52845) | Baseline | High-res skeleton/bone models. Choose **2K** main file. |
| [Skeleton Replacer HD — Mesh Patches](https://www.nexusmods.com/skyrimspecialedition/mods/177253) | Baseline | Add only if modlist includes a creature/content mod needing a mesh patch. |
| Discipline-first route | Alternative | Rely on vanilla skeleton assets. |

### Risks & Compatibility

- Skeleton Replacer HD can conflict with creature mods that ship their own skeleton/bone assets.
- Some vanilla draugr and dragon priest models have unique assets the mod can override; verify they're preserved.
- High-resolution bones can look out of place in a dungeon without matching texture work.
