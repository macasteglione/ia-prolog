prefijo([], _).
prefijo([X|Xs], [X|Ys]) :- prefijo(Xs, Ys).

posfijo(P, L) :- append(_, P, L).

infijo(I, L) :- append(_, S, L), append(I, _, S).

sublista(S, L) :- infijo(S, L).