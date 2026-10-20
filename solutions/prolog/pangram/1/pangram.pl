pangram(Sentence) :-
    atom_string(Sentence, Str),
    string_lower(Str, Lower),
    string_codes(Lower, Codes),
    \+ ( member(C, `abcdefghijklmnopqrstuvwxyz`), \+ member(C, Codes) ).