score(X, Y, Score) :-
    Distance is sqrt(X * X + Y * Y),
    (   Distance =< 1 -> Score = 10
    ;   Distance =< 5 -> Score = 5
    ;   Distance =< 10 -> Score = 1
    ;   Score = 0
    ).