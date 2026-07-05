# Characters & Creatures

**MO2 Separator:** `Graphics` → `Graphics - Characters & Creatures`

## Character, Skin, And Creature Visuals → `Graphics - Characters & Creatures`

This subsection covers the baseline visual treatment for player bodies, skin textures, and common creature visuals before later NPC-specific overhauls are chosen. The target is a grounded modern look that holds up in third person without drifting into overly glossy, doll-like, or hyper-stylized presentation.

### Baseline

- Use the modular modern route: clear female body base, clear male body base, separate skin textures, and a restrained creature baseline.
- **CBBE** — Female body base. → `Graphics - Characters & Creatures`
- Keep body bases, skin textures, and creature visuals as separate decisions.
- Treat **High Poly Head 1.4** as a supported face-mesh branch rather than a mandatory baseline.
- Delay heavy NPC beauty decisions until `modlist-npcs.md` so this layer stays focused.
- Use **Faultier's PBR Armors and Clothes** as the primary gear PBR layer. → `Graphics - Characters & Creatures`
- Treat **Steel Armor Redone - PBR and Complex Material** as an optional PBR armor upgrade (requires CC Alternative Armors - Steel Soldier and PGPatcher). → `Graphics - Characters & Creatures`

### Alternatives

- Conservative route: body bases plus lighter skin upgrades, creature visuals kept closer to vanilla.
- High-maintenance beauty route: aggressive body, skin, and NPC beauty layering with far higher refit and compatibility cost.

### Recommended Body And Skin Baselines

- Female body base: **CBBE NSFW - Caliente's Beautiful Bodies Enhancer** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/74257)) → `Graphics - Characters & Creatures`
- Female body extension and preset ecosystem: **CBBE 3BA (3BBB)** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/30174)) → `Graphics - Characters & Creatures`
- Male body base: **Highly Improved Male Body Overhaul - HIMBO** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/74174)) → `Graphics - Characters & Creatures`
- Female skin: **BnP - Female Skin** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/65274)) → `Graphics - Characters & Creatures`
- Male skin: **BnP - Male Skin** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/65402)) → `Graphics - Characters & Creatures`
- Character creation framework: **RaceMenu SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/29624)) → `Graphics - Characters & Creatures`
- Supported high-resolution face branch: **High Poly Head 1.4 SE** — Official Google Drive mirror: <https://drive.google.com/drive/folders/1V_jcYzwTiKnSv8Dbv-7Z0hh9SWbkn6Bi> → `Graphics - Characters & Creatures`
- If using High Poly Head 1.4, pair with `Expressive Facegen Morphs SE`, `Expressive Facial Animation -Female Edition-`, and `Expressive Facial Animation -Male Edition-`. → `Graphics - Characters & Creatures`
- Chosen female preset: **FitnessGoal CBBE 3BA 3BBB Bodyslide Preset for Modest Players** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/69681)) → `Graphics - Characters & Creatures`

### Face Mesh Branch Notes

- `High Poly Head 1.4` still has current ecosystem support: used in at least one current Wabbajack compilation with a whitelisted Google Drive source, and current `r/skyrimmods` usage shows it remains relevant. → `Graphics - Characters & Creatures`
- Treat it as a player-face and selective NPC-support branch, not as proof that the whole modlist should pivot into a full beauty-overhaul stack.
- The strongest modern alternative found was `Alternate High Poly Head`, but that mod still depends on the original `High Poly Head 1.4` package rather than replacing it outright. → `Graphics - Characters & Creatures`
- Because headpart mismatches, facegen conflicts, and vampire edge cases are still common, keep downstream patching expectations documented in `modlist-performance.md`. → `Graphics - Characters & Creatures`

### BodySlide And Outfit Studio Install, Setup, And Configuration

- **BodySlide and Outfit Studio** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/201)) → `Graphics - Characters & Creatures`
- Install as a normal mod in MO2. → `Graphics - Characters & Creatures`
- Register `BodySlide x64.exe` in MO2 as an executable so all output is generated through the active profile and virtual file system. → `Graphics - Characters & Creatures`
- Keep CBBE, CBBE 3BA, HIMBO, the chosen preset, and any later body-aware armor/outfit mods installed before building meshes. → `Graphics - Characters & Creatures`
- Create a dedicated MO2 output mod such as `BodySlide Output` and direct all generated meshes there. → `Graphics - Characters & Creatures`
- Keep `BodySlide Output` in the `Output` separator. → `Graphics - Characters & Creatures`

#### Recommended Setup Order For Elder Wilds

