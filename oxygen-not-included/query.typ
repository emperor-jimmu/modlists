// Page-position helper for structure audits.
// Includes the full document, then reports heading pages and total pages.
#include "template.typ"

#context {
  let seen = ()
  for h in query(heading) {
    let parts = if type(h.body) == "sequence" { h.body } else { (h.body,) }
    let text = parts.map(it => if type(it) == "text" { it.text } else { "" }).join()
    let pos = h.location().position()
    seen.push(str(pos.page) + " | " + str(h.level) + " | " + text)
  }
  seen.push(str(query(<end>).at(0).location().position().page) + " | 0 | END")
  text(seen.join("\n"))
}
