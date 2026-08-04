#let callout(title, body) = block(
  fill: rgb("#f5efe2"), inset: 8pt, radius: 4pt,
  stroke: 0.5pt + rgb("#1fa2a0"),
)[*#title* #body]

=== Game Prep

This guide targets *Oxygen Not Included* running the base game plus the two expansions you already own: *Spaced Out!* and the *Bionic Booster Pack*. Install the game from Steam together with both DLCs before touching any mods.

1. On the Steam store page, install *Oxygen Not Included*, then make sure *Spaced Out!* and the *Bionic Booster Pack* are installed as well.
2. Launch the game once, all the way to the main menu, so Steam and the game finish their first-time setup.
3. On the main menu, confirm the build number reads *Build 744825*, released July 28, 2026. This is the build the entire guide is written against.

#callout("Note:", [
  The *Aquatic Planet Pack* (launched with the June 11, 2026 update), the *Frosty Planet Pack*, and the *Prehistoric Planet Pack* are *not* part of this guide. You do not need them, and any mod that lists one of them as a requirement is incompatible with your setup.
])

#callout("Tip:", [
  Build numbers change whenever the game updates. Every time Oxygen Not Included downloads an update, re-check the main menu and re-confirm that it still shows Build 744825 — a future patch may shift the mods you are using.
])

=== Mod Updater

The organizer this guide uses is the workshop mod-updater tool *Mod Updater* — #link("https://steamcommunity.com/sharedfiles/filedetails/?id=2018291283")[Mod Updater] on the Steam Workshop. It keeps your subscribed mods current and prevents Steam's Workshop cache from serving stale versions.

#callout("Note:", [
  The tool's attribution is recorded in the project's STATUS.md.
])

To install it, just subscribe on the Workshop page. Oxygen Not Included downloads the mod on its next launch; there is nothing else to set up.

Once subscribed, Mod Updater lives inside the in-game Mods dialog:

+ It shows each mod's last-update date.
+ It flags mods that are out of date.
+ When at least one mod is outdated, an *Update All* button appears at the bottom of the Mods dialog.
+ When mods are out of date, the Main Menu shows a warning telling you so.

Enabling and disabling mods is unchanged: that stays in the in-game Mods menu. Mod Updater only handles updating.

#callout("Warning:", [
  Mod Updater works with a *Steam-purchased* copy of Oxygen Not Included only. It does not work if you bought the game from the Epic Games Store or WeGame.
])

#callout("Warning:", [
  On Windows, OneDrive can still break mod updates even with Mod Updater installed, causing a mod update/restart loop. The recommended mitigation is to turn OneDrive off for your Documents folder.
])

=== Fetching the Wave's Mods

The mods in this guide are added per wave, not all at once. Each wave's Modlist section holds that wave's mod cards, and each card carries the Workshop URL for its mod. In this release the mod cards are pending addition — the cards live in each wave's Modlist section, and you will find them there once they are filled in.

To fetch a wave's mods, open each card's Workshop page in turn and subscribe. Mod Updater then keeps every subscribed mod updated for you.

=== Version Compatibility

The Steam Workshop does not publish a per-mod build number, so there is no exact "works with Build 744825" stamp on any page. The best evidence of build compatibility is the mod's *last updated* date: a mod updated close to Build 744825 (July 28, 2026) is the safest bet, because it was most recently checked against the current game. A mod that has not been touched in months may still work, but it is riskier.

DLC requirements matter just as much as dates. A mod that requires a DLC you do not own is incompatible even though Steam will happily let you subscribe — see the Game Prep note for the DLCs outside this guide's scope.

When the game updates, re-check your mods. A new game build can break mods that were fine the day before, and Mod Updater flags exactly that.

#callout("Tip:", [
  Read the mod's Workshop page yourself before subscribing. The last-update date shown on the page, together with the DLC tags, is the signal to trust — not titles or third-party "updated" badges.
])

=== Launch & Verify

1. Start the game.
2. Open the Mods dialog. It lists every installed and enabled mod — treat it as ground truth for what is active.
3. Confirm nothing is flagged as outdated. If a flag appears, use *Update All* and restart.
4. Start a *new* game for the wave you intend to play, then play the opening stretch and confirm the mods behave the way the wave guide describes.

#callout("Tip:", [
  Do not trust a mod list from memory. The Mods dialog is the only authoritative view of what is actually enabled, and it takes one glance to confirm before each session.
])

=== Per-Wave Switching

Each wave is its own new game with its own mod subset. Switching waves is a menu chore, not a reinstall:

1. Open the Mods menu.
2. Enable the new wave's mods and disable the previous wave's content mods.
3. Start a new game for the wave.

Wave 0 carries the quality-of-life base that stays active throughout. Content mods stay scoped per wave and are only enabled when that wave's design calls for them.

#callout("Warning:", [
  Checkbox errors break the wave design. If recipe or content mods from one wave are carried into a wave that should not have them, the intended progression is lost and the game plays differently than the guide describes. Review the Mods menu before starting each new game.
])

#callout("Tip:", [
  Because Mod Updater handles updates for every subscribed mod, wave switching never requires unsubscribing or re-downloading anything. The Mods menu checkboxes are the entire workflow.
])
