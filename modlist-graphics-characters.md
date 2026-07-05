# Characters & Creatures

**MO2 Separator:** `Graphics` → `Graphics - Characters & Creatures`

## Character, Skin, And Creature Visuals → `Graphics - Characters & Creatures`

### Core Idea

- This subsection covers the baseline visual treatment for player bodies, skin textures, and common creature visuals before later NPC-specific overhauls are chosen.
- The target is a grounded modern look that holds up in third person without drifting into overly glossy, doll-like, or hyper-stylized presentation.

### Options

- Modular modern route: clear female body base, clear male body base, separate skin textures, and a restrained creature baseline.
- Conservative route: body bases plus lighter skin upgrades, with creature visuals kept closer to vanilla.
- High-maintenance beauty route: aggressive body, skin, and NPC beauty layering with far higher refit and compatibility cost.

### Recommendation

- Use the modular modern route.
- `CBBE` should be the female body base for `Elder Wilds`. → `Graphics - Characters & Creatures`
- Keep body bases, skin textures, and creature visuals as separate decisions instead of collapsing them into one giant character-overhaul stack.
- Treat `High Poly Head 1.4` as a supported face-mesh branch rather than a mandatory baseline. Modern curated lists still use it, but it adds enough headpart and NPC-face complexity that it should be an intentional choice instead of an automatic requirement. → `Graphics - Characters & Creatures`
- Delay heavy NPC beauty decisions until the later `NPCs and Creatures` section so this layer stays focused and maintainable. → `Graphics - Characters & Creatures`
- Prioritize presentation that reads well at normal third-person distance, a grounded skin look fitting the colder visual direction, and clean body-base choices that do not create unnecessary armor-refit chaos later.
- Use `Faultier's PBR Armors and Clothes` as the primary gear PBR layer — it covers all vanilla armors, weapons, and clothes with the same PBR material workflow as the rest of the stack. → `Graphics - Characters & Creatures`
- Treat `Steel Armor Redone - PBR and Complex Material` as an optional PBR armor upgrade branch for the CC Steel Soldier set. It requires CC Alternative Armors - Steel Soldier and PG Patcher; include it only after the PBR pipeline and parallax workflow are settled. → `Graphics - Characters & Creatures`

### Recommended Body And Skin Baselines

