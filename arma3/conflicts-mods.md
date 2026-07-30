# Known Mod Conflicts & Discussion Items

_Not included in PDF. Track incompatibilities and mods needing review._

---

## Need Decision: Audio Overhaul (pick one)

### JSRS SOUNDMOD 2025 (`3407948300`)
- Complete audio overhaul with realistic weapon sounds, environment, and vehicle audio.
- Will conflict with any other comprehensive audio mod.

### Project SFX: Remastered (`2129532219`) + Footsteps (`2806487814`) + Voicelines (`3663105427`)
- WebKnight's audio overhaul suite. Includes weapon sounds, footsteps, and voice lines.
- Same conflict — cannot run alongside JSRS.

**Decision needed:** Pick one audio ecosystem.

---

## Need Decision: Redundant Mods

### Enhanced Movement (`333310405`) vs Enhanced Movement Rework (`2034363662`)
- Both do climbing/vaulting. Rework is the updated version.
- **Recommendation:** Use Rework only (already added).

### Death and Hit reactions (`2993442344`) vs PIR Death and Hit reactions compatible (`3002800433`)
- Both add hit reaction animations. PIR version is a compatibility fork.
- **Decision needed:** Pick one.

### Immerse (`825172265`) vs Suppress (`825174634`)
- Both add suppression visual effects. May overlap.
- **Decision needed:** Keep one, both, or neither.

---

## Need Discussion: AI Mod Potential Conflicts

### Smart Combat AI (`3677550393`) + Smart Aircraft AI (`3682445063`) + Smart Merge AI (`3721618614`)
- Realistic AI reactions, no wallhacks. Improves AI tactics and situational awareness.
- **Potential conflict** with LAMBS_RPG + LAMBS_Danger.fsm (already in Wave 2). Both modify AI FSM and decision-making.
- **Decision needed:** Can these run together, or pick one AI suite?

---

## Cheat/Overpower Concerns (Hard Rule Violations)

### Weightless Speed Stamina (`3360361909`)
- Removes stamina weight penalty. Adjacent to "infinite stamina."
- **Hard rule violation:** No cheat/overpower/all-knowing mods.
- **Recommendation:** Skip.

### ETS - Enemy Tagging System (`2057294714`)
- Tags enemies through walls with icons.
- **Hard rule violation:** Wallhack functionality.
- **Recommendation:** Skip.

### A3 Thermal Improvement (`2041057379`)
- Allows thermal vision to see through smoke. Overhauls thermal modes.
- **Overpower concern:** Removes counterplay to smoke screening.
- **Decision needed:** Include, restrict to vanilla behavior, or skip.

---

## Thermal/NVG Mods — Balance Audit Needed

| ID | Mod | Notes |
|----|-----|-------|
| `2260572637` | BettIR NVG | NVG visual overhaul. Mostly cosmetic, low concern. |
| `3370946091` | A3TI REAP-IR | Thermal scope for weapons. |
| `2857096620` | SkeetIR Thermal Weapon Sight | Weapon-mounted thermal sight. |

**Decision needed:** Do these provide unfair advantage over AI that lacks thermal? OK for PvE but not PvP?

---

## WIP / Deprecated (Skip)

| ID | Mod | Issue |
|----|-----|-------|
| `3474573480` | DJI Goggles (WIP) | Work in progress. Unstable. |
| `2191542091` | [WIP] Anti-Bounce System (ABS) | Work in progress. Unstable. |
| `2081120309` | [Deprecated] Echo's Sandbox Everywhere | Deprecated. Use Zeus Enhanced instead. |
