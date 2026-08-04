// Page-position helper for structure audits.
// Includes the full document, then reports heading pages and total pages.
#include "template.typ"

#context {
  let seen = ()
  for h in query(heading) {
    let pos = h.location().position()
    seen.push(str(pos.page) + " | " + str(h.level) + " | " + h.body.text)
  }
  seen.push(str(query(<end>).at(0).location().position().page) + " | 0 | END")
  text(seen.join("\n"))
}
