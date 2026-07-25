#import "styles.typ": *
#import "cover.typ"
#import "toc.typ"
#import "wave-section.typ": wave-section

// Cover page
#include "cover.typ"

// Table of Contents
#include "toc.typ"

// Wave 0
#include "../guide/00-wave0/01-introduction.typ"
#wave-section("../guide/00-wave0/mods.yaml")
#include "../guide/00-wave0/02-how-to-play.typ"

// Wave 1
#include "../guide/01-wave1/01-introduction.typ"
#wave-section("../guide/01-wave1/mods.yaml")
#include "../guide/01-wave1/02-strategy.typ"

// Wave 2
#include "../guide/02-wave2/01-introduction.typ"
#wave-section("../guide/02-wave2/mods.yaml")
#include "../guide/02-wave2/02-strategy.typ"

// Appendices
= Appendices

== Mod Installation Guide

#include "../setup-installation-guide.typ"
