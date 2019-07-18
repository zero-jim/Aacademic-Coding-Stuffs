predicates
  run
  process(char)
clauses
  run:-
    makewindow(2,14,14,"IKI",0,0,15,50),
    makewindow(3,30,40,"UC",4,40,12,40),
    makewindow(1,46,47,"BIR",8,10,15,60),
    makewindow(4,107,67,"DORT",10,30,15,40),
    readchar(C), process(C).
  process('\\'):- !.
  process(C):-
    char_int(C,N), M=N-48, M>0, M<5, !,
    shiftwindow(M), readln(_), 
    readchar(X), process(X).
  process(_):-
    beep, readchar(X), process(X).