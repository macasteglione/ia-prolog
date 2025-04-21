miembro(X, [X|_]).
miembro(X, [_|T]) :- miembro(X, T).

append([], L, L).
append([X|L1], L2, [X|L3]) :- append(L1, L2, L3).

sublista(S, L) :- append(_, rest, L), append(S, _, rest).