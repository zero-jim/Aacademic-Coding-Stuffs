predicates
    checkodd(integer,integer)
	printeven(integer,integer)
	go
clauses
    go:-
    clearwindow,
       write("please enter two integer:"),
       readint(N1),nl,readint(N2),checkodd(N1,N2),nl,
    go.
printeven(N1,N2):-
         N1<N2,
        write(N1,""),
		NN=N1+2,
		printeven(NN,N2).
	
	
 checkodd(N1,N2):-
    NN=N1 mod 2,
    NN=1,
    Y=NN+1,
printeven(Y,N2),!.
	
checkodd(N1,N2):-
    NN=N1 mod 2,
    NN=0,
    Y=N1,
printeven(Y,N2).	
	