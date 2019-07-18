predicates
	go	

clauses
	go:-
	clearwindow,
	write("\nI am EMRAN, All of the worst man. This is my second simple input and output program:\n\n"),
	
	write("Enter two integer values:"),nl,
	readint(I1),
	readint(I2),nl,nl,
	
	I3=I1+I2,
	I4=I1-I2,
	I5=I1*I2,
	I6=I1/I2,
	/*I7=I1%I2,*/
	
	write("The addition value is:",I3),nl,
	write("The subtraction value is:",I4),nl,
	write("The multiplecation value is:",I5),nl,
	write("The division value is:",I6),nl.
	/*write("The reminder value is:",I7),nl.*/