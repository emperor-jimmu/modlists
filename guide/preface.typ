#import "template.typ": *

= Preface

Welcome to *No One is Coming*, a wave-based modlist and survival guide for Project Zomboid Build 42. Whether you're loading into Knox County for the first time or you've survived a thousand winters, this guide walks you through curated experiences — each one a complete new game with its own story, settings, and mod list.

== How This Guide Works

This guide is organized into three *Waves*. Each wave is a self-contained game setup:

- *Wave 0 — The First Night*: A gentle introduction. Complete beginner? Start here. Minimal mods, easy settings, thorough tutorial.
- *Wave 1 — Scars and Lessons*: You've survived. Now thrive. More mods, harder settings, strategy-focused.
- *Wave 2 — No One is Coming*: The real apocalypse. Maximum mods, brutal settings, advanced systems.

Each wave assumes knowledge from previous waves. Start at Wave 0 even if you've played before.

== [B42] Mod Manager

All waves use the *[B42] Mod Manager* as the foundation for managing mods.

#mod-entry(
  "[B42] Mod Manager",
  "3567084868",
  "UI / QoL",
  "None",
  "Dedicated in-game mod management UI. Replaces the vanilla Mods screen with profiles, drag-and-drop load order, and conflict detection.",
  "Essential tool for managing mods in Build 42. Create mod profiles (one per wave), reorder mods, save/load configurations, and detect known conflicts.",
)

=== Installation

#list(
  [Subscribe to *[B42] Mod Manager* on Steam Workshop using the link above.],
  [Launch Project Zomboid. On the main menu, click *Mods* in the bottom-left.],
  [Find *[B42] Mod Manager* in the list and click the toggle to enable it. A popup may appear — click *Enable*.],
  [Exit the Mods screen and return to the main menu. You should now see a new *Mod Manager* button on the left side. Click it.],
)

=== Profiles

Profiles let you save and switch between different mod configurations. Each wave in this guide should have its own profile:

#list(
  [Inside the Mod Manager, click *New Profile*.],
  [Name it after the wave (e.g., "Wave 0 — The First Night").],
  [The profile starts empty. You'll add mods to it in the next step.],
  [Create additional profiles for each wave you plan to play.],
)

#tip[
  Profiles are stored in your Zomboid user folder and persist across game sessions. You can switch between them at any time by selecting a different profile in the Mod Manager.
]

=== Adding Mods to a Profile

#list(
  [In the Mod Manager, select the profile you want to configure.],
  [The left panel lists *Available Mods* — everything you've subscribed to on Steam Workshop.],
  [Find a mod and click the green arrow to move it to the *Enabled Mods* panel on the right.],
  [You can also double-click a mod name to toggle it.],
  [Add every mod listed in your wave's Modlist chapter, in the order specified.],
  [If a mod shows a red warning icon, it means a dependency is missing — check the mod's Workshop page for requirements.],
)

=== Load Order

Load order determines which mod takes priority when multiple mods change the same thing. The Mod Manager lets you drag and drop mods to reorder them:

#list(
  [Click and hold a mod in the *Enabled Mods* panel.],
  [Drag it up or down to change its position in the load order.],
  [Mods at the *bottom* of the list load *last* and override mods above them.],
  [Each wave's Modlist chapter includes a recommended load order. Follow it carefully.],
  [As a rule: frameworks first, content next, graphics after, UI/QoL last, overrides at the very bottom.],
)

#danger[
  Incorrect load order is the most common cause of mod conflicts and crashes. If your game won't start or mods aren't working, check the load order first. See the Installation chapter for detailed load order rules.
]

=== Saving and Launching

#list(
  [After adding all mods and arranging load order, click *Save Profile* at the bottom.],
  [Click *Apply and Return to Main Menu*.],
  [Back on the main menu, click *Solo* or *Host* as normal.],
  [Your enabled mods are now active. Start a new game with the sandbox settings from your wave's Settings chapter.],
)

#warning[
  Always launch your game *after* configuring the Mod Manager, not through the vanilla Mods screen. If you use the vanilla Mods screen after setting up the Mod Manager, the vanilla screen may overwrite your load order. Stick to the Mod Manager exclusively once you've set it up.
]

=== Switching Waves

When you're ready to move to the next wave:

#list(
  [Return to the main menu and open the Mod Manager.],
  [Select your new wave's profile from the dropdown (e.g., "Wave 1 — Scars and Lessons").],
  [Subscribe to all mods listed in the new wave's Modlist chapter if you haven't already.],
  [Add them to the profile and arrange load order.],
  [Save and launch a *new game* — do not continue an old save with new mods.],
)

#info[
  You can have all three profiles configured simultaneously. The Mod Manager tracks which mods belong to each profile independently. Switching between waves is just a profile selection away.
]

=== A Note on Difficulty

Project Zomboid is a game about dying. You *will* die — probably a lot. That's the point. Each death teaches you something. The question isn't whether you'll survive, but how long you'll last and what story you'll leave behind.

*This is how you died.*