- Female body base: `CBBE NSFW - Caliente's Beautiful Bodies Enhancer` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/74257> → `Graphics - Characters & Creatures`
- Female body extension and preset ecosystem: `CBBE 3BA (3BBB)` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/30174> → `Graphics - Characters & Creatures`
- Male body base: `Highly Improved Male Body Overhaul - HIMBO` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/74174> → `Graphics - Characters & Creatures`
- Female skin: `BnP - Female Skin` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/65274> → `Graphics - Characters & Creatures`
- Male skin: `BnP - Male Skin` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/65402> → `Graphics - Characters & Creatures`
- Character creation framework: `RaceMenu SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/29624> (SKSE-plugin character creation overhaul with sculpt mode, overlay system, and NiNode access via SKEE; satisfies the `SKEE` dependency of `EFF - Extensible Follower Framework` from section 05 and is a prerequisite for `High Poly Head`) → `Graphics - Characters & Creatures`
- Supported high-resolution face branch: `High Poly Head 1.4 SE` - official Google Drive mirror: <https://drive.google.com/drive/folders/1V_jcYzwTiKnSv8Dbv-7Z0hh9SWbkn6Bi> → `Graphics - Characters & Creatures`
- If `High Poly Head 1.4` is used, pair it with `Expressive Facegen Morphs SE`, `Expressive Facial Animation -Female Edition-`, and `Expressive Facial Animation -Male Edition-` so the face-mesh branch stays aligned with the current modern face stack. → `Graphics - Characters & Creatures`
- Chosen female preset: `FitnessGoal CBBE 3BA 3BBB Bodyslide Preset for Modest Players` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/69681> → `Graphics - Characters & Creatures`

### Face Mesh Branch Notes

- `High Poly Head 1.4` still has current ecosystem support: it is explicitly used in at least one current `Wabbajack` compilation with a whitelisted Google Drive source, and current `r/skyrimmods` usage shows it remains relevant even if it is no longer a frictionless default. → `Graphics - Characters & Creatures`
- Treat it as a player-face and selective NPC-support branch, not as proof that the whole modlist should pivot into a full beauty-overhaul stack.
- The strongest modern alternative signal found was `Alternate High Poly Head`, but that mod still depends on the original `High Poly Head 1.4` package rather than replacing it outright. → `Graphics - Characters & Creatures`
- Because headpart mismatches, facegen conflicts, and vampire edge cases are still common, keep downstream patching expectations documented in `modlist-performance.md` instead of pretending the face-mesh choice is free. → `Graphics - Characters & Creatures`

### BodySlide And Outfit Studio Install, Setup, And Configuration

- `BodySlide and Outfit Studio` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/201> → `Graphics - Characters & Creatures`
- Install `BodySlide and Outfit Studio` as a normal mod in `Mod Organizer 2`. → `Graphics - Characters & Creatures`
- Register `BodySlide x64.exe` in MO2 as an executable so all output is generated through the active profile and virtual file system. → `Graphics - Characters & Creatures`
- Keep `CBBE`, `CBBE 3BA (3BBB)`, `HIMBO`, the chosen preset, and any later body-aware armor or outfit mods installed before building meshes. → `Graphics - Characters & Creatures`
- Create a dedicated MO2 output mod such as `BodySlide Output` and direct all generated meshes there instead of letting them overwrite source mods. → `Graphics - Characters & Creatures`
- Keep `BodySlide Output` in the `Output` separator so generated body and outfit meshes stay distinct from source packages. → `Graphics - Characters & Creatures`

#### Recommended Setup Order For Elder Wilds

- Install `CBBE NSFW - Caliente's Beautiful Bodies Enhancer`. → `Graphics - Characters & Creatures`
- Install `CBBE 3BA (3BBB)` after `CBBE`. → `Graphics - Characters & Creatures`
- Install `Highly Improved Male Body Overhaul - HIMBO`. → `Graphics - Characters & Creatures`
- Install `BodySlide and Outfit Studio`. → `Graphics - Characters & Creatures`
- Install `FitnessGoal CBBE 3BA 3BBB Bodyslide Preset for Modest Players`. → `Graphics - Characters & Creatures`
- Install `OBody NG` and all chosen body-variety preset packs after the body bases and before the first BodySlide build. → `Graphics - Characters & Creatures`
- Install selected skin textures after the body bases if the skin package expects a specific layout.
- Install any armor or clothing packs that need body refits before the first serious BodySlide build.
- Add and enable the empty `BodySlide Output` mod before generating anything. → `Graphics - Characters & Creatures`

#### Recommended BodySlide Configuration

- Run BodySlide through MO2, not from the game folder directly.
- Set the output path to the dedicated `BodySlide Output` mod location.
- For female meshes, select the `FitnessGoal CBBE 3BA 3BBB` preset or the exact preset name it installs, not the plain default `CBBE` shape. → `Graphics - Characters & Creatures`
- For male meshes, choose the intended `HIMBO` preset before batch building. → `Graphics - Characters & Creatures`
- Use `Batch Build` once the baseline armor and clothing set is stable enough to avoid constant rebuild churn. → `Graphics - Characters & Creatures`
- If multiple body variants appear, choose the option that matches the active `CBBE 3BA` and `HIMBO` ecosystems instead of mixing them. → `Graphics - Characters & Creatures`
- Rebuild after installing or replacing major armor packs, outfit conversions, or body-shape presets.

#### 3BA And Preset-Specific Notes

