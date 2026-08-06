// wave8_cc_tweaked.js — CC:Tweaked recipe gates for Phase 2 progression
// Item IDs marked [VERIFY] must be confirmed at test launch (F3+H tooltips)

ServerEvents.recipes(event => {
  // Remove default recipes
  event.remove({ id: 'computercraft:computer_advanced' });
  event.remove({ id: 'computercraft:turtle_normal' });
  event.remove({ id: 'computercraft:turtle_advanced' });
  event.remove({ id: 'computercraft:wireless_modem_normal' });

  // Advanced Computer → Mekanism Enriched Alloy
  event.shaped('computercraft:computer_advanced', [
    ' R ',
    'ACA',
    ' R '
  ], {
    R: 'minecraft:redstone_block',
    A: 'mekanism:enriched_alloy',   // [VERIFY] item ID
    C: 'computercraft:computer_normal'
  });

  // Normal Turtle → TFMG Steel
  event.shaped('computercraft:turtle_normal', [
    'SSS',
    'SCS',
    'SXS'
  ], {
    S: 'tfmg:steel_ingot',           // [VERIFY] item ID
    C: 'computercraft:computer_normal',
    X: 'minecraft:chest'
  });

  // Advanced Turtle → TFMG Steel + Advanced Computer
  event.shaped('computercraft:turtle_advanced', [
    'SSS',
    'SCS',
    'SXS'
  ], {
    S: 'tfmg:steel_ingot',           // [VERIFY] item ID
    C: 'computercraft:computer_advanced',
    X: 'minecraft:chest'
  });

  // Wireless Modem → Create Brass
  event.shaped('computercraft:wireless_modem_normal', [
    ' B ',
    'BCB',
    ' E '
  ], {
    B: 'create:brass_ingot',         // [VERIFY] item ID
    C: 'computercraft:computer_normal',
    E: 'minecraft:ender_pearl'
  });
});
