// wave5_torchmaster.js — Torchmaster Mega Torch gated behind Cataclysm boss conquest
// Pillar: Chill Living payoff after Power Fantasy. Each Mega Torch costs one
// Cataclysm boss kill (Ignis → Ignitium Ingot), so every pacified region is earned.
// Item IDs marked [VERIFY] must be confirmed at test launch (F3+H tooltips).

ServerEvents.recipes(event => {
  // Remove the default Mega Torch recipe so it can't be crafted with vanilla mats
  event.remove({ id: 'torchmaster:megatorch' });

  // Mega Torch → Cataclysm boss trophy (Ignitium Ingot) + Create brass + blaze powder
  // Shaped: rewards a conquest, not a daytime walk. Brass keeps it Phase 2.
  event.shaped('torchmaster:megatorch', [
    ' B ',
    'BCB',
    'IBI'
  ], {
    B: 'create:brass_ingot',        // [VERIFY] item ID — Phase 2 brass age
    C: 'cataclysm:ignitium_ingot',  // [VERIFY] item ID — Ignite boss drop
    I: 'minecraft:blaze_rod'
  });
});