square_root(Number, SquareRoot) :-
    binary_search(Number, 1, Number, SquareRoot).

binary_search(Number, Low, High, Root) :-
    Low =< High,
    Mid is (Low + High) // 2,
    Sq is Mid * Mid,
    (   Sq =:= Number
    ->  Root = Mid
    ;   Sq < Number
    ->  NextLow is Mid + 1,
        binary_search(Number, NextLow, High, Root)
    ;   NextHigh is Mid - 1,
        binary_search(Number, Low, NextHigh, Root)
    ).