predicates
	view(integer,integer)
 	go
clauses 
 	go:-
 	clearwindow,
 	write("I am Emran"),nl,
 	write("All of the worst man."),nl,nl,
 	write("Enter two integers: "),
 	readint(M),
 	readint(N),
 	view(M,N).
 
 	view(A,B):-
 	write(A),nl,
 	write(B),nl,
 	C=A+B,
 	write("Sum:"),
 	write(C),nl.