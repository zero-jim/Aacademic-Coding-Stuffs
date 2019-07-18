trace
predicates
  run
clauses
  run:-
    write("File name: "), readln(F), 
    file_str(F,S), write(S), nl, run.
  run.
