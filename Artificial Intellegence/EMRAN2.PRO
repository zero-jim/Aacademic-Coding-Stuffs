trace
predicates
	view(integer,integer,integer)
 	go
clauses 
 	go:-
 	clearwindow,
 	write("I am Emran"),nl,
 	write("All of the worst man."),nl,nl,
 	write("Enter two integers: "),
 	readint(M),
 	readint(N),nl,
 	view(M,N,0).

	view(A,B,X):-
		 A>=B,
		      write("The sum is: ",X),nl.
 
 	view(A,B,X):-
 	BB=B, 	
 	A<=BB,
 	     write(A,"+").
 	
 	view(A,B,X):-
 	BB=B, 	
 	A>=BB,
 	     write(A),nl.	
 	
 	view(A,B,X):-
 	XX=X+A,
 	AA=A+1,
 	view(AA,B,XX).