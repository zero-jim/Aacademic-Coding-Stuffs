
domains
  word=string
  count=integer
database
  occurs(word,count)
predicates
  run
  init(string)
  store(string)
  frontWord(string,word,string)
  report
  insert(word)
clauses
  run:- init(S), store(S), !, report.
  init(S):-
    clearwindow, write("File name: "),
    readln(F), file_str(F,S).
  store(S):- frontWord(S,W,S1), !,
    insert(W), store(S1).
  store(_).
  frontWord(S,W,S1):- frontToken(S,W,S1), isname(W), !.
  frontWord(S,W,S2):- frontToken(S,_,S1), frontWord(S1,W,S2).
  insert(W):- occurs(W,N), !,
    retract(occurs(W,_)), N1=N+1, assertz(occurs(W,N1)).
  insert(W):-
    assertz(occurs(W,1)).
  report:- 
    occurs(W,N), write(W,'\t',N), nl, fail.  
  