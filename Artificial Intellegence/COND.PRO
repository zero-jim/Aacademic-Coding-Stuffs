predicates
	go	
	greater(integer,integer)

clauses
	go:-
	clearwindow,
	write("\nI am EMRAN, All of the worst man. This is my third simple input and output program:\n\n"),
	
	write("Enter two integer values:"),nl,
	readint(I1),
	readint(I2),nl,nl,
	greater(I1,I2).
	
	greater(I1,I2):-
		I1>I2,
		write("The greater value is:",I1),nl.

	greater(I1,I2):-
		I2>I1,
		write("The greater value is:",I2),nl.