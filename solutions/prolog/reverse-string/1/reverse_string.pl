string_reverse(S, Reversed) :-
    string_codes(S, Codes),
    reverse(Codes, RevCodes),
    string_codes(Reversed, RevCodes).