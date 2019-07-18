
predicates
	sum(integer,integer,integer)
	go
clauses
	go:-
	clearwindow,
	sum(1,1).
	sum(X,Y):-
		S1=X+Y,
		S2=Y+1,
		sum(S1,S2).
		