#import "../../theme.typ": *

== First Hours in Kamura

Your first session is about orientation, not progress. Kamura Village is small — every facility you need is within a short walk — and learning what each one does is the real first quest.

=== What You See in the Village

- *Your house* — where your item box, equipment box, and save options live. The item box is your inventory bank; loadouts live here too.
- *The smithy* — forge and upgrade weapons and armor. This is where hunts turn into power.
- *The buddy plaza* — where your palico and palamute are managed, and where Meowcenaries and the Argosy operate (see *Buddies and Town*).
- *The canteen (dango)* — eat before every hunt; see *The Hunt*.
- *The quest counter* — village quests. The Gathering Hub (separate counter) holds multiplayer-scaled hub quests.
- *The training area* — a safe practice room. Use it before you judge a weapon; details in *Combat Basics*.

=== Character Creation & Saves

Create your character, pick a palico and palamute, and give them names you will not get tired of — they are with you the whole way.

#tip[
  Use a dedicated save slot for this wave (and separate slots for Waves 1 and 2). The game supports multiple slots; keeping one per wave means the waves never bleed into each other.
]

=== Controls

The game ships with sensible defaults for both keyboard + mouse and gamepad, and *every* control is rebindable. Open *Options → Controls* and confirm the bindings for these action groups before your first hunt:

#table(
  columns: (26%, 74%),
  stroke: 0.4pt + LINE,
  fill: (x, y) => if y == 0 { EMBER_DK } else { white },
  table.header(
    [#text(fill: SNOW, weight: "bold", font: DISPLAY, size: 9.5pt)[Action group]],
    [#text(fill: SNOW, weight: "bold", font: DISPLAY, size: 9.5pt)[What it does]],
  ),
  [Move / Camera], [Movement and look — the camera is your main tool; keep it comfortable],
  [Attack (primary / special)], [Your weapon's two main attacks, plus weapon-specific inputs],
  [Guard / Dodge], [The defensive buttons every weapon gets (some block, some roll)],
  [Wirebug actions], [Wirebug leaps and Wirefall recovery (see *Combat Basics*)],
  [Use item / item shortcuts], [Potions, whetstones, and your item wheel],
  [Sheathe / Sprint], [Weapon sheathing and running (sheathed, you run faster)],
  [Map / Interact], [World map, and gathering/interacting with the environment],
  [Mount / Ride], [Getting on your palamute and mounting monsters],
)

#note[
  The exact keys are the defaults shown in your Options menu; this guide deliberately does not list key names, because rebinds are common. What matters is *knowing* each action group's button before a hunt, not matching some printed list.
]

=== Recommended Settings

- *Target / focus camera:* enable the focus-camera option and try both lock modes — locking a monster makes early hunts dramatically easier to track.
- *Auto-sheathe:* consider turning it off; controlling when you sheathe matters later.
- *Graphics:* start at a preset your GPU can hold at a stable frame rate (60 fps is ideal). Prefer stable frames over maxed detail — reads and dodges depend on it.
- *Subtitles:* on, if you want the story and NPC instructions written out.
- *Camera speed:* a little above default is usually comfortable; tune in the training area.

=== Your First Quest

Talk to the quest counter and take the first village quest. It will be gentle — gathering, or a small monster — and that is the point: the game is walking you through the loop one step at a time. Complete it, return, and follow the NPCs' instructions. The village will hand you your first *large monster* hunt soon enough.

#tip[
  Talk to everyone with a marker. In Monster Hunter, important unlocks are often handed to you by NPCs — quests, tools, and facilities appear by following conversations.
]
