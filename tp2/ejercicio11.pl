reverso([], []).
reverso([H|T], L) :- reverso(T, TR), append(TR, [H], L).