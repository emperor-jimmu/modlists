// No One is Coming — Root Document

#import "template.typ": *

#set document(
  title: "No One is Coming — Project Zomboid B42 Modlist & Survival Guide",
  author: "No One is Coming Team",
)

// ===== COVER PAGE =====
#cover-page()

// ===== TABLE OF CONTENTS =====
#outline(
  title: text(font: heading-font, size: 22pt, fill: color-crimson)[Table of Contents],
  indent: 2em,
)
#pagebreak()

// ===== PREFACE =====
#include "preface.typ"
#pagebreak()

// ===== INSTALLATION =====
#include "installation.typ"
#pagebreak()

// ==========================================
// WAVE 0 — The First Night
// ==========================================
#wave-divider(0, "The First Night", [
  You were just an ordinary person. Maybe you worked in an office, maybe you were a student burning the midnight oil, maybe you were a parent putting the kids to bed. When the screams started outside your window, you had nothing — no gun under the pillow, no bunker in the backyard, no plan. Just the clothes on your back and whatever was in the fridge. The power flickered. The phone lines went dead. The TV played the emergency broadcast on loop until it didn't. You don't know what's happening. You don't know if anyone is coming. You just know you have to make it through the night.
])

#include "wave-0/story.typ"
#pagebreak()
#include "wave-0/settings.typ"
#pagebreak()
#include "wave-0/guide.typ"
#pagebreak()
#include "wave-0/modlist.typ"
#pagebreak()

// ==========================================
// WAVE 1 — Scars and Lessons
// ==========================================
#wave-divider(1, "Scars and Lessons", [
  You saw it coming. Not in time to save them, but in time to know the signs — the quarantines, the curfews, the way the news stopped showing footage from the exclusion zone. You were a mechanic. A carpenter. A nurse. Someone who knew how things worked and how to fix them. You fortified the house. You stockpiled what you could. It wasn't enough. They came through the west window. You don't talk about what happened next. Now you're alone, moving through a broken world with calloused hands and a hollow chest. You know how to survive — but survival and living are not the same thing. Not anymore.
])

#include "wave-1/story.typ"
#pagebreak()
#include "wave-1/settings.typ"
#pagebreak()
#include "wave-1/guide.typ"
#pagebreak()
#include "wave-1/modlist.typ"
#pagebreak()

// ==========================================
// WAVE 2 — No One is Coming
// ==========================================
#wave-divider(2, "No One is Coming", [
  The radio went silent three months ago. The last transmission you heard was a military frequency broadcasting evacuation coordinates for a city that was already burning. You've been on the move ever since — through towns, through forests, through hell. You've buried everyone who trusted you. You've put down people who turned before your eyes. You don't make friends anymore. You don't make plans. You don't hope. Because hope is a lie that gets you killed. There is no cavalry coming over the hill. There is no cure being airlifted from a secret lab. There is no extraction team. No one is coming. There is only you, your skills, your scars, and the dead. And you intend to outlast every last one of them.
])

#include "wave-2/story.typ"
#pagebreak()
#include "wave-2/settings.typ"
#pagebreak()
#include "wave-2/guide.typ"
#pagebreak()
#include "wave-2/modlist.typ"
