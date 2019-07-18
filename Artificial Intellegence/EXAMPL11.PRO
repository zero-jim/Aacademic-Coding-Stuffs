             /* Program 11 */
domains
       namelist = name*
       name = symbol
predicates
       member(name,namelist).
clauses
       member(Name,[Name|_]).
       member(Name,[_|Tail]) if member(Name,Tail).
