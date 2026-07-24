---
title: Troubleshooting
description: Common issues and solutions for modded Witcher 3
---

# Troubleshooting

<span class="wave-badge wave-0">All Waves</span>

## Common Issues

### Game Crashes on Startup

**Possible causes:**
- Missing mod dependencies
- Script compilation errors
- Conflicting mods
- Incorrect game version

**Solutions:**
1. Run Script Merger
2. Verify all dependencies are installed
3. Check mods are compatible with v4.04
4. Disable mods one by one to find the culprit

### Script Compilation Errors

**Error**: "Error [mod0000_mergedfiles]..." or similar

**Solutions:**
1. Run Script Merger (in Mod Manager or standalone)
2. Delete `Mods/mod0000_MergedFiles/` and re-merge
3. Check for mods that edit the same files
4. Verify load order

### Missing Textures

**Solutions:**
1. Reinstall the texture mod
2. Check for conflicts with other texture mods
3. Verify game files via GOG/Steam/Epic
4. Ensure texture mod is for v4.04

### Performance Issues

**Solutions:**
1. Lower graphics settings
2. Disable demanding mods (lighting, LOD)
3. Check for memory leaks
4. Update GPU drivers

## Mod Manager Issues

### Mod Not Installing

**Solutions:**
1. Ensure archive is not corrupted
2. Try extracting manually
3. Check Nexus page for install instructions
4. Run Mod Manager as Administrator

### Profiles Not Working

**Solutions:**
1. Ensure profile is selected before launching
2. Check mod enabling/disabling took effect
3. Restart Mod Manager

## Game Version Issues

### Verifying Your Version
- **GOG**: Right-click -> Manage -> Properties -> Check version
- **Steam**: Library -> Right-click -> Properties -> Betas -> Select "4.04"
- **Epic**: Auto-updates, check game executable properties

## Getting Help

If issues persist:
1. Check the mod's Nexus page for known issues
2. Search the Witcher 3 modding community
3. Verify your modlist against the reference section
