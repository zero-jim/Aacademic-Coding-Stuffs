/*trace*/
domains
	intlist = integer*
	name = symbol
/*	position = intlist	*/
	player = symbol
	result = symbol
/*	move = position		*/
	number = integer
	state = symbol
	sum = integer

predicates
	
	run
	whosturn( player )
	defplayer( player , player )
	play ( intlist , player , player )
	initialize( intlist , player )
	display_game( intlist , player , player )
	game_over( intlist , player , player )
	announce( player )
	choose_move( intlist , player , intlist )
	legal( intlist , intlist )
	nth_member( integer , intlist , number )
	evaluate( intlist ,state , intlist )
	safety( intlist , state )
	zero( intlist )
	decide_move(state , intlist ,  intlist , intlist )
	move( intlist , intlist , intlist )
	next_player( player , player )
	mod_sum ( intlist , intlist , intlist ) 
	mod_add( intlist , intlist ,intlist )
	binary ( integer , intlist )
	decimalget ( intlist , integer )
	decimal ( intlist , integer , integer , integer )
	safe_move ( intlist , intlist , intlist )
	safe_move1( intlist , intlist , integer , intlist )
	can_zero(intlist , intlist ,intlist, intlist ) 

goal
	run .

clauses

whosturn( Player  ) :-
	write("Please select whom to start \n"),
	write("Write computer or opponent for start\n"),
	readln( Player0 ) , defplayer( Player0 , Player ) .

defplayer( "", opponent ) .
defplayer( Player, Player ) .

run :-
	whosturn( Player ) , 
	initialize( Position,Player ) ,
	display_game( Position , Player , Result ) ,
	play( Position , Player , Result ) .
play( Position , Player , Result ) :-
	game_over( Position , Player , Result ) , ! ,
	announce ( Result ) .
play( Position , Player , Result ) :-
	choose_move ( Position , Player , Move ) ,
	move( Move , Position , Position1 ),
	next_player( Player , Player1 ) ,
	display_game( Position1 , Player1 ,Result ) ,
	! , play ( Position1 , Player1 , Result ).

initialize( [1,3,5,7] , opponent ). 
initialize( [1,3,5,7] , computer ).

display_game ( Position , X , _ ) :-	
	write("Position = ",Position,"\nPlayer=",X) , nl. 

game_over([ ], Player, Player) .
announce(computer) :- write("Opponent won! Congratulations."), nl . 
announce(opponent) :- write("Computer won."), nl.

/*Choosing moves */
legal([K,N] , Position) :- nth_member(K,Position,M), N <= M.

nth_member(1,[X|_],X). 
nth_member(N,[_|Xs],Y) :- 
	N > 1, N1 = N - 1, nth_member(N1,Xs,Y).

choose_move(Position,opponent,Move) :-
	write("Please enter piles no \n"), readint(P) ,
	write("Please enter number of matches \n"), readint(M) ,
	Move= [P,M] , legal(Move,Position).

choose_move (Position, computer , Move) :- 
	evaluate(Position,Safety,Sum), 
	decide_move(Safety,Position,Sum,Move).

evaluate(Position,Safety,Sum) :-
	mod_sum (Position, [ ] ,Sum ) , safety (Sum , Safety ) .

safety(Sum,safe) :- zero(Sum), !. 
safety(Sum,unsafe) :- not ( zero(Sum) ), !.

/*  The computer's ''arbitrary move"  */
decide_move( safe, _ , _ ,[1,1] ).
decide_move( unsafe , Position , Sum,Move) :-
	safe_move(Position,Sum,Move).

move( [K,M] , [N|Ns] , [N|Nsl] ) :-
	K > 1, Kl = K-1, move([Kl,M],Ns,Nsl). 
move([1,N], [N|Ns],Ns). 
move([1,M], [N|Ns],[Nl|Ns]) :- 
	N > M, Nl = N-M.

next_player(computer,opponent) .
next_player(opponent, computer) .

mod_sum([N|Ns],Bs,Sum) :-
	binary(N,Ds), mod_add(Ds,Bs,Bsl), mod_sum( Ns , Bsl , Sum ). 
mod_sum([ ] ,Sum,Sum) .

mod_add(Bs,[],Bs). 
mod_add([],Bs,Bs). 
mod_add([B|Bs],[C|Cs],[D|Ds]) :-
	D = (B+C)mod 2, mod_add(Bs,Cs,Ds).

binary(1,[1]). 
binary(N,[D|Ds] ) :-
	N > 1, D = N mod 2, Nl = N div 2, binary(Nl,Ds).
decimalget(Ds,N) :- decimal(Ds,0,1,N). 
decimal([ ],N, _ ,N). 
decimal([D|Ds],A,T,N) :-
	A1 = A + D * T, T1 = T * 2, decimal( Ds , A1 , T1 , N ) .
zero([ ]). 
zero([0|Zs]) :- zero(Zs).
/* Move is a move from the current Position with the value modSum that leaves a safe position. */

safe_move( [3,4] , [1,1,1] , [ 2,1] ) .
safe_move( [4,3] , [1,1,1] , [ 1,2] ) .
safe_move(Piles,ModSum,Move) :-
	safe_move1(Piles,ModSum,1,Move).
safe_move1( [Pile | _ ] ,ModSum,K, [K,M] ) :-
	binary ( Pile, Bs ) , can_zero( Bs , ModSum , Ds , [0] ) , decimalget(Ds,M) . 
safe_move1( [ _ | Piles] , ModSum , K , Move ) :-
	Kl = K+1, safe_move1(Piles , ModSum , Kl , Move ).
can_zero([ ],ModSum,[ ],[0]) :-
	zero(ModSum). 
can_zero([ _ | Bs],[0 | ModSum],[C | Ds],[C]) :-
	can_zero(Bs,ModSum,Ds,[C]) . 
can_zero([B | Bs],[1 | ModSum],[D | Ds],[C]) :-
	D = 1 - B * C , C1 = 1-B , can_zero(Bs ,ModSum,Ds, [C1] ) .

