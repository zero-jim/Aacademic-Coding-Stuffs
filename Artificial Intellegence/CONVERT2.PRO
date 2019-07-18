
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
  frontreal(string,string,string)
  strip(string,string)
  repeat
  report
  writerow(string)
/*
  putrhs(string)
  convert(char,char)
  putentry(string)
  putnumber(real)
  */
clauses
  run:-
    init, getRows, getCols, getRHS, report.
  init:-
/*    makewindow(1,14,0,"",0,0,25,80), */ clearWindow,
    write("File name: "), readln(F),
    openRead(data,F), readDevice(data), skip.
  skip:-
    readln(S), S<>"ROWS", !, skip.
  skip.
  getRows:-
    readln(S), frontToken(S,T,S1), T<>"COLUMNS", !, str_char(T,Ch),
    frontToken(S1,R,_), assertz(row(R,Ch)), getRows.
  getRows.
  getCols:-
    readln(S), frontToken(S,C,S1), C<>"RHS", !, write(C), nl,
    getEntry(S1,C), getCols.
  getCols.
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
    repeat, row(R,_), writeRow(R).
  report:- readDevice(keyboard), readChar(_).
  writeRow(R):-
    repeat, entry(R,C,X), write(R,'\t',C,'\t',X), nl.
  repeat.
  repeat:-repeat.