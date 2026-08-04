// Page-position helper for structure audits.
// Includes the full document, then reports heading pages and total pages.
#include "template.typ"

#let heading-text(c) = if type(c) == content {
  let f = c.fields()
  if "text" in f {
    f.text
  } else if "body" in f {
    heading-text(f.body)
  } else if "children" in f {
    f.children.map(heading-text).join()
  } else {
    ""
  }
} else if type(c) == str {
  c
} else {
  ""
}

#context {
  let seen = ()
  for h in query(heading) {
    let pos = h.location().position()
    seen.push(str(pos.page) + " | " + str(h.level) + " | " + heading-text(h.body))
  }
  seen.push(str(query(<end>).at(0).location().position().page) + " | 0 | END")
  text(seen.join("\n"))
}
