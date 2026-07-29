#import "styles.typ": *

#set heading(outlined: false)

= Table of Contents

#v(0.5cm)

#context {
  let chapters = query(heading.where(level: 1, outlined: true))
  for chapter in chapters {
    let loc = chapter.location()
    let nr = counter(page).display(at: loc)
    link(loc)[#text(font: heading-font, size: 11pt, fill: crimson)[#chapter.body] #h(1fr) #text(fill: muted)[#nr] \ ]
  }
}

#pagebreak()