1. Install CBBE NSFW. → `Graphics - Characters & Creatures`
2. Install CBBE 3BA (3BBB) after CBBE. → `Graphics - Characters & Creatures`
3. Install HIMBO. → `Graphics - Characters & Creatures`
4. Install BodySlide and Outfit Studio. → `Graphics - Characters & Creatures`
5. Install FitnessGoal preset. → `Graphics - Characters & Creatures`
6. Install OBody NG and all body-variety preset packs after body bases, before first BodySlide build. → `Graphics - Characters & Creatures`
7. Install selected skin textures after body bases if the skin package expects a specific layout.
8. Install any armor/clothing packs needing body refits before first BodySlide build.
9. Add and enable the empty `BodySlide Output` mod before generating anything. → `Graphics - Characters & Creatures`

#### Recommended BodySlide Configuration

- Run BodySlide through MO2, not from the game folder directly.
- Set output path to the dedicated `BodySlide Output` mod location.
- For female meshes, select the `FitnessGoal CBBE 3BA 3BBB` preset, not the plain default CBBE shape. → `Graphics - Characters & Creatures`
- For male meshes, choose the intended HIMBO preset before batch building. → `Graphics - Characters & Creatures`
- Use Batch Build once the baseline armor/clothing set is stable enough to avoid constant rebuild churn. → `Graphics - Characters & Creatures`
- If multiple body variants appear, choose the option matching the active CBBE 3BA and HIMBO ecosystems.
- Rebuild after installing or replacing major armor packs, outfit conversions, or body-shape presets.

#### 3BA And Preset-Specific Notes

- The chosen female body path is CBBE NSFW plus CBBE 3BA plus the FitnessGoal preset. → `Graphics - Characters & Creatures`
- Do not batch build female outfits against plain CBBE if the actual in-list preset requires 3BA/3BBB. → `Graphics - Characters & Creatures`
- When armor mods offer both CBBE and 3BA/3BBB options, choose the 3BA/3BBB path.
- Keep the female body stack consistent across body base, preset, and outfit conversions.

#### Outfit Studio Guidance

- Treat Outfit Studio as the exception tool for fixing or converting problem outfits, not as a default for every armor. → `Graphics - Characters & Creatures`
- Use it when a chosen armor/clothing mod does not match the active CBBE or HIMBO setup cleanly.
- Keep edited/converted outfit output separate from the original source mod when practical.
- Document manual outfit fixes so future rebuilds do not depend on memory.

### Recommended Creature Baseline

- **Bellyaches Animal and Creature Pack SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/6839)) → `Graphics - Characters & Creatures`

### Body Variety And Distribution

Body variety distributes different BodySlide presets across NPCs so the world does not look like every female and male share the same body shape. It is a distribution layer on top of the body and BodySlide pipeline already established above.

#### Baseline

- **OBody NG** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/77016)) — Core distribution layer. → `Graphics - Characters & Creatures`
- **Real Body - 3BA (3BBB) CBBE Bodyslide Presets** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/83299)) — Curated semi-realistic 3BA presets designed for OBody distribution. → `Graphics - Characters & Creatures`
- **Realistic Racial Body Diversity - OBody NG Config** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/87239)) — Per-race body distribution (broader Nords, leaner Elves, heavily built Orcs). Covers both CBBE 3BA and HIMBO. → `Graphics - Characters & Creatures`
- Individual presets to broaden variety: `Rugged Body - 3BA`, `Skinny Berry - 3BA`, `Realistic chubby and curvy body - 3BA`. → `Graphics - Characters & Creatures`
- Male variety: **HIMBO SliderPresets Pack 02** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/176023)) — 10 presets for male body diversity. → `Graphics - Characters & Creatures`

#### Alternatives

- OBody NG is the only maintained OBody version that works with both OStim and standalone.
- Additional male presets: `The Common Guy - SerketHetyt's HIMBO Preset`, `Greek God -- HIMBO Bodyslide Preset` (adult-content page; review before adding).

#### Notes

- OBody NG requires building all included presets in BodySlide with `Create Morphs` ticked — larger batch build and more generated meshes.
- Every additional preset pack increases BodySlide build time. Keep pack size intentional.
- OBody NG works with CBBE 3BA and HIMBO but may need config adjustment if other body mods are added.
- The FitnessGoal preset remains the player-character default; OBody distributes additional presets only to NPCs.

### Clothing And Armor Texture Upgrades

