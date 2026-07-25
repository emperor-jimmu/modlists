#import "styles.typ": *
#import "mod-entry.typ": mod-card

#let wave-section(wave-num, intro-path, yaml-path) = {
  // Load the mod data
  let data = yaml(yaml-path)

  // Include the introduction markdown
  include intro-path

  // Mod list heading
  = Mod List

  #v(0.3cm)

  // Render each mod card
  #for mod in data.mods {
    mod-card(mod)
    #v(8pt)
  }

  #pagebreak()
}
