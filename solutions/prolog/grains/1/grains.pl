square(Square, Grains) :-
    between(1, 64, Square),
    Grains is 2 ** (Square - 1).

total(Total) :-
    Total is 2 ** 64 - 1.