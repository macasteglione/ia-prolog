prefijo([], _).
prefijo([X|Ps], [X|Ls]) :- prefijo(Ps, Ls).

posfijo(S, S).
posfijo(S, [_|T]) :- posfijo(S, T).

infijo(I, L) :- sufijo(L, S), prefijo(I, S).

sufijo(L, L).
sufijo([_|T], S) :- sufijo(T, S).

sublista(S, L) :- infijo(S, L).