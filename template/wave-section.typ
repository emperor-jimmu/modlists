#import "styles.typ": *
#import "mod-entry.typ": mod-card

#let wave-section(yaml-path) = {
  let data = yaml(yaml-path)

  [= Mod List]

  v(0.3cm)

  for mod in data.mods {
    mod-card(mod)
    v(8pt)
  }

  pagebreak()
}
