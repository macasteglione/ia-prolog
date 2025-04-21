reverso2([], []).
reverso2([X|Xs], R) :- reverso2(Xs, RXs), append(RXs, [X], R).