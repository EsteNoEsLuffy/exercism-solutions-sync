letter_score(L, 1) :- member(L, [a, e, i, o, u, l, n, r, s, t, 'A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T']).
letter_score(L, 2) :- member(L, [d, g, 'D', 'G']).
letter_score(L, 3) :- member(L, [b, c, m, p, 'B', 'C', 'M', 'P']).
letter_score(L, 4) :- member(L, [f, h, v, w, y, 'F', 'H', 'V', 'W', 'Y']).
letter_score(L, 5) :- member(L, [k, 'K']).
letter_score(L, 8) :- member(L, [j, x, 'J', 'X']).
letter_score(L, 10) :- member(L, [q, z, 'Q', 'Z']).

score(Word, Score) :-
    (   string(Word)
    ->  string_chars(Word, Chars)
    ;   atom(Word)
    ->  atom_chars(Word, Chars)
    ;   Chars = Word
    ),
    maplist(letter_score, Chars, Scores),
    sum_list(Scores, Score).