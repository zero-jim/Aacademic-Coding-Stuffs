             /* Program 14 */
domains
       name, thing = symbol
predicates
       likes(name,thing)
       reads(name)
       is_inquisitive(name)
clauses
       likes(john,wine).
       likes(lance,skiing).
       likes(Z,books) if
                   reads(Z) and
                   is_inquisitive(Z).
       likes(lance,books).
       likes(lance,films).
       reads(john).
       is_inquisitive(john).
