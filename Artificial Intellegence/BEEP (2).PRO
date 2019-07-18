predicates
    go
clauses
   go:-
      clearwindow,
     write("this is a prolog code for beep"),
	 beep,nl,
	 readchar(C),write(C),nl,char_int(C,N),nl,   write(N).	 