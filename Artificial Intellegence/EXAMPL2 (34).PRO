              /* Program 36 */
predicates
    polyspiral(integer)
goal
    graphics(1,0,17),polyspiral(500).
clauses
    polyspiral(X):-
        forward(X),right(62),Y=X+100,polyspiral(Y).
