dna_to_rna('G', 'C').
dna_to_rna('C', 'G').
dna_to_rna('T', 'A').
dna_to_rna('A', 'U').
dna_to_rna(71, 67).
dna_to_rna(67, 71).
dna_to_rna(84, 65).
dna_to_rna(65, 85).

rna_transcription(Dna, Rna) :-
    (   string(Dna)
    ->  string_chars(Dna, DnaList),
        maplist(dna_to_rna, DnaList, RnaList),
        string_chars(Rna, RnaList)
    ;   maplist(dna_to_rna, Dna, Rna)
    ).