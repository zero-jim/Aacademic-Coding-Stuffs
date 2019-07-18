              /* Program 8 */
predicates
       isletter(char)
clauses
       isletter(Ch) if Ch <= 'z' and 'a' <= Ch.
       isletter(Ch) if Ch <= 'Z' and 'A' <= Ch.
