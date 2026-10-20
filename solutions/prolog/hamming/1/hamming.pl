to_chars(X, Chars) :-
    (   string(X) -> string_chars(X, Chars)
    ;   atom(X) -> atom_chars(X, Chars)
    ;   Chars = X
    ).

hamming_distance(Str1, Str2, Dist) :-
    to_chars(Str1, Chars1),
    to_chars(Str2, Chars2),
    length(Chars1, Len),
    length(Chars2, Len),
    distance(Chars1, Chars2, 0, Dist).

distance([], [], Dist, Dist).
distance([H1|T1], [H2|T2], Acc, Dist) :-
    (   H1 == H2
    ->  Acc1 is Acc
    ;   Acc1 is Acc + 1
    ),
    distance(T1, T2, Acc1, Dist).