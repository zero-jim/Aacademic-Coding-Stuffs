predicates
           go
           sum(integer,integer)
clauses
        go:-
        clearwindow,
        sum(0,20).
       sum(A,0):-
       write("sum is= ",A),nl.
       sum(X,Y):-      
       XX=X+Y,
       YY=Y-2,
       sum(XX,YY).      