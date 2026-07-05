# PGPatcher

**MO2 Separator:** `Graphics` → `Graphics - PGPatcher`

## PGPatcher Workflow → `Graphics - PGPatcher`

PGPatcher is a post-installation patcher that generates parallax and PBR-compatible meshes from the installed texture and mesh stack. It must run after the main texture, mesh, parallax, and PBR candidate set is mostly chosen so it works against a stable asset baseline.

### Baseline

- **PGPatcher** ([Nexus](https://www.nexusmods.com/skyrimspecialedition/mods/120946)) — Post-installation parallax/PBR mesh generator. Keep its output in its own generated MO2 folder, separate from source mods. → `Graphics - PGPatcher`
- Run after installing or changing PBR texture packs, parallax-enabled textures, or major mesh/parallax support mods. → `Graphics - PGPatcher`
- Let the generated patch load after the source texture and mesh mods it supports. → `Graphics - PGPatcher`
- Re-run whenever a major landscape, architecture, ruins, or clutter texture pack is replaced. → `Graphics - PGPatcher`
- Only keep the generated output if it produces a visible improvement without new artifacts. → `Graphics - PGPatcher`
- Hard requirement for mods such as `Steel Armor Redone - PBR and Complex Material`. → `Graphics - PGPatcher`

### Alternatives

- Skip route: rely on hand-authored parallax meshes from individual texture packs and skip the post-processing patcher entirely.

### Notes

- Running PGPatcher before the texture stack is stable means regenerating the patch each time a texture mod changes.
- Generated output can conflict with hand-authored parallax meshes — always test before committing the generated patch.