- **Immersive Fur Garments** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/77073)) — Adds new fur garments to leveled lists. → `Graphics - Characters & Creatures`
- **Immersive Fur Garments - SPID** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/82177)) — SPID-based distribution addon replacing the original plugin. ESL-flagged. Install both base mod (meshes/textures only, delete .esp) and SPID addon. → `Graphics - Characters & Creatures`
- **Faultier's PBR Armors and Clothes** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/175319), 2.9 GB) — Complete PBR retexture of all vanilla armors, weapons, and clothes. Requires Community Shaders and PGPatcher. → `Graphics - Characters & Creatures`
- **RUSTIC CLOTHING - Special Edition** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/4703)) — Higher-res clothing textures. Test for style consistency before including. → `Graphics - Characters & Creatures`
- **Dwemer Armors and Weapons Retexture SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/93088)) — Gear-side companion to VPBR's Dwemer ruin textures. → `Graphics - Characters & Creatures`
- **Steel Armor Redone - PBR and Complex Material** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/177513)) — PBR retexture of the CC Steel Armor set. Requires CC Alternative Armors - Steel Soldier, Community Shaders, and PGPatcher. Optional. → `Graphics - Characters & Creatures`

### Notes

- Body-base choices can create a large armor-refit and outfit-conversion workload later.
- Choosing a 3BA/3BBB preset increases female outfit compatibility requirements compared with plain CBBE. → `Graphics - Characters & Creatures`
- Letting BodySlide output overwrite source mods makes later auditing and rebuilds much harder.
- Skin mods that look strong in screenshots can still appear too polished or glossy in actual gameplay lighting.
- High Poly Head 1.4 adds headpart and facegen complexity, especially with vampire fixes, NPC overhauls, and custom presets.
- Letting this section expand into full NPC beautification duplicates later planning work.

## Hair, Eyes, And Beards → `Graphics - Characters & Creatures`

This subsection owns the per-character face assets: hairstyles, eye textures, and beard options. It ensures character close-ups match the grim-dark tone without pulling in full NPC face-gen overhauls that belong in `modlist-npcs.md`.

### Baseline

- **KS Hairdos SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/6817)) — Community-canonical high-quality hair pack (141K endorsements). → `Graphics - Characters & Creatures`
- **Eyes Nouveaux** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/131210)) — Khisartin-style eye textures fitting the grim-dark tone. → `Graphics - Characters & Creatures`
- **LDD Clean Cubemap for Eyes 4K** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/168060)) — Cleaner eye cubemap textures. Stacks on top of the eye-texture baseline. → `Graphics - Characters & Creatures`
- Keep the beard decision minimal; vanilla beards work well with the chosen body and face mesh stack.

### Alternatives

- **The Eyes Of Beauty SSE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/16185)) — Long-standing community-standard eye texture replacer. Alternative to Eyes Nouveaux if the visual direction prefers its established look. → `Graphics - Characters & Creatures`
- Discipline-first route: rely on vanilla hair and eye textures entirely.

### Notes

- High-poly hair can clash with extreme lighting and shadow setups; verify KS Hairdos works cleanly with Lux and the chosen shadow mod. → `Graphics - Characters & Creatures`
- Eye textures that lean too stylized look out of place; pick a realistic pack matching the grim-dark tone.
- Hair assets are common in NPC-overhaul conflicts; check for hair-distribution patches when `modlist-npcs.md` is active.
- Adding a beard pack without testing the beard mesh creates obvious neck clipping under most lighting.

## Skeleton And Bone Replacers → `Graphics - Characters & Creatures`

This subsection owns visual upgrades to in-world skeleton and bone assets: skulls, bone piles, and skeleton models in dungeons, nordic ruins, draugr crypts, and dragon priest rooms. Kept separate from the rigged skeleton baseline in `modlist-animations.md`.

### Baseline

- **Skeleton Replacer HD - SE** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/52845)) — Replaces all skeleton and human-bone models/textures with high-resolution versions (9,894 endorsements, PraedythXVI). → `Graphics - Characters & Creatures`
- **Skeleton Replacer HD - Mesh Patches for Various Mods** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/177253)) — Only if the modlist includes a creature or content mod that needs a mesh patch. → `Graphics - Characters & Creatures`

### Alternatives

- Discipline-first route: rely on vanilla skeleton assets and skip dedicated replacer, since most skeleton models are seen briefly during dungeon traversal.

### Notes

- Skeleton Replacer HD can conflict with creature mods that ship their own skeleton/bone assets. → `Graphics - Characters & Creatures`
- Some vanilla draugr and dragon priest models have unique assets the mod can override; verify unique visual elements are preserved.
- High-resolution bones can look out of place in a dungeon that has not received matching texture work.
