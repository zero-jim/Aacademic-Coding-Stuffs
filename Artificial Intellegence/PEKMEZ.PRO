

predicates
  try(integer,integer,integer)
  move(integer,integer,integer,integer,integer)

clauses
  move(S,D,C,S2,C):-
    D<C, S+D>C, !, S2=S+D-C.
  move(S,D,C,0,D2):-
    not(S+D>C), !, D2=S+D.
    
  try(4,4,0):- !.
  try(X,Y,Z):-
    move(X,Y,5,X2,Y2), !,try(X2,Y2,Z).
  try(X,Y,Z):-
    move(Y,Z,3,Y2,Z2), !,try(X,Y2,Z2).
  try(X,Y,Z):-
    move(Z,X,8,Z2,X2), !,try(X2,Y,Z2).
  try(X,Y,Z):-
    move(X,Z,3,X2,Z2), !,try(X2,Y,Z2).
  try(X,Y,Z):-
    move(Z,Y,5,Z2,Y2), !,try(X,Y2,Z2).
  try(X,Y,Z):-
    move(Y,X,8,Y2,X2), !,try(X2,Y2,Z).
      