- The chosen female body path is `CBBE NSFW` plus `CBBE 3BA (3BBB)` plus the `FitnessGoal` preset. → `Graphics - Characters & Creatures`
- Do not batch build female outfits against plain `CBBE` if the actual in-list preset requires `3BA/3BBB`. → `Graphics - Characters & Creatures`
- When armor mods offer both `CBBE` and `3BA/3BBB` options, choose the `3BA/3BBB` path for female outfits.
- Keep the female body stack consistent across body base, preset, and outfit conversions.

#### Outfit Studio Guidance

- Treat `Outfit Studio` as the exception tool for fixing or converting problem outfits, not as something to use for every armor by default. → `Graphics - Characters & Creatures`
- Use it when a chosen armor or clothing mod does not match the active `CBBE` or `HIMBO` setup cleanly.
- Keep edited or converted outfit output separate from the original source mod when practical.
- Document manual outfit fixes in the repo so future rebuilds do not depend on memory.

### Recommended Creature Baseline

- `Bellyaches Animal and Creature Pack SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/6839> → `Graphics - Characters & Creatures`

### Body Variety And Distribution

#### Core Idea

- This subsection owns NPC body diversity — distributing different BodySlide presets across NPCs so the world does not look like every female and male share the same body shape.
- It is a distribution layer on top of the body and BodySlide pipeline already established above, not a replacement for the chosen `CBBE 3BA` and `HIMBO` baselines. → `Graphics - Characters & Creatures`

#### Options

- **OBody NG** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/77016>. The maintained OBody version that works with both OStim and standalone. Reads all installed BodySlide presets and assigns them to NPCs randomly or by configuration. This is the core distribution mod — without it, every NPC uses the same single BodySlide preset.
- **Real Body - 3BA (3BBB) CBBE Bodyslide Presets** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/83299>. A curated set of semi-realistic 3BA presets designed for OBody distribution. Covers a range from slim to curvy without exaggerated proportions. The recommended preset pack for female body variety.
- **Realistic Racial Body Diversity - OBody NG Config** - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/87239>. An OBody configuration that distributes presets per race — Nords are broader, Elves leaner, Orcs more heavily built. Covers both `CBBE 3BA` and `HIMBO`. Adds lore-friendly variety on top of whatever preset pack is installed.

Additional individual presets for a realistic range (optional, to broaden variety):

- `Rugged Body - 3BA` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/86339> — muscular/fit body shape. → `Graphics - Characters & Creatures`
- `Skinny Berry - 3BA BodySlide preset` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/80714> — slim body shape. → `Graphics - Characters & Creatures`
- `Realistic chubby and curvy body - 3BA Bodyslide Preset` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/70624> — heavier body shape. → `Graphics - Characters & Creatures`

Male variety on `HIMBO`:

- `HIMBO SliderPresets Pack 02` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/176023> — 10 HIMBO presets for male body diversity. → `Graphics - Characters & Creatures`
- `The Common Guy - SerketHetyt's HIMBO Preset` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/111807> — a grounded, realistic male preset. → `Graphics - Characters & Creatures`
- `Greek God -- HIMBO Bodyslide Preset` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/54349> — muscular/athletic physique for male variety. Adult-content page; review before adding if modlist aims for a clean showcase. → `Graphics - Characters & Creatures`

#### Recommendation

- Install **OBody NG** as the core distribution layer.
- Install **Real Body - 3BA** as the baseline preset pack for female variety — it is curated, semi-realistic, and designed for OBody.
- Install **Realistic Racial Body Diversity** for per-race body distribution on top of the preset pack — this makes orcs, nords, elves, and beast races feel physically distinct beyond their textures.
- Add the individual presets (`Rugged Body`, `Skinny Berry`, `Realistic chubby and curvy`) to increase the variety range beyond what Real Body covers. → `Graphics - Characters & Creatures`
- For male NPCs, install **HIMBO SliderPresets Pack 02** to give OBody NG material for male distribution alongside the `Realistic Racial Body Diversity` config. → `Graphics - Characters & Creatures`

