square_of_sum(N, Result) :-
    Sum is N * (N + 1) // 2,
    Result is Sum * Sum.

sum_of_squares(N, Result) :-
    Result is N * (N + 1) * (2 * N + 1) // 6.

difference(N, Result) :-
    square_of_sum(N, SqSum),
    sum_of_squares(N, SumSq),
    Result is SqSum - SumSq.