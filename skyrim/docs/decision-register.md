# Elder Wilds — Decision Register

Open decisions requiring resolution before the modlist can advance. Each is presented with pros/cons weighed against Elder Wilds's design pillars.

**Pillars (abbreviated):**
- **UI/Gfx** — Modern UI and graphics (Community Shaders exclusive)
- **World** — Big, dark, awe-inspiring world
- **Content** — Lots of new content (quests, dungeons, worldspaces)
- **Mechanics** — Modern mechanics (combat, stealth, movement, feedback)
- **3P/GP** — Full third-person gamepad parity (non-negotiable)
- **Living** — Living the world (survival, side activities, LoTD museum)

---

## 1. Combat Animation Framework

**Status:** OPEN  
**Affects:** Mechanics, 3P/GP  
**Section:** `Animations and Movement`  
**Reference:** `modlist-animations.md:18`

### Option A: BFCO — Behavior Framework Combat Overhaul

**Pros:**
- Modern successor to MCO with new behaviors (jumping attacks, charged attacks, swimming combat)
- Integrates with the perk system — combat perks can modify behavior
- Fixes known MCO issues (directional power attacks, input buffering)
- Native AE 1.6.1170 support
- Community actively migrating (`r/skyrimmods`: "BFCO fixes several issues found in MCO/ADXP")

**Cons:**
- Fewer publicly available movesets than MCO (ecosystem still growing)
- Newer — edge cases less battle-tested
- Some users report BFCO power-attack combo key issues; workaround exists (Power Attack Key NG)
- Smaller YouTube/tutorial coverage

### Option B: MCO — Modern Combat Overhaul (ADXP)

**Pros:**
- Vast moveset ecosystem — largest library of third-person attack animations
- Mature, widely tested across thousands of modlists
- Extensive community documentation, tutorials, and troubleshooting resources
- Compatible with SCAR, Valhalla Combat, Precision, TK Dodge RE

**Cons:**
- Older codebase — no perk integration, no swimming/jumping attacks
- Some long-standing bugs (directional power attack inconsistencies)
- Not actively adding new features — development has shifted to BFCO
- Requires Power Attack Key NG for combo key support

### Recommendation: **Tentative — BFCO**
BFCO is the forward-looking choice that aligns with "Modern Mechanics." The moveset ecosystem gap is closing. Verify that available movesets cover all weapon types for third-person gamepad parity before locking.

---

## 2. Perk Overhaul

**Status:** OPEN  
**Affects:** Mechanics, World, Living  
**Section:** `Magic & Perks`  
**Reference:** `modlist-expanded-magic.md:16-24`

### Option A: Adamant — A Perk Overhaul (Simonrim)

**Pros:**
- Balanced, vanilla-plus philosophy — familiar but deeper
- Fully coherent with Mysticism (magic), Aetherius (races), Evenstar (stones), Starfrost (survival), Thaumaturgy (enchanting), Gourmet (cooking), Apothecary (alchemy) — the Simonrim ecosystem
- Active maintenance, AE 1.6.1170 support
- Clean integration with Experience + Static Skill Leveling (already baseline)
- Strong community trust — cornerstone of many respected modlists

**Cons:**
- Restrained compared to Ordinator — fewer wild build options
- No "identity-driven" perk trees (no Warlock/Druid/Shaman specialization)
- Locks you into Simonrim-aligned choices for magic, crafting, and progression — harder to mix-and-match

### Option B: Ordinator — Perks of Skyrim (EnaiRim)

**Pros:**
- Maximum build expression — ~400 perks across deeply specialized trees
- Pairs with Apocalypse (spells), Imperious (races), Andromeda (stones), Summermyst (enchantments), Wintersun (religion) — the EnaiRim ecosystem
- Huge community, well-documented, extensively patched
- Highest replayability through build diversity

**Cons:**
- High complexity — can overwhelm players and conflict with "clean, readable at 4K" pillar
- More records to patch, more compatibility debt with world-content mods
- Some perks assume keyboard/mouse precision (not ideal for 3P/GP)
- Simonrim alternatives are already baselined in most other categories (Mysticism, Starfrost, Thaumaturgy) — Ordinator would fight the grain

### Option C: Vokrii — Minimalistic Perks (EnaiRim)

**Pros:**
- Middle ground — more expressive than Adamant, less complex than Ordinator
- Clean, readable perk descriptions
- Compatible with either ecosystem (Simonrim or EnaiRim)

**Cons:**
- Less cohesive ecosystem — doesn't commit to either direction
- Niche choice — smaller patch ecosystem than Adamant or Ordinator

