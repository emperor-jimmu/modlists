// main.typ — The Long Ascent master template
// Compile with: typst compile --root . --font-path assets/fonts template/main.typ output/the-long-ascent.pdf
//
// Fonts are resolved from assets/fonts/ via the --font-path CLI flag.
// All paths are relative to project root (--root .).

#import "lib.typ": *

// ─── Page Setup ──────────────────────────────────────────────────
// Apply the default page style for all content pages.
// The cover page overrides this explicitly — see the cover() function below.

#show: page-setup

// ─── Cover Page ──────────────────────────────────────────────────
// Render cover as a standalone page with its own full-bleed dark background.
// Using a state flag is the safest way to override page settings
// for a single page in Typst.

#let is-cover = state("is-cover", true)

#context {
  if is-cover.get() {
    set page(
      fill: space-dark,
      margin: (top: 0cm, bottom: 0cm, left: 0cm, right: 0cm),
    )
    set align(center)

    v(3cm)
    image("../assets/logo.png", width: 12cm)
    v(1.5cm)

    set text(font: heading-font, weight: "extrabold", size: 32pt, fill: white)
    [The Long Ascent]

    v(0.3cm)
    line(length: 6cm, stroke: 2pt + ksp-orange)
    v(0.5cm)

    set text(font: body-font, size: 14pt, fill: mun-gray)
    [A Kerbal Space Program Modlist \& Guide]

    v(2cm)

    set text(font: heading-font, size: 10pt, fill: ksp-teal)
    [Version 1.0 — July 2026]

    v(1cm)

    set text(font: body-font, size: 9pt, fill: space-light)
    [For Kerbal Space Program 1.12.5]
    v(0.3em)
    [Compatible with Breaking Ground \& Making History]

    is-cover.update(false)
    pagebreak()
  }
}

// ─── Prologue ─────────────────────────────────────────────────────

#pagebreak()
#set align(center)
#set text(font: heading-font, size: 18pt, fill: awe-gold)
[Prologue]
#v(1cm)

#set align(left)
#set text(font: body-font, size: 11pt, fill: mun-gray)

We used to look up at the sky and wonder at our place in the cosmos. Now we look down and wonder at ours. KSP gives you a universe and asks: what will you do with it?

That question has no right answer. You might land on the Mun and call it a career. You might build a station, a colony, an empire spanning star systems. You might strand Jebediah on Eve and spend the rest of your save trying to bring him home. All of these are valid. All of them are the point.

This guide is not a checklist. It's a companion. It will teach you to fly, to land, to dock, to mine, to build, to travel between stars. But between the instructions, it will also remind you: stop. Look around. You are standing on a moon orbiting a gas giant in a simulated solar system you assembled yourself from a hundred mods written by strangers who love space as much as you do. That's not a loading screen. That's a miracle.

The mods in this list were chosen to serve a feeling — the awe of exploration, the solitude of deep space, the terror and beauty of the unknown. You'll hear it in the engine roar at liftoff. You'll see it in the accretion disk of a black hole. You'll feel it in the silence between stars.

The Long Ascent is not just a journey upward. It's a journey outward. Into the dark. Into the strange. Into the places Kerbals have never been.

Take your time. There's no hurry. The stars will wait.

#v(1cm)

// ─── Before You Begin ─────────────────────────────────────────────

#pagebreak()
#chapter-heading([Before You Begin])

#section-heading([On Pacing])

KSP is a slow game. This is not a bug. It is the entire point.

The films that inspired this guide — \'Interstellar\', \'2001: A Space Odyssey\', and \'Project Hail Mary\' — share a quality that most games lack: they let moments breathe. A docking sequence takes four minutes of screen time. An arrival at a new planet holds on the image. Silence is used as punctuation.

You should play KSP the same way.

- *Do not rush.* Time warp is a tool, not a lifestyle. During long burns, switch to IVA view and watch the stars crawl past the window. During interplanetary cruises, check on your kerbals. Read their mission logs if you keep them. Let the journey take the time it takes.
- *Look at things.* The mods in this list exist to make the Kerbol system beautiful. Scatterer paints the atmospheres. Parallax textures the ground. Volumetric Clouds turn the sky into sculpture. If you spend an entire mission staring at the navball, you are missing the point.
- *Earn your moments.* A Mun landing is not a checkbox. It is the culmination of learning orbital mechanics, building a rocket that doesn't explode, and navigating 400,000 kilometers of vacuum to touch another world. When you plant that flag, stop. Pan the camera. Look back at Kerbin, hanging in the sky. You did that.
- *Embrace the silence.* Deep space is quiet. Between the engine burns and the alarm bells, there are long stretches of nothing. Those stretches are where the awe lives. Don't fill them with distractions.

#section-heading([On Failure])

You will crash. You will strand kerbals. You will spend three hours on a mission that ends in a fireball because you forgot one parachute. This is not a failure state. It is the learning process.

The guide does not expect you to execute every maneuver perfectly on the first try. It expects you to revert, redesign, re-launch, and try again. The difference between a beginner and an expert is not success rate. It is how quickly they say "well, that didn't work" and return to the VAB.

#section-heading([On the Waves])

This modlist is structured in four cumulative waves. Each adds complexity, parts, and destinations. But more importantly, each adds a new kind of experience:

- *Wave 0:* The thrill of reaching orbit for the first time. The moment you realize you're no longer ground-bound.
- *Wave 0.5:* The precision of planning. The satisfaction of docking. The quiet pride of watching your space station orbit overhead.
- *Wave 1:* The scale of interplanetary travel. The first time you see Jool rise over Laythe's ocean. The terror of Eve ascent.
- *Wave 2:* The solitude of interstellar flight. The wonder of another star. The weight of keeping kerbals alive across decades.

Install one wave at a time. Play it until the experiences it offers feel familiar. Then install the next. The guide will be here when you're ready.

#v(1cm)
#set align(center)
#set text(font: body-font, size: 10pt, fill: mun-gray, style: "italic")
The guide assumes patience. The guide assumes curiosity. The guide assumes you want to go further than anyone has gone before.

#v(0.2em)

Let's begin.

// ─── Table of Contents ───────────────────────────────────────────

#pagebreak()
#outline(
  indent: 1em,
)

// ─── Installation ────────────────────────────────────────────────

#pagebreak()
#include "../guide/installation.typ"

// ─── Wave 0 ──────────────────────────────────────────────────────

#wave-title-page(
  0,
  [First Steps],
  [UI & Quality of Life — Learning to Fly],
)
#chapter-heading([Wave 0 — Mod List])
#include "../guide/wave-0-first-steps.typ"

// ─── Wave 0.5: Building & Planning Tools ─────────────────────────

#wave-title-page(
  0.5,
  [Building Blocks],
  [Advanced Tools, Planning & Editor Enhancements],
)
#chapter-heading([Wave 0.5 — Mod List])
#include "../guide/wave-05-tools.typ"

// ─── Wave 1 ──────────────────────────────────────────────────────

#wave-title-page(
  1,
  [Going Further],
  [Graphics, Parts & Expanded Horizons],
)
#chapter-heading([Wave 1 — Mod List])
#include "../guide/wave-1-going-further.typ"

// ─── Wave 2 ──────────────────────────────────────────────────────

#wave-title-page(
  2,
  [The Long Ascent],
  [Colonization, Life Support & Interstellar Travel],
)
#chapter-heading([Wave 2 — Mod List])
#include "../guide/wave-2-the-long-ascent.typ"

// ─── Appendix ────────────────────────────────────────────────────

#pagebreak()
#chapter-heading([Appendix])
#include "../guide/appendix.typ"
