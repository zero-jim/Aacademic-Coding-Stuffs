            /* Program 9 */
domains
       row, column, step = integer
       movement = up(step); down(step);
                  left(step) ; right(step)
predicates
       move_cursor(row,column,movement)
clauses
       move_cursor(R,C,up(Step)) :-
                   R1=R-Step,cursor(R1,C).
       move_cursor(R,C,down(Step)) :-
                   R1=R+Step,cursor(R1,C).
       move_cursor(R,C,left(_)) :-
                   C1=C-1,cursor(R,C1).
       move_cursor(R,C,right(_)):-
                   C1=C+1,cursor(R,C1).
