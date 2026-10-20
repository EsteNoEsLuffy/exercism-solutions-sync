triangle(A, B, C, Type) :-
    is_triangle(A, B, C),
    triangle_type(A, B, C, Type).

is_triangle(A, B, C) :-
    A > 0, B > 0, C > 0,
    A + B >= C,
    B + C >= A,
    A + C >= B.

triangle_type(A, A, A, "equilateral") :- !.
triangle_type(A, B, C, "isosceles") :-
    (A =:= B ; B =:= C ; A =:= C), !.
triangle_type(A, B, C, "scalene") :-
    A =\= B, B =\= C, A =\= C.