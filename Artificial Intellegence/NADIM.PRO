predicates
	viewnum(integer,integer)
	go
	
clauses
	go:-
	write("Enter the final number:"),
	readint(N),
	write("\nThe series is:"),
	viewnum(1,1).
	
		
	viewnum(A,B):-
	write(A),
	write(" "),
	A=A+B,
	B=B+1,
	viewnum(A,B).
	
	
	