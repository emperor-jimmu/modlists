# TODO

## Review next

- Verify Night Sky texture stack coherence (Shooting Stars + star textures — potential overlap).
- Test Beards of Power under CS lighting for neck clipping.
- Evaluate finding-derkeethus/Bethesda FormID fix with xEdit for unresolved conflicts.
- Verify New Beast Feet meshes don't clip with beast-race footwear from Immersive Armors or other armor packs.
- Test HDT-SMP Vanilla Armors performance overhead in combat with multiple NPCs wearing physics-enabled armor.
- **Snow Elf Race Decision** — Evaluate The Ancient Falmer (comprehensive, larger patch footprint) vs Lost Races of Nirn (modular, lighter framework). Core fork: RaceCompatibility (ESP) vs RCS (no-ESP). Decision gates: which dialogue framework to use, which alternate start to support, HPH patch availability.
- **Elven Chainmail** (mod 14978) — Verify 1.6.1170 compatibility. LE-era port last updated Jan 2018. May need mesh/texture porting work. Alternatives: Archaic Elven Armaments (152679).
- **Frozen in Time** — Verify no DynDOLOD or navmesh conflicts with Ancient Falmer Ruins if both are adopted. Check LoTD display patch availability.
- **Occiglacies** — Verify LoTD display patch (mod 64117) compatibility with current LoTD version.
- **Vampire follower evaluation** — Evaluate 4 vampire followers for NPCs section: Silas (Bosmer vampire, ESL, uses player body/skins), Koemia (custom-voiced, DBVO patch, mod 101405), Voira (Pandorable's, 1088 end., mod 42708), Dumitra (Altmer custom-voiced 600+ lines, mod 147787).
- **DF Edit NPC face replacers (11 mods)** — Individual Distinct Faces edits for Camilla (177048), Rayya (179325), Angi (178488), Sapphire (161017), Saadia (169287), Jenassa (164775), Aranea (176413), Brelyna (166402), Eola (161817), Fura Bloodmouth (171382), Ysolda (169910). Requires NPC appearance baseline confirmed before adding. Some are SkyPatched, some ESP-based. Will selectively override whatever NPC overhaul is chosen.
- **Vampire Clans and Bloodlines (37517)** — Major gameplay expansion adding vampire clans/factions with new races, leveled lists, dungeons. Evaluate for pillar fit (CS compat, LoTD patches, third-person/gamepad).
- **Natural Learning (148990)** — Passive skill tree/perk system by Zzyxzz. Requires SkyPatcher + SkyPatcher Keyword Framework. Evaluate whether this replaces or augments the chosen perk overhaul (Adamant/Vokrii/Ordinator — undecided). AP patch available (162537). Decision gates: does it work with the undecided perk baseline, does the passive tree conflict with the XP/leveling dial from `modlist-design-philosophy.md`. Do not add until perk overhaul baseline is locked.
