project "myproj"
include "globdef.pro"
predicates
  test
goal
  test.
clauses
  test:-clearwindow,
        write("please write your name"),
        nl,nl,nl,
        readln(ThisName),nl,
        welcome(ThisName).    
   welcome(N):-
        write("Welcome, ",N).
        