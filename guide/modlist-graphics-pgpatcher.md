# PGPatcher

**MO2 Separator:** `Graphics` → `Graphics - PGPatcher`

All items in this section belong to the `Graphics - PGPatcher` MO2 separator unless noted.

## PGPatcher Workflow

PGPatcher is a post-installation patcher that generates parallax and PBR-compatible meshes from the installed texture and mesh stack. It must run after the main texture, mesh, parallax, and PBR candidate set is mostly chosen so it works against a stable asset baseline.

### Baseline
- **PGPatcher** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/120946)) — Post-installation parallax/PBR mesh generator. Keep output in its own generated MO2 folder, separate from source mods.

### Workflow Rules
- Run after installing or changing PBR texture packs, parallax-enabled textures, or major mesh/parallax support mods.
- Let the generated patch load after the source texture and mesh mods it supports.
- Re-run whenever a major landscape, architecture, ruins, or clutter texture pack is replaced.
- Only keep the generated output if it produces a visible improvement without new artifacts.
- Hard requirement for mods such as **Steel Armor Redone - PBR and Complex Material**.

### Alternatives
- Skip route: rely on hand-authored parallax meshes from individual texture packs and skip post-processing entirely.

### Notes
- Running PGPatcher before the texture stack is stable means regenerating the patch each time a texture mod changes.
- Generated output can conflict with hand-authored parallax meshes — always test before committing the generated patch.
