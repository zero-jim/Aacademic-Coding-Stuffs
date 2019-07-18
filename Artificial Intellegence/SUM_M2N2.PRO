/* m+(m+1)+(m+2)+(m+3)+............+(n-2)+(n-1)+n */

predicates
	go
	sum(integer,integer)


clauses
	go:-
	clearwindow,
	write("Enter the value of m and n:"),nl,
	readint(M),nl,
	readint(N),nl,
	sum(M,N).

	sum(MM,NN):-
		SS=MM+1,
		TT=TT+1,
		TT<=N,
		sum(TT,NN),
		TT=N,
		write("The M to N summmation is: ",Total),nl.

	sum(_,_).