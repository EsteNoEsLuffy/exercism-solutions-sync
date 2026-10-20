latest(Scores, Latest) :-
    last(Scores, Latest).

personal_best(Scores, Best) :-
    max_member(Best, Scores).

personal_top_three(Scores, TopThree) :-
    msort(Scores, SortedAsc),
    reverse(SortedAsc, SortedDesc),
    take_top_three(SortedDesc, TopThree).

take_top_three([], []).
take_top_three([X], [X]).
take_top_three([X, Y], [X, Y]).
take_top_three([X, Y, Z | _], [X, Y, Z]).