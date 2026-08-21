= Before You Begin

This guide targets the *GTA V Expanded & Enhanced* edition (build 1.0.1158.13). Enhanced uses a different modding toolchain from Legacy — the tools below are the Enhanced-compatible set.

== The Enhanced Toolchain

=== ScriptHookV

#link("http://www.dev-c.com/gtav/scripthookv/")[ScriptHookV] is required by almost every mod. As of v3889.0/1158.13 it supports the Enhanced build.

1. Download ScriptHookV (v3889.0/1158.13 — the Enhanced build).
2. Extract *ScriptHookV.dll* and *dinput8.dll* into your GTA V root folder.
3. *dinput8.dll* is the ASI loader — it loads every `.asi` mod; no separate loader is needed.

=== ScriptHookVDotNet (Enhanced)

For .NET script mods, install the *Enhanced* build of #link("https://www.gta5-mods.com/tools/script-hook-v-net-enhanced")[ScriptHookVDotNet]:

1. Download the Enhanced build from its GTA5-Mods page.
2. Extract the `.asi` and `.dll` files into the GTA V root folder.

=== OpenRPF (mods folder)

#link("https://www.gta5-mods.com/tools/openrpf-openiv-asi-for-gta-v-enhanced")[OpenRPF] is the Enhanced-edition OpenIV.asi — it enables the `mods` folder override that plain OpenIV.asi does not fully support on Enhanced.

1. Download OpenRPF from its GTA5-Mods page.
2. Extract it to the GTA V root folder.

=== CodeWalker (archive editor)

#link("https://discord.gg/codewalker")[CodeWalker] is the archive/asset editor for the Enhanced (Gen9) format. Enhanced texture and model mods are installed through CodeWalker rather than OpenIV's Package Installer.

1. Download CodeWalker (release 30 / dev48 or newer) from the CodeWalker Discord.
2. Use it to open and edit the `update.rpf` inside your `mods` folder.

== The mods Folder

Enhanced uses the same `mods` override concept as Legacy:

1. Create a `mods` folder in the GTA V root (next to `GTA5.exe`).
2. Copy the `update` folder from the game root into `mods` (giving `mods\update\update.rpf`).
3. Make every archive edit inside `mods` — never touch the originals.

Rename the `mods` folder to `mods_off` to disable all mods.

== ASI Mods

ASI mods load through ScriptHookV's `dinput8.dll`:
- Copy the `.asi` file to your GTA V root folder (*not* the `mods` folder).
- No extra loader is needed.

== Safety Checklist

Run through this checklist before starting the game with new mods:

- [ ] `mods` folder exists (named *mods*, not *mods_off*)
- [ ] OpenRPF installed (mods folder override active)
- [ ] ScriptHookV.dll and dinput8.dll in the game root
- [ ] All mod files installed to correct paths
- [ ] Backups created for any replaced `.rpf` files
- [ ] GTA Online not launched with mods active (rename `mods` to *mods_off* before going online)