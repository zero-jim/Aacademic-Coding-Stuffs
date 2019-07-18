domains
  int=integer
  list=int*
predicates
  run(list)
  member(int,list)
  append(list,list,list)
  insert(list,int,list)
clauses
  run(L1):- readint(X), insert(L1,X,L2), run(L2).
  run(L):- write(L).
  append([],L,L).
  append([X|L1],L2,[X|L3]):- append(L1,L2,L3).
  member(X,[X|_]).
  member(X,[_|L]):- member(X,L).
  insert(L,X,L):- member(X,L), !.
  insert(L1,X,L2):- 
    append(LL,[Y|LR],L1), X<Y,
    append(LL,[X,Y|LR],L2), !.
  insert(L,X,L2):-append(L,[X],L2).
  