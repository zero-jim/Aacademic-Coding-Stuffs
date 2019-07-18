predicates
printout(string)
go
clauses
go:-
clearwindow,write("Enter a strng"),nl,readln(Z),printout(Z),nl.
go.
    printout("").
    printout(Z):-
    str_len(Z,N),
    N>0,
    frontchar(Z,F,Rem),
    printout(Rem),
    write(F).