
// DIAGNOSTIC: Does set table(fill) work at all?
#set page(width: 12cm, height: 6cm)
#set table(
  fill: (_, y) => if calc.odd(y) { rgb("FF0000") },
  stroke: 1pt + black,
)

#table(
  columns: 2,
  table.header([Name], [Value]),
  [Alpha], [1],
  [Beta],  [2],
  [Gamma], [3],
)
