               /* Program 13 */

domains
    title,author = symbol
    pages        = integer
    publication  = book(title,pages)
predicates
    written_by(author,publication)
    long_novel(publication)
clauses
    written_by(fleming,book("DR NO",210)).
    written_by(melville,book("MOBY DICK",600)).
    long_novel(book(Title,Length)):-written_by(_,book(Title,Length)),
                       Length>300.
