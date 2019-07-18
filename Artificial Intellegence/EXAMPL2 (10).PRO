              /* Program 12 */
domains
       integerlist = integer*
predicates
       append(integerlist,integerlist,integerlist)
       writelist(integerlist)
clauses
       append([],List,List).
       append([X|L1], List2, [X|L3]) if
                 append(L1,List2,L3).
       writelist([]).
       writelist([Head|Tail]) if
                 write(Head),nl,writelist(Tail).
