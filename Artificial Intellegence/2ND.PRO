predicates
          go
          sum(integer,integer)
clauses
     go:-
       write("Enter N"),
       readint(N),
       sum(1,N).
    sum(A,1):-
       write("The Sum is=",A),nl.
    sum(X,Y):-
       P=X+Y,
       Q=Y-2,
       sum(P,Q).                 