#### Risks & Compatibility

- OBody NG requires building all included presets in BodySlide with the `Create Morphs` option ticked. This means a larger BodySlide batch build and more generated meshes. → `Graphics - Characters & Creatures`
- Every additional preset pack increases BodySlide build time and the number of generated morph files. Keep the pack size intentional rather than maximal.
- OBody NG works with `CBBE 3BA` and `HIMBO` but may need a config adjustment if other body mods (e.g. custom follower bodies) are added later. → `Graphics - Characters & Creatures`
- The `FitnessGoal` preset remains the player-character and default body shape; OBody distributes the additional presets only to NPCs. → `Graphics - Characters & Creatures`

#### Acceptance Criteria

- Female NPCs display visibly different body shapes (slim, athletic, curvy, heavy) across the world.
- Male NPCs display visible variety.
- Per-race body differences are noticeable — Nords look broader than Altmer.
- OBody NG is configurable via MCM and does not affect the player character unless configured to.
- BodySlide builds complete without errors.

### Clothing And Armor Texture Upgrades

- `Immersive Fur Garments` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/77073> — adds new fur garments (shawls, ponchos, coats) to leveled lists using meshes from the FurArmorSetsSE resource. Adds clothing variety without changing the body or skin stack. → `Graphics - Characters & Creatures`
- `Immersive Fur Garments - SPID` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/82177> — the SPID-based distribution addon that replaces the original plugin's NPC and leveled-list edits with SPID distribution. ESL-flagged, removes the original .esp requirement, distributes fur garments to bandits, guards, hunters, jarls, orc tribes, and townfolk. Install both the base mod (meshes and textures only, delete the .esp) and the SPID addon for the modern distribution approach. → `Graphics - Characters & Creatures`
- `Faultier's PBR Armors and Clothes` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/175319> (2.9 GB) — complete PBR retexture of all vanilla armors, weapons, and clothes. Requires Community Shaders and PGPatcher. Complements VPBR by filling the gear PBR gap. → `Graphics - Characters & Creatures`
- `RUSTIC CLOTHING - Special Edition` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/4703> — higher-res clothing texture replacer. VPBR covers clothing materials via PBR; RUSTIC CLOTHING provides higher-resolution diffuse/normal maps. Test for style consistency before including. → `Graphics - Characters & Creatures`
- `Dwemer Armors and Weapons Retexture SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/93088> — gear-side companion to VPBR's Dwemer ruin textures and `CC's HD Dwemer Automatons - Remastered`, so Dwemer machines and wearable loot share a consistent visual language. → `Graphics - Characters & Creatures`
- `Steel Armor Redone - PBR and Complex Material` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/177513> — PBR and Complex Material retexture of the Creation Club Steel Armor set. Requires CC Alternative Armors - Steel Soldier, Community Shaders (for PBR) or ENB (for Complex Materials), and PG Patcher (see [`modlist-graphics-pgpatcher.md`](modlist-graphics-pgpatcher.md)). Optional PBR armor upgrade. → `Graphics - Characters & Creatures`

### Risks & Compatibility

- Body-base decisions can quietly create a large armor-refit and outfit-conversion workload later.
- Choosing a `3BA/3BBB` preset increases female outfit compatibility requirements compared with plain `CBBE`. → `Graphics - Characters & Creatures`
- Letting BodySlide output overwrite source mods would make later auditing and rebuilds much harder.
- Skin mods that look strong in screenshots can still appear too polished or glossy in actual gameplay lighting.
- `High Poly Head 1.4` adds headpart and facegen complexity, especially once vampire fixes, NPC overhauls, wig-to-headpart patching, and custom presets enter the stack.
- Letting this section expand into full NPC beautification would duplicate later planning work.

### Acceptance Criteria

