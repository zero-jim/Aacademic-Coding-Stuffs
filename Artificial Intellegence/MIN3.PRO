/* Minimum of 3 values */

predicates
	go
	small(integer,integer,integer)


clauses
	go:-
	clearwindow,
	write("Enter the value of a,b and c:"),nl,
	readint(A),nl,
	readint(B),nl,
	readint(C),nl,
	small(A,B,C).

	small(A,B,C):-
		A<=B,
		A<=C,
		write("The smallest number is: ",A),nl.

	small(A,B,C):-
		B<=A,
		B<=C,
		write("The smallest number is: ",B),nl.

	small(A,B,C):-
		C<=A,
		C<=B,
		write("The smallest number is: ",C),nl.