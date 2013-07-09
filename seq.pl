seq(F,L,X):- F =< L, seq_(F,L,X).
seq_(F,L,X):-  X is F; F < L, N is F+1, seq_(N,L,X).
