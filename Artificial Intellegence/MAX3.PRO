/* Maximum of 3 values */

predicates
	go
	learge(integer,integer,integer)


clauses
	go:-
	clearwindow,
	write("Enter the value of a,b and c:"),nl,
	readint(A),nl,
	readint(B),nl,
	readint(C),nl,
	learge(A,B,C).

	learge(A,B,C):-
		A>=B,
		A>=C,
		write("The leargest number is: ",A),nl.

	learge(A,B,C):-
		B>=A,
		B>=C,
		write("The leargest number is: ",B),nl.

	learge(A,B,C):-
		C>=A,
		C>=B,
		write("The leargest number is: ",C),nl.