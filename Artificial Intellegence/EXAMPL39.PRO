              /* Program 39 */

predicates
  circle

goal
  graphics(2,0,4),
  circle.

clauses
  circle:-forward(100),right(1),circle.
