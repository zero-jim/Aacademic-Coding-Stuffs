              /* Program 38 */
predicates
    square(integer)
    fillsquare(integer)
goal
    graphics(1,0,17),
    fillsquare(5000).
clauses
    square(X):-
        forward(X),right(90),forward(X),right(90),
        forward(X),right(90),forward(X),right(90).
    fillsquare(X):-X>10000,!.
    fillsquare(X):-square(X),Y=X+500,fillsquare(Y).

