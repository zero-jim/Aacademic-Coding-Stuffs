/* 0+1+2+3+............+n */
predicates
	go
	sum(integer,integer)


clauses
	go:-
	clearwindow,
	write("Enter the value of n:"),nl,
	readint(N),nl,
	sum(0,N).

	sum(A,0):-
		write("The summmation is: ",A),nl.

	sum(X,Y):-
		XX=X+Y,
		YY=Y-1,	/*fail,	*/
/*		write(Y,"+"),*/
		sum(XX,YY)/*,
		fail*/.