### Recommendation: **Tentative — Adamant**
The modlist already leans heavily Simonrim (Mysticism, Starfrost, Thaumaturgy, Aetherius, Evenstar, Gourmet, Apothecary). Adamant completes that coherent progression stack. If more build expression is needed, layer Triumvirate archetype spells on top rather than switching perk frameworks.

---

## 3. Magic Overhaul

**Status:** OPEN  
**Affects:** Mechanics, Content  
**Section:** `Magic & Perks`  
**Reference:** `modlist-expanded-magic.md:29-51`

### Option A: Mysticism — A Magic Overhaul (Simonrim)

**Pros:**
- Designed as companion to Adamant — seamless integration
- Balances vanilla spells, adds sensible new ones without bloat
- Cleanly categorized — readable for 4K UI and gamepad navigation
- Active maintenance, strong Reddit community trust

**Cons:**
- Modest spell count — no wild build-defining spells
- No archetype-specific spell lines (Cleric, Druid, Shadow Mage)
- May feel thin for "Lots of New Content" pillar without supplementation

### Option B: Apocalypse — Magic of Skyrim (EnaiRim)

**Pros:**
- 155 new spells — maximum variety and build expression
- Pairs with Ordinator for deep perk-spell synergy
- Well-established, extensively patched for third-party content

**Cons:**
- Many spells designed for keyboard/mouse — gamepad spell-switching can be cumbersome
- Spell bloat — finding the right spell in menus breaks 3P/GP flow
- Competes with Mysticism as primary overhaul — they should not be combined

### Option C: Mysticism + Triumvirate (layered)

**Pros:**
- Mysticism provides balanced baseline
- Triumvirate adds identity-driven archetype spells (Cleric, Druid, Shadow Mage, Shaman, Warlock)
- Best of both worlds — sane baseline with build-defining specialization
- Both are compatible with Adamant

**Cons:**
- Two-mod stack — more coordination for patches
- Triumvirate's archetype spells may feel narrow if you don't commit to one path

### Recommendation: **Tentative — Mysticism + Triumvirate**
Mysticism provides the sane, balanced foundation that Adamant expects. Triumvirate layers archetype spells for build identity without overwhelming the baseline.

---

## 4. Survival System

**Status:** OPEN  
**Affects:** Living, World, Mechanics  
**Section:** `Survival & Needs`  
**Reference:** `modlist-expanded-survival.md:12-25`

### Option A: Starfrost — A Survival Overhaul (Simonrim)

**Pros:**
- Fits the Simonrim-aligned progression family (Adamant, Mysticism, etc.)
- Tight, focused design — hunger, fatigue, cold as interlocking systems
- Modern codebase, AE 1.6.1170 support
- Clean integration with the `Living the World` pillar

**Cons:**
- Less feature-rich than Frostfall + Campfire — no equipment-based warmth, no camping skill trees
- Tighter tuning may not appeal to all playstyles
- Smaller community than Frostfall — fewer user presets and guides

### Option B: Frostfall + Campfire (classic)

**Pros:**
- Deepest wilderness survival experience — equipment warmth, wetness, exposure
- Campfire + Skills of the Wild adds 4 new skill trees (Hunting, Foraging, Tracking, Camping)
- Huge community, extensive documentation, rich patch ecosystem
- Feels like "Big, dark, awe-inspiring world" — weather is genuinely threatening

**Cons:**
- Heavier script load — compatibility risk with other heavy-script mods (LoTD, OStim, combat stack)
- Requires Campfire script optimization patch for AE 1.6.1170
- Not Simonrim-aligned — competes with Starfrost
- Frostfall's warmth/coverage system adds UI complexity that challenges 3P/GP

### Option C: SunHelm Survival

**Pros:**
- Practical, well-rounded middle ground
- Integrated needs + cold + disease in one mod
- Good MCM configurability for gamepad

**Cons:**
- Less cohesive ecosystem integration than Starfrost or Frostfall
- Jack-of-all-trades — doesn't excel at any one survival dimension

### Recommendation: **Tentative — Starfrost**
Simonrim coherence wins. Frostfall's script load and UI complexity risk the 3P/GP pillar on a list this large. If Frostfall's depth is desired, Skills of the Wild can layer on top of Starfrost's lighter base.

---

## 5. Weather System

**Status:** OPEN  
**Affects:** UI/Gfx, World  
**Section:** `Weather & Water`  
**Reference:** `modlist-graphics-weather.md:10`

### Option A: RAID Weathers

**Pros:**
- Designed specifically for Community Shaders compatibility
- Clean, realistic lighting — natural color palette
- Modern codebase, active development
- Good performance profile for a large modlist

**Cons:**
- Less dramatic than Obsidian or NAT — may not deliver "grim-dark" aesthetic without heavy tuning
- Smaller community than Cathedral or Obsidian
- Fewer companion mods (no RAID-specific cloud/storm additions)

