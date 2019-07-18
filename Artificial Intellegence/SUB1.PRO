project "myproj"
include "globdef.pro"
clauses
 welcome(Name):-write("welcome  ",Name),
                write("nice to meet you."),
                sound(100,200).