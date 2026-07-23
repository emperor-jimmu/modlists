# AGENTS.md -- The Final Cycle

## Project

Curated modlist and gameplay guide for Mass Effect Legendary Edition (MELE, 2021+).
A single definitive modding pass with character backgrounds and gameplay guides.
Output: a single PDF generated via Typst.

## File Conventions

- Guide content: `guide/*.typ` (Typst markup)
- Assets: `assets/` (logo.png)
- Fonts: `fonts/` (custom .ttf/.otf for PDF)
- Output: `output/The-Final-Cycle.pdf`
- Build: `build.bat` (Windows batch)

## Mod Rules

1. MELE compatible only (2021+). No OT-specific mods.
2. No porn mods. Adult/nude OK if thematically relevant -- ask if in doubt.
3. No cheat/overpowered mods. See cheat criteria in spec.
4. No conflicting mods -- verify compatibility before adding.
5. No redundant mods -- one mod per function. Prefer modern, maintained mods.
6. Use ME3Tweaks Mod Manager as the primary toolchain.

## Adding a Mod

1. Choose the correct category file in `guide/`:
   - `09-bugfixes-patches.typ` -- community patches, unofficial fixes
   - `10-graphics.typ` -- texture packs, lighting, shader mods
   - `11-gameplay-mechanics.typ` -- combat, powers, difficulty changes
   - `12-weapons-armor.typ` -- weapon stats, new weapons, armor stats, new armor sets
   - `13-ui-qol.typ` -- interface improvements, quality of life
   - `14-quests.typ` -- new missions, restored missions
   - `15-content.typ` -- expanded dialogue, new NPCs, non-quest content additions
   - `16-audio-sound.typ` -- music, sound effects, voice
   - `17-characters-appearance.typ` -- character textures, model swaps
   - `18-tools-utilities.typ` -- companion tools, save editors
2. Determine which game(s) the mod targets: **LE1**, **LE2**, **LE3**, or **Launcher**. Each mod is for one game only.
3. Use the `#mod-entry()` function:

   ```
   #mod-entry(
     name: "Mod Name",
     url: "https://www.nexusmods.com/masseffectlegendaryedition/mods/NNN",
     game: "LE1",
     version: "v1.0",
     last-checked: "2026-07",
     deps: (),
     impact: [What this mod changes],
     notes: none,
   )
   ```

4. Sort mods within each category by recommended install order.
5. Run `build.bat` and verify the PDF compiles without errors.
6. If the mod conflicts with any existing mod, add a note to `98-conflicts.typ`.

## Build Command

```
typst compile guide/main.typ output/The-Final-Cycle.pdf
```

## Research Methodology

- Primary source: NexusMods MELE category
- Verify each mod is for Legendary Edition, not original trilogy
- Prefer mods updated within the last 2 years
- Check mod comments/posts for reported compatibility issues
- Cross-reference with existing modlist to avoid conflicts
- If a mod page is behind NexusMods' adult content gate (blocked/age-wall), use Playwright browser tools to access the page and dismiss the content warning. Do NOT rely on webfetch or ctx_fetch_and_index for adult-gated pages.