- `CBBE` is established as the female body base and the male-body path is clear enough to support later outfit planning.
- `CBBE 3BA (3BBB)` and the chosen `FitnessGoal` preset are integrated cleanly enough that female body and outfit generation follow one consistent pipeline. → `Graphics - Characters & Creatures`
- `BodySlide and Outfit Studio` is installed, registered in MO2, and configured to generate into a dedicated `BodySlide Output` mod.
- `High Poly Head 1.4` is documented as a supported optional branch with its dependency chain and maintenance cost spelled out clearly.
- Skin textures look believable under the chosen weather and lighting route during normal play.
- Creature visuals improve the world's overall quality without clashing with the environment stack.

## Hair, Eyes, And Beards → `Graphics - Characters & Creatures`

### Core Idea

- This subsection owns the per-character face assets that affect every NPC the player looks at: hairstyles, eye textures, and beard options.
- It is the visual counterpart to the body-and-skin subsection above and ensures character close-ups match the grim-dark tone without pulling in full NPC face-gen overhauls that belong in `modlist-npcs.md`. → `Graphics - Characters & Creatures`
- Hairstyles and eye textures have outsized impact on perceived character quality because Skyrim spends more close-up time on faces than on bodies.

### Options

- High-quality hair baseline: `KS Hairdos SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/6817> → `Graphics - Characters & Creatures`
- Eye-texture baseline: `Eyes Nouveaux` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/131210> → `Graphics - Characters & Creatures`
- Classic eye-texture comparison: `The Eyes Of Beauty SSE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/16185> — the long-standing community-standard eye texture replacer with lore-friendly heterochromia options, separate player/NPC packs, and vampire eye support. Available as an alternative to `Eyes Nouveaux` if the final visual direction prefers its established look over the newer khisartin-style textures. → `Graphics - Characters & Creatures`
- Eye-cubemap upgrade: `LDD Clean Cubemap for Eyes 4K` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/168060> — replaces the vanilla eye cubemap textures with cleaner, higher-resolution 4K reflections, removing the muddy/low-res specular that vanilla eyes exhibit under the chosen lighting stack. Stacks on top of the eye-texture baseline. → `Graphics - Characters & Creatures`
- Optional beard companion: keep the vanilla beard set unless a stronger beard pack surfaces that fits the tone and stays compatible with the chosen beard mesh.
- Discipline-first route: rely on vanilla hair and eye textures and skip the subsection entirely if the project later decides NPC beautification belongs in a single combined `modlist-npcs.md` pass. → `Graphics - Characters & Creatures`

### Recommendation

- Use `KS Hairdos SSE` as the strongest first-pass hair baseline. It is the community-canonical high-quality hair pack (141K endorsements) and covers male and female hairstyles that read cleanly at 4K and under the chosen lighting route. → `Graphics - Characters & Creatures`
- Use `Eyes Nouveaux` as the eye-texture baseline. Its khisartin-style textures and tintable eyelashes fit the grim-dark tone better than brightly colored anime-style alternatives, and it does not require a separate face-mod rewrite to display correctly. → `Graphics - Characters & Creatures`
- Keep the beard decision minimal. The chosen body and face mesh stack usually supports vanilla beards well, and adding a beard pack that disagrees with the beard mesh creates clipping or stretching issues that outweigh the visual gain.
- Keep the discipline-first route alive long enough to confirm the project does not want to absorb all character-beautification work here, but the hair and eye baselines above are likely the correct answer for the modern-graphics pillar.

### Risks & Compatibility

- High-poly hair can clash with extreme lighting and shadow setups chosen in the lighting subsection; verify KS Hairdos strands behave cleanly with `Lux` and the chosen shadow mod. → `Graphics - Characters & Creatures`
- Eye-texture mods can look out of place if they lean too stylized; pick a khisartin-style or realistic pack that matches the grim-dark tone.
- Hair assets are common in NPC-overhaul mod conflicts; if `modlist-npcs.md` later bundles NPC edits, check for hair-distribution patches.
- Adding a beard pack without testing the beard mesh creates obvious clipping at the neck under most lighting setups.

