domains
  word=string
  list=word*
predicates
  run
  make(list)
  report(list)
  member(word,list)
  insert(word,list,list)
clauses
  run:-
    write("Enter words: "), nl,
    make(L), report(L).
  make(L2):-
    readln(W), W<>"", insert(W,L1,L2), make(L1).
  make(_).
  insert(X,L,L):- member(X,L), !.
  insert(X,L,[X|L]).
  member(X,[X|_]):-!.
  member(X,[_|L]):- member(X,L).
  report([]):- !.
  report([X|L]):-
    write(X), nl, report(L).