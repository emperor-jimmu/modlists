#import "styles.typ": *

#let category-label(cat) = {
  let label = {
    box(fill: category-bg, inset: (x: 4pt, y: 2pt), radius: 2pt,
      text(size: 7pt, font: mono-font, fill: ink, str(cat).upper())
    )
  }
  label
}

#let mod-card(mod) = {
  let has-conflicts = mod.conflicts != () and mod.conflicts.len() > 0
  let has-mechanic = mod.mechanic_impact != none

  block(
    width: 100%,
    fill: card-white,
    stroke: (left: 3pt + crimson, bottom: 0.5pt + rgb("#DDDDDD"), right: 0.5pt + rgb("#DDDDDD"), top: 0.5pt + rgb("#DDDDDD")),
    radius: 2pt,
    inset: 12pt,
    [
      #grid(
        columns: (1fr, auto),
        [
          #text(font: heading-font, size: 13pt, weight: 600, fill: crimson, link(mod.url)[#mod.name])
          #h(4pt)
          #text(size: 8pt, fill: muted)[by #mod.author]
        ],
        [
          #text(size: 8pt, font: mono-font, fill: muted)[v#mod.version]
        ]
      )

      #v(4pt)

      #hstack(spacing: 4pt)[
        #for cat in mod.category {
          category-label(cat)
        }
      ]

      #v(6pt)
      #text(size: 9.5pt, fill: ink)[#mod.description]

      #if mod.dependencies != () and mod.dependencies.len() > 0 {
        #v(4pt)
        #text(size: 8pt, fill: muted)[
          *Dependencies:* #mod.dependencies.join(", ")
        ]
      }

      #if has-conflicts {
        #v(4pt)
        #for conflict in mod.conflicts {
          #text(size: 8pt, fill: conflict-red)[
            ⚠ *Conflict:* #conflict.mod → #conflict.resolution
          ]
          #v(2pt)
        }
      }

      #if has-mechanic {
        #v(4pt)
        #text(size: 8pt, fill: mechanic-blue)[
          ⚙ #mod.mechanic_impact
        ]
      }

      #if mod.notes != "" {
        #v(4pt)
        #text(size: 7.5pt, fill: muted, style: "italic")[#mod.notes]
      }
    ]
  )
}
