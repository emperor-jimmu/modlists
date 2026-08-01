
// DIAGNOSTIC 2: Does set table(fill) work AFTER importing style.typ?
#import "style.typ": *

#set page(width: 12cm, height: 6cm)

// Override table settings AFTER import
#set table(
  fill: (_, y) => if calc.odd(y) { rgb("FF6600") },
  stroke: 1pt + rgb("003366"),
)

#table(
  columns: 2,
  table.header([Name], [Value]),
  [Alpha], [1],
  [Beta],  [2],
  [Gamma], [3],
)
