             /* Program 25 */
domains
    list = integer*
predicates
    member(integer,list)
    intersect(list,list,list)
clauses
    member(X,[X|_]).
    member(X,[_|Y]):- member(X,Y).

    intersect([],[],_).
    intersect([X|Y],[X|L1],L2):-
        member(X,L2),intersect(Y,L1,L2).
    intersect(Y,[_|L1],L2):-
        intersect(Y,L1,L2).
    