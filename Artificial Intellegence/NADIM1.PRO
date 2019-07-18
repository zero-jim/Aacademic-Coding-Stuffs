predicates
	viewnum(integer,integer,integer)
	go
	
clauses
	go:-
	clearwindow,
	write("\nThe series is:"),
	viewnum(1,1,5).
	

	
		
	viewnum(A,B,C):-
	write(A),
	write(" "),
	A=A+B,
	B=B+1,
	C=C-1,
	viewnum(A,B,C).
	
	
	
	