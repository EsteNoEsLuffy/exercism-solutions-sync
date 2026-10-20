leap(Year) :-
    0 is Year mod 400.
leap(Year) :-
    \+ (0 is Year mod 100),
    0 is Year mod 4.