### Option B: Cathedral Weathers

**Pros:**
- Most popular weather mod — huge community, extensive presets
- Balanced visual profile — works well with CS
- Many companion mods (Cathedral Weathers MCM, seasonal variants)
- Proven in large modlists (Lexy's LOTD, Living Skyrim)

**Cons:**
- Older — some features may be superseded by CS's own atmospheric modules
- More conservative visual direction than Obsidian or NAT

### Option C: Obsidian Weathers

**Pros:**
- Dark, moody aesthetic — closest to "grim-dark" pillar
- Strong seasonal variation — feels like a living world
- Pairs well with True Storms for dramatic weather events
- Active community — many Obsidian-based weather compilations

**Cons:**
- CS compatibility needs verification — some Obsidian weather types may not have CS-specific patches
- Color grading can be too desaturated for some tastes — may need a weather-tuning companion

### Option D: NAT.ENB III

**Pros:**
- Most photo-realistic weather — closest to "Modern UI and graphics" ideal
- Built-in post-processing that complements CS
- Strong atmospheric depth — awe-inspiring world

**Cons:**
- Historically ENB-focused — CS compatibility notes needed
- Performance cost is moderate-to-high
- Smaller patch ecosystem than Cathedral

### Recommendation: **Tentative — Obsidian Weathers**
The "grim-dark" pillar points to Obsidian's moody palette. CS compatibility needs explicit verification, but Obsidian's aesthetic aligns most with "Big, dark, awe-inspiring world." Fallback is Cathedral if Obsidian CS patches are insufficient.

---

## 6. Alternate Start

**Status:** OPEN  
**Affects:** Living, Content, Mechanics  
**Section:** `Character & Progression`  
**Reference:** `modlist-expanded-character.md:12-37`

### Option A: Alternate Perspective — Alternate Start

**Pros:**
- Modern, actively maintained
- Keeps Helgen intact as a visitable town — world continuity
- Fits LoTD's museum-oriented gameplay (you can start as a relic hunter)
- Cleaner than ASLAL for scripted quests

**Cons:**
- Smaller patch ecosystem than ASLAL
- Fewer start scenarios than ASLAL or Skyrim Unbound Reborn
- Some quest mods may assume ASLAL specifically

### Option B: Skyrim Unbound Reborn

**Pros:**
- Most configurable — full control over dragon spawns, word walls, shouts
- Full Dragonborn-quest disregard (pillar goal)
- Modern codebase, AE 1.6.1170 support
- Pairs with "Why I Came to Skyrim - Origin Stories" for narrative hooks

**Cons:**
- More setup/config required — adds friction to initial playthrough
- Config MCM may be complex for gamepad
- Fewer "Living the World" roleplay hooks than Alternate Perspective

### Option C: Alternate Start — Live Another Life (ASLAL)

**Pros:**
- Gold standard — most patched start mod, universal compatibility
- Classic start scenarios (property owner, guild member, shipwrecked, etc.)
- Huge patch ecosystem for quest mods, LoTD, follower mods

**Cons:**
- Older codebase — Arthmoor no longer active
- Helgen-destruction assumption baked in — world-state decisions pre-answered
- Less flexible than Skyrim Unbound Reborn for Dragonborn avoidance

### Recommendation: **Tentative — Skyrim Unbound Reborn**
"Full disregard for the Dragonborn quest" is an explicit pillar. Skyrim Unbound Reborn delivers that most directly. Pair with "Why I Came to Skyrim - Origin Stories" for narrative grounding.

---

## 7. Race + Standing Stone Combo

**Status:** OPEN  
**Affects:** Mechanics, Living  
**Section:** `Character & Progression`  
**Reference:** `modlist-expanded-character.md:42-88`

### Option A: Aetherius + Evenstar (Simonrim)

**Pros:**
- Coherent Simonrim progression stack — pairs with Adamant + Mysticism + Starfrost
- Clean, balanced racial abilities — no gimmicks
- Evenstar standing stones are meaningful but restrained
- Active maintenance, strong community trust

**Cons:**
- Less expressive than Imperious + Andromeda — race identity less pronounced
- Standing stones feel utility-oriented rather than identity-defining
- No race-specific quests or unlockable abilities

### Option B: Imperious + Andromeda (EnaiRim)

**Pros:**
- Race identity is deeply defining — racial quests, unlockable abilities
- Andromeda standing stones have discovery-based mechanics (find all stones for secrets)
- High replayability — races feel genuinely different
- Strong community, extensive documentation

**Cons:**
- Competes with the otherwise-Simonrim progression stack
- Andromeda's "find all stones" mechanic pushes exploration in a completionist direction — may conflict with slow, organic "Living the World" gameplay
- More complex — more records to patch with NPC/combat/quest mods

### Recommendation: **Tentative — Aetherius + Evenstar**
Coherence with the Simonrim stack (Adamant, Mysticism, Starfrost) outweighs individual expressiveness. Race identity can come from Traits (Biggie Traits) and religion (Pilgrim/Wintersun) instead.

---

## 8. Combat Framework (Valhalla + Precision confirmed; Dodge TBD)

**Status:** PARTIALLY OPEN  
**Affects:** Mechanics, 3P/GP  
**Section:** `Third-Person Gameplay`  
**Reference:** `modlist-third-person.md:53`, `modlist-animations.md:18`

Valhalla Combat and Precision are locked as baseline. The open question is the dodge system and whether to layer additional combat mods.

### Option A: TK Dodge RE — Script Free (Recommended)

**Pros:**
- Script-free — minimal performance impact
- Configurable dodge step/distance/speed
- Works natively with BFCO/MCO attack commitment
- Clean third-person gamepad integration (dodge mapped to dodge key or double-tap)
- Proven in thousands of modlists

**Cons:**
- Dodge-only — no parry, no deflect, no combo mechanics
- Step dodge and roll dodge — no dark-souls-style quickstep without additional animation packs
- Some users report dodge failing during recovery windows — mitigatable with input buffering

### Option B: DMCO — Distar Modern Combat Overhaul

**Pros:**
- Integrated dodge + attack commitment in one framework
- Designed for MCO specifically — tight integration
- Includes dodge, sprint-attack, and power-attack behaviors

**Cons:**
- Tied to MCO ecosystem — if moving to BFCO, DMCO may not be compatible
- Heavier than TK Dodge RE
- Less mature — fewer patches, less community testing

### Option C: Discipline-first (no dodge)

**Pros:**
- Zero compatibility risk — no dodge mod to conflict with behavior engine or combat mods
- Forces position-based combat rather than i-frame dodging
- Cleaner for "third-person gamepad parity" — fewer buttons to map

**Cons:**
- Doesn't deliver "Modern mechanics" — dodge is expected in modern third-person combat
- Valhalla Combat's timed-block system benefits from complementary dodge

### Related: Relentless
- Difficulty and pacing mod. Evaluate interaction with Arena encounter zones and Valhalla Combat before adding.

### Recommendation: **Tentative — TK Dodge RE**
Minimal, proven, script-free. Maps cleanly to gamepad. The "Modern mechanics" pillar demands some dodge mechanic, and TK Dodge RE is the lowest-risk path. Evaluate Relentless after the combat stack is playtested.

---

## 9. Death Alternative

**Status:** OPEN  
**Affects:** Mechanics, Living, World  
**Section:** `Survival & Needs`  
**Reference:** `modlist-expanded-survival.md:83-95`

### Option A: Shadow of Skyrim — Nemesis System

**Pros:**
- Defeat becomes a narrative event rather than a reload — fits "Living the World"
- Enemies that defeat you gain name, buffs, presence — world remembers
- Respawn with debuffs — raises stakes without ending the run
- Defeat your nemesis to restore progress — compelling gameplay loop
- Unique fit for grim-dark — death has consequence beyond reload

**Cons:**
- Script-heavy — compatibility risk with OStim, LoTD, combat stack
- Edge cases with scripted-death quest sequences (The Forgotten City, Wyrmstooth)
- May conflict with Alternate Perspective/Skyrim Unbound Reborn starter scenarios
- Not universally loved — some players find the debuff system punishing

### Option B: Discipline-first (vanilla death)

**Pros:**
- Zero compatibility risk
- Players already understand the death/reload loop
- No script conflicts with quest mods, combat mods, or survival mods

**Cons:**
- Doesn't leverage the "Living the World" or "Modern mechanics" pillars
- Death loses meaning in a survival-oriented list — just reload and retry

### Recommendation: **Tentative — Shadow of Skyrim**
If it passes compatibility testing with Valhalla Combat, Precision, TK Dodge, Alternate Perspective, Wyrmstooth, and The Forgotten City, it's a strong thematic fit. The nemesis loop is uniquely "Elder Wilds." Fallback to vanilla if script conflicts emerge.

---

## 10. Loot and World Deleveling

**Status:** OPEN  
**Affects:** World, Mechanics, Living  
**Section:** `Crafting & Economy`  
**Reference:** `modlist-expanded-crafting.md:109-111`, `modlist-design-philosophy.md`

The design philosophy has adopted **#1 Static with Hard Threat** — encounters are static-level (not scaling to player), high-difficulty dungeons gate powerful loot. This requires a loot distribution mod.

### Option A: Open World Loot — SkyPatched (Recommended)

**Pros:**
- Curated encounter zone loot — high-level zones drop high-level loot, low-level zones don't
- SkyPatched variant avoids plugin slot and patch conflicts
- Pairs naturally with Arena encounter zones and the "Static with Hard Threat" dial
- Modern codebase, AE 1.6.1170 support

**Cons:**
- Less aggressive scarcity than MorrowLoot Ultimate
- May need per-mod patching for quest-added artifacts (LoTD especially)
- Some users find encounter-zone-only loot limits world exploration reward

### Option B: MorrowLoot Ultimate

**Pros:**
- Deepest scarcity — truly delevels the world
- Legendary artifacts feel legendary — Daedric/Glass/Ebony are extremely rare
- Matches "Big, dark, awe-inspiring world" — powerful items are discoveries, not drops

**Cons:**
- Heavy patch burden — every armor/weapon/artifact/NPC mod needs an MLU patch
- Can feel punishing with a survival baseline — low-level characters have few resources
- Older codebase — maintenance status uncertain
- Higher compatibility debt than Open World Loot

### Recommendation: **Tentative — Open World Loot (SkyPatched)**
The SkyPatched variant saves plugin slots and reduces patch debt. The "Static with Hard Threat" dial is already adopted — OWL implements it cleanly. MorrowLoot Ultimate's scarcity can be approximated via OWL + Arena tweaking.

---

## 11. Religion System

**Status:** OPEN  
**Affects:** Living, Mechanics  
**Section:** `Character & Progression`  
**Reference:** `modlist-expanded-character.md:127-130`

### Option A: Pilgrim — A Religion Overhaul (Simonrim)

**Pros:**
- Fits the Simonrim family — coherent with Adamant, Aetherius, Mysticism
- Clean, balanced — devotion grants modest bonuses without dominating build identity
- Active maintenance, AE 1.6.1170 support

**Cons:**
- Less expressive than Wintersun — fewer deities, simpler worship mechanics
- No deity abandonment penalties or favor fluctuation

### Option B: Wintersun — Faiths of Skyrim (EnaiRim)

**Pros:**
- Deepest religion system — 30+ deities, favor/abandonment mechanics, shrine bonuses
- Faction-based worship (Daedric Prince favor changes gameplay)
- High roleplay expression — religion shapes the character

**Cons:**
- Competes with the Simonrim progression stack
- Abandonment penalties and favor tracking add complexity — gamepad menu navigation
- More records to patch with quest and world-content mods

### Option C: Gods and Worship

**Pros:**
- Full deity worship system — shrines, blessings, and penalties for neglect
- Modular — can worship multiple gods
- Works with either Simonrim or EnaiRim

**Cons:**
- Newer mod — smaller community, fewer patches
- Less tested in large modlists

### Recommendation: **Tentative — Pilgrim**
Simonrim coherence again. If deeper faith expression is desired, Wintersun is the fallback. Gods and Worship needs more community vetting.

---

## 12. Water

**Status:** OPEN  
**Affects:** UI/Gfx, World  
**Section:** `Weather & Water`  
**Reference:** `modlist-graphics-weather.md:53-54`

### Option A: A Water Made For CS In Mind (Recommended)

**Pros:**
- Purpose-built for Community Shaders — zero compatibility guesswork
- Clean, modern water shaders — no ENB dependency
- Pairs naturally with CS Water Effects and Unified Water modules
- Small footprint, no performance concern

**Cons:**
- Newer mod — less community testing than older water mods
- May not look as dramatic as Realistic Water Two in screenshots

### Option B: Simplicity of Sea + Water Effects CS

**Pros:**
- Lightweight, proven water mod — used in many CS modlists
- Pairs well with CS Water Effects

**Cons:**
- Less tailored to CS than "A Water Made For CS"
- Simpler water shader — less visual depth than purpose-built alternatives

### Option C: Realistic Water Two

**Pros:**
- Gold standard for water — most visually impressive
- Extensive patch ecosystem for world-content mods

**Cons:**
- Historically ENB-oriented — CS compatibility requires patches
- Heavy — more performance cost than alternatives
- Not CS-first — competes with the exclusive-CS pillar

### Recommendation: **Tentative — A Water Made For CS In Mind**
CS-first design is the pillar. This mod was literally made for the framework. If visual depth is insufficient, Simplicity of Sea is the fallback.

---

## 13. Landscape / Terrain Textures

**Status:** OPEN  
**Affects:** UI/Gfx, World  
**Section:** `Terrain & Flora`  
**Reference:** `modlist-graphics-terrain.md:17-31`

### Option A: TomatoRim PBR (Recommended)

**Pros:**
- Modern PBR landscape textures — full Community Shaders PBR pipeline compatibility
- Newer, actively developed — supersedes older Tomato releases
- PBR responds correctly to CS lighting — no baked-in ENB assumptions
- Covers landscapes with DLCs

**Cons:**
- PBR look is divisive — some find it too glossy on wet surfaces
- Requires PGPatcher run for full effect
- Relatively new — smaller user base than Cathedral Landscapes

### Option B: Cathedral Landscapes

**Pros:**
- Most popular landscape mod — proven visual quality
- Grass + terrain integration — Cathedral grass blends naturally
- Massive community, extensive presets and patches

**Cons:**
- Older — no PBR variant (diffuse/normal only)
- Doesn't leverage CS PBR pipeline — wastes a core CS capability
- Less "grim-dark" than PBR-based alternatives

### Option C: Seasonal Landscapes

**Pros:**
- Dynamic seasonal texture swapping — snow in winter, green in summer
- Fits "Living the world" pillar — world changes with time
- Impressive in screenshots

**Cons:**
- Extensive patching required — every landscape-changing mod needs a seasonal patch
- High compatibility debt for large modlists
- Performance cost of texture swapping

### Recommendation: **Tentative — TomatoRim PBR**
PBR is a core capability of the CS-exclusive pipeline. Cathedral Landscapes is the safe fallback, and Seasonal Landscapes is too patch-heavy for this list's complexity.

---

## 14. Trees

**Status:** OPEN  
**Affects:** UI/Gfx, World  
**Section:** `Terrain & Flora`  
**Reference:** `modlist-graphics-terrain.md:145`

### Option A: Traverse the Ulvenwald (Recommended)

**Pros:**
- Dense forest coverage — "Big, dark, awe-inspiring world"
- High-quality 3D tree models
- Active development, regular updates
- Good performance profile for the visual density

**Cons:**
- May be too dense for some areas — can obscure gameplay and navigation
- Third-person camera may clip through dense canopy
- Ulvenwald + DynDOLOD 3 needs tuning for distant tree LOD

### Option B: Nature of the Wild Lands

**Pros:**
- Forest overhaul with regional variety — different trees per hold
- Paired with seasonal grass/flora support
- More natural distribution than Ulvenwald's density

**Cons:**
- Higher patch burden — regional variety means more landscape patches
- Less "dark forest" aesthetic — more naturalistic, less grim

### Option C: Fabled Forests

**Pros:**
- Fantasy-leaning tree overhaul — large, dramatic, overgrown Skyrim
- Fits "Big, awe-inspiring" pillar — trees feel ancient and massive
- Strong visual identity

**Cons:**
- Most performance-heavy option
- Fantasy aesthetic may clash with "grim-dark" realism
- Third-person camera issues amplified by larger tree models

### Recommendation: **Tentative — Traverse the Ulvenwald**
Best balance of density, performance, and grim-dark aesthetic. Verify third-person camera clearance with chosen camera mod before locking.

---

## 15. Snow Elf Race

**Status:** OPEN  
**Affects:** Content, Living, Mechanics  
**Reference:** `TODO.md:13`

### Option A: The Ancient Falmer (Recommended)

**Pros:**
- Comprehensive — full race implementation with perks, abilities, starting gear
- Larger patch footprint — well-integrated with major quest/overhaul mods
- More endorsements, more community trust
- Fits "Lots of new content" — playable Snow Elf with lore grounding

**Cons:**
- Requires RaceCompatibility (ESP-based) — adds a plugin slot
- Heavier — more records to conflict-manage

### Option B: Lost Races of Nirn

**Pros:**
- Modular framework — Snow Elf is one race among many
- Uses RCS (no ESP) — lighter plugin footprint
- More flexible — add other races later if desired

**Cons:**
- Less comprehensive per-race — Snow Elf implementation is thinner
- Smaller patch ecosystem — fewer mods explicitly support LRON races
- Less community signal — fewer endorsements than Ancient Falmer

### Recommendation: **Tentative — The Ancient Falmer**
More comprehensive implementation wins. Verify HPH patch availability, dialogue framework compatibility, and alternate start support before locking.

---

## 16. Undeath — Lich Path

**Status:** OPEN  
**Affects:** Content, Living, Mechanics  
**Reference:** `AGENTS.md:152-154` (Session Decisions)

Undeath Remastered is the candidate quest mod. If adopted, pick one lich gameplay route.

### Option A: Classical Lichdom (Recommended)

**Pros:**
- Most endorsed, most community-tested lich gameplay mod for Undeath
- Balanced progression — lichdom as earned power, not instant godhood
- Active patches for modern AE 1.6.1170
- Good compatibility with perk and magic overhauls

**Cons:**
- Less feature-rich than The Ascension
- Lich form is permanent transformation — no switching back (by design)

### Option B: Immersive Lichdom

**Pros:**
- Lich form integrated naturally — lich state interleaved with human form
- Less dramatic power spike — stays within "balanced" lane

**Cons:**
- Less endorsed — smaller community trust
- Lich gameplay may feel underwhelming compared to Classical Lichdom

### Option C: The Ascension

**Pros:**
- Most feature-rich lich gameplay — full lich tree, soul harvesting, phylactery mechanics
- Feels like a genuine power fantasy path

**Cons:**
- Power level may outstrip the "Static with Hard Threat" progression dial
- Higher compatibility debt with perk/magic/survival overhauls
- Newer — less battle-tested in large modlists

### Mandatory if Undeath adopted:
- GDOS Door Patch (132038)
- Camera Fix (52950)
- Conjuration Absorb Fix (18762)
- Facegen Data Patch (20046)

### Recommendation: **Tentative — Classical Lichdom**
Most balanced, most tested, best fit for the "Static with Hard Threat" dial. The Ascension's power fantasy undermines the progression philosophy.

---

## 17. Stealth Overhaul

**Status:** OPEN  
**Affects:** Mechanics, 3P/GP  
**Section:** `Magic & Perks`  
**Reference:** `modlist-expanded-magic.md:76-78`

### Option A: RAID — Realistic AI Detection (Recommended)

**Pros:**
- Script-free — minimal performance impact
- Recalibrates detection based on light, sound, movement, and line-of-sight
- Pairs well with third-person stealth — detection is environmental, not camera-angle
- Proven in many modlists, well-documented
- 23.8K endorsements

**Cons:**
- Doesn't add new stealth mechanics — detection recalibration only
- May need tuning with custom weather/lighting mods

### Option B: Book of Shadows

**Pros:**
- Full stealth overhaul — detection, noise, suspicion, crime
- High-expression stealth gameplay — identity-driven stealth builds
- Works with modern combat frameworks

**Cons:**
- Complex — more systems to conflict-manage
- Heavier than RAID — more records, more scripts
- May conflict with the restrained "Mechanics" pillar (less is more)

### Option C: Discipline-first (vanilla + perk overhaul stealth tree)

**Pros:**
- Zero compatibility risk
- Stealth perks from Adamant/Ordinator already improve the system
- Clean gamepad experience — no additional MCM or keybinds

**Cons:**
- Vanilla detection is dated for "Modern mechanics"
- No light/sound interplay — stealth feels binary

### Recommendation: **Tentative — RAID**
Minimal, script-free, proven. Delivers "Modern mechanics" for stealth without adding complexity. Book of Shadows is the aspirational fallback if playtesting reveals stealth is still too vanilla.

---

## 18. NPC Appearance Overhaul

**Status:** OPEN  
**Affects:** UI/Gfx, World  
**Section:** `NPCs`  
**Reference:** `modlist-npcs.md:265` (Open Research), `TODO.md:18`

### The Decision

No single NPC overhaul is locked. The decision is: one comprehensive overhaul (e.g., Nordic Faces, Modpocalypse, High Poly NPC Overhaul) vs. a modular approach (individual mods per character, e.g., Pandorable's, Bijin, Distinct Faces).

### Comprehensive Route

**Pros:**
- One patch chain — fewer compatibility checks
- Consistent art direction — all NPCs share the same visual DNA
- Easier to maintain — one mod to update, not 20

**Cons:**
- May not achieve the "best of breed" visual quality per NPC
- Some comprehensive overhauls are heavy (High Poly Head dependencies)
- CS lighting compatibility varies between comprehensive packs

### Modular Route

**Pros:**
- Best visual quality per NPC — Pandorable's for women, Distinct Faces for specific NPCs
- Selective — only improve NPCs you interact with
- Easier to CS-verify per mod

**Cons:**
- Higher maintenance — 11+ face replacer mods from TODO.md alone
- Patch fragmentation — each NPC replacer may need its own facegen patch
- Risk of visual inconsistency — different art styles clashing
- Black-face bug from conflicting NPC edits

### Recommendation: **Tentative — Comprehensive with targeted add-ons**
Lock one comprehensive base (Nordic Faces or High Poly NPC Overhaul — TBD by testing), then selectively override specific NPCs with Distinct Faces mods. This minimizes patch debt while allowing quality upgrades for key characters. Vampire follower evaluation (TODO.md:17) should happen after the NPC baseline is locked.

---

## 19. Dragon Model Replacer

**Status:** OPEN  
**Affects:** UI/Gfx, Content  
**Section:** `Enemies & Creatures`  
**Reference:** `modlist-creatures.md:31-32`

Two dragon model replacers are listed as baseline — but they're incompatible with each other. One must be chosen.

### Option A: Iconic's Dragon Retexture (Recommended)

**Pros:**
- Clean texture upgrade — retains vanilla dragon silhouettes
- Proven in many modlists — 100K+ downloads
- Lower performance impact — textures only, no model changes
- Compatible with Dragon War and Dragons Use Thu'um behavior mods

**Cons:**
- Textures only — doesn't change dragon proportions or add new variants
- Less visually dramatic than Dragons SE

### Option B: Dragons SE

**Pros:**
- Full model replacer — new dragon geometry, new variants
- More visually distinct — each dragon type has unique silhouette
- Higher visual impact for "awe-inspiring world" pillar

**Cons:**
- Higher performance cost — new models with more polys
- Higher compatibility risk — model changes affect animation, skeleton, behavior mods
- May conflict with diverse-dragon mods (Diverse 4thUnknown Dragons already in list)

### Recommendation: **Tentative — Iconic's Dragon Retexture**
Safer compatibility path with Dragon War, Dragons Use Thu'um, and Diverse 4thUnknown Dragons. Textures alone deliver "clean, grim-dark presentation" without model-level risks.

---

## 20. Grass

**Status:** OPEN  
**Affects:** UI/Gfx, World  
**Section:** `Terrain & Flora`  
**Reference:** `modlist-graphics-terrain.md:74,127`

Skoglendi is listed as the grass baseline; Wildlands Renewal is an alternative candidate.

### Option A: Skoglendi — A Grass Mod (Recommended)

**Pros:**
- Currently listed as baseline in the guide
- Clean, natural grass — not over-dense or performance-hungry
- Good community reputation, actively maintained
- Pairs well with Traverse the Ulvenwald trees

**Cons:**
- Less visually dramatic than some alternatives
- May look thin in open tundra without supplementary grass mods

### Option B: Skoglendi + Wildlands Renewal (layered)

**Pros:**
- Wildlands adds groundcover variety on top of Skoglendi's base
- More visual density — "Big, dark, awe-inspiring world"
- Complements rather than replaces — lower risk than switching entirely

**Cons:**
- Two-mod grass stack — more to conflict-manage with terrain/flora mods
- Higher performance cost — two grass systems rendering
- Grass cache generation doubled — more DynDOLOD prep time

### Recommendation: **Tentative — Skoglendi**
Start with the baseline. If open tundra looks too sparse during testing, layer Wildlands Renewal as a supplementary groundcover mod rather than replacing Skoglendi entirely.

---

## 21. Vampire Clans and Bloodlines

**Status:** NOT YET EVALUATED  
**Affects:** Content, Mechanics, Living  
**Section:** `Enemies & Creatures` / `NPCs`  
**Reference:** `TODO.md:19`

A major gameplay expansion adding vampire clans, factions, new races, leveled lists, and dungeons. Must be evaluated for pillar fit before adoption.

### Pros (preliminary):
- Adds major vampire content — new factions, dungeons, races
- Deepens vampire gameplay beyond Sacrosanct's progression system
- Fits "Lots of new content" pillar — significant world expansion

### Cons (preliminary):
- Compatibility unknowns: CS lighting in vampire dungeons, LoTD display patches, third-person gamepad
- Potential overlap with Sacrosanct (already baseline) and existing vampire follower mods
- Leveled list and faction changes may conflict with Open World Loot and Arena encounter zones

### Next Steps:
1. Verify CS compatibility (vampire dungeons often rely on specific lighting)
2. Check LoTD display patch availability
3. Test third-person gamepad usability (vampire abilities may require additional keybinds)
4. Evaluate overlap with Sacrosanct vampires and Serana Dialogue Add-On
5. Do not lock until perk overhaul and combat stack are stable

---

## Summary: Integration Map

```
Simonrim Stack (recommended direction):
  Adamant (Perks) → Mysticism (Magic) → Aetherius + Evenstar (Race/Stones)
  → Starfrost (Survival) → Thaumaturgy (Enchanting) → Gourmet (Cooking)
  → Apothecary (Alchemy) → Pilgrim (Religion)

Combat Stack:
  BFCO (Combat Anim) → Valhalla Combat + Precision (locked)
  → TK Dodge RE (Dodge) → Shadow of Skyrim (Death Alt, if compat OK)

World Stack:
  Open World Loot SkyPatched (Loot) → Obsidian Weathers (Weather)
  → TomatoRim PBR (Terrain) → Traverse the Ulvenwald (Trees)
  → A Water Made For CS (Water) → RAID (Stealth)

Quest/Content Stack:
  Skyrim Unbound Reborn (Alt Start) → Undeath + Classical Lichdom (Lich)
  → The Ancient Falmer (Snow Elf)
```

---

*Generated 2026-07-29. All recommendations are tentative pending CS compatibility testing, Pandora behavior integration, and third-person gamepad verification.*
