
domains
  file=data
database
  row(string,char)
  entry(string,string,real)
  rhs(string,real)
predicates
  run
  init
  skip
  getrows
  getcols
  getentry(string,string)
  getrhs
  check(string,string,string,string)
  frontreal(string,string,string)
  strip(string,string)
  report
  putrhs(string)
  convert(char,char)
  putentry(string)
  putreal(real)

clauses
  run:-
    init, getRows, getCols, getRHS, report.
  run:- readDevice(keyboard), readChar(_).
  init:-
    makeWindow(1,15,7,"",0,0,25,80), clearWindow,
    write("File name: "), readln(F),
    openRead(data,F), readDevice(data), skip.
  skip:-
    readln(S), S<>"ROWS", !, skip.
  skip.
  getRows:-
    readln(S), frontToken(S,T,S1), T<>"COLUMNS", !, str_char(T,Ch),
    frontToken(S1,R,_), write(R), nl, assertz(row(R,Ch)), getRows.
  getRows:- nl,nl.
  getCols:-
    readln(S), frontToken(S,C1,S1), C1<>"RHS", !, check(S1,C1,S2,C),
    write(C), nl, getEntry(S2,C), getCols.
  getCols.
  check(S,C,S,C):- not(frontToken(S,"*",_)), !.
  check(S1,C1,S3,C3):-
    frontToken(S1,X1,S2), concat(C1,X1,C2),
    frontToken(S2,X2,S3), concat(C2,X2,C3).
  getEntry(S,C):-
    frontToken(S,R,S1), !, row(R,_), frontReal(S1,N,S2), str_real(N,X),
    assertz(entry(R,C,X)), getEntry(S2,C).
  getEntry(_,_).
  getRHS:-
    readln(S), frontToken(S,R,S1), R<>"ENDATA", R<>"BOUNDS", !,
    frontReal(S1,N,_), str_real(N,X), assertz(rhs(R,X)), getRHS.
  getRHS.
  frontReal(S,N,S3):-
    frontToken(S,"-",S1), frontToken(S1,NN,S2), 
    strip(S2,S3), concat("-",NN,N).
  frontReal(S,N,S2):- 
    frontToken(S,N,S1), strip(S1,S2).
  strip(S1,S2):-
    frontToken(S1,".",S2), !.
  strip(S,S).
  report:-
    row(R,T), convert(T,S), nl, write(R), nl,
    putEntry(R), write(S), putRHS(R), nl, fail.
  convert('E','='). convert('G','>'). convert('L','<').
  putEntry(R):-
    entry(R,C,X), X<>0, putReal(X), writef("  %-10",C), fail.
  putEntry(_).
  putReal(1) :- !, write("+             ").
  putReal(-1):- !, write("-             ").
  putReal(X):- X<0, !, MX=-X, write("-"), writef("%13.4",MX).
  putReal(X):- write("+"), writef("%13.4",X).
  putRHS(R):- rhs(R,X), !, writef("%13.4",X).
  putRHS(_):- write('0').
  