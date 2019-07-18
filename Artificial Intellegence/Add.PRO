predicates
	go	

clauses
	go:-
	clearwindow,
	write("\nI am EMRAN, All of the worst man. This is my second simple input and output program:\n\n"),
	
	write("Enter a character,integer,real,string value rach:"),
	readchar(C1),nl,
	write(" "),
	readchar(C2),nl,
	readint(I1),readint(I2),
	readreal(R1),readreal(R2),
	readln(S1),readln(S2),nl,nl,
	
	I3=I1+I2,
	R3=R1+R2,
	
	write("The character value is:",C1," ",C2),nl,
	write("The integer value is:",I3),nl,
	write("The real value is:",R3),nl,
	write("The string value is:",S1," ",S2),nl.