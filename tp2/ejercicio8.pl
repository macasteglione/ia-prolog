lista([]).
lista([X|Y]) :- lista(Y).

concatenar([], L, L) :- lista(L).
concatenar([X|Y], L, [X|Z]) :- concatenar(Y, L, Z).


% concatenar([],[3,4],[]).
% concatenar([1,2], ).