### Acceptance Criteria

- `Elder Wilds` has one clear hair baseline and one clear eye-texture baseline. → `Graphics - Characters & Creatures`
- Faces at 4K look intentionally designed rather than vanilla, with no obvious clipping from the lighting or shadow stack.
- The chosen hair and eye assets do not force a full NPC overhaul in `modlist-npcs.md` but stay compatible with whatever it later selects.
- Beard visuals remain acceptable without becoming a primary subsection decision.

## Skeleton And Bone Replacers → `Graphics - Characters & Creatures`

### Core Idea

- This subsection owns visual upgrades to the in-world skeleton and bone assets: the skulls, bone piles, and skeleton models the player encounters in dungeons, nordic ruins, draugr crypts, and dragon priest rooms.
- It is intentionally kept separate from the rigged skeleton baseline in `modlist-animations.md`. `modlist-animations.md` decides which skeleton file the game uses for animation rigging; this subsection decides how the in-world bones and skulls look once the player is looking at them. → `Graphics - Characters & Creatures`
- A high-quality skeleton replacer pays off in dungeon-dense playthroughs because the player is constantly looking at bones, piles, and skulls.

### Options

- High-quality skeleton and bone baseline: `Skeleton Replacer HD - SE` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/52845> → `Graphics - Characters & Creatures`
- Discipline-first route: rely on the vanilla skeleton assets and skip the dedicated replacer mod, since the rigged skeleton baseline from `modlist-animations.md` already replaces what the player sees most often. → `Graphics - Characters & Creatures`
- Patch-layer companion: `Skeleton Replacer HD - Mesh Patches for Various Mods` - Nexus: <https://www.nexusmods.com/skyrimspecialedition/mods/177253> (only if the base mod is installed and the modlist includes a creature or content mod that needs a mesh patch for compatibility). → `Graphics - Characters & Creatures`

### Recommendation

- Use `Skeleton Replacer HD - SE` as the visual skeleton and bone baseline. It replaces all the skeleton and human-bone models and textures in the game (including beast skeletons, dragon priest remains, and bone piles) with high-resolution versions (9,894 endorsements, 808K unique downloads, by PraedythXVI). It is the community-canonical skeleton replacer for the SE era and works under the PBR and lighting stack from the rest of this section. → `Graphics - Characters & Creatures`
- Keep the discipline-first route alive if the project decides the visual improvement is not worth the added mod count, since most skeleton models are seen only briefly during dungeon traversal.
- Keep the patch-layer companion conditional. It only matters if the modlist includes a creature or worldspace mod that explicitly needs a mesh patch for compatibility with the base replacer.
- Keep this subsection separate from the rigged skeleton ownership in `modlist-animations.md`. Replacer does not equal rigged skeleton.

### Risks & Compatibility

- `Skeleton Replacer HD` can conflict with creature mods that ship their own skeleton and bone assets. Check the patch companion only if real conflicts appear. → `Graphics - Characters & Creatures`
- Some vanilla draugr and dragon priest models have unique skull or bone assets that the mod can override; verify unique visual elements are preserved.
- High-resolution bones can look out of place in a dungeon that has not received matching texture work. The mod is generally compatible with the locked PBR and texture stack, but verify on first dungeon encounter.

### Acceptance Criteria

- `Elder Wilds` has one clear visual skeleton and bone baseline or a deliberate discipline-first decision. → `Graphics - Characters & Creatures`
- Skulls, bone piles, and skeleton assets in dungeons look intentionally designed rather than vanilla.
- The visual replacer does not affect the rigged skeleton decisions in `modlist-animations.md`.
- Any required mesh patch companion is documented and installed only if the modlist actually needs it.
