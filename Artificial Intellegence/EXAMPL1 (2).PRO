             /* Program 1 */

domains
    person, activity = symbol

predicates
    likes(person,activity)

clauses
    likes(ellen,tennis).
    likes(john,football).
    likes(tom,baseball).
    likes(eric,swimming).
    likes(mark,tennis).
    likes(bill,X) if likes(tom,X).
