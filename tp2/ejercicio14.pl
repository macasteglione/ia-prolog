subconjunto([], []).
subconjunto([X|Xs], [X|Ys]) :- subconjunto(Xs, Ys).

subconjunto([_|Xs], Ys) :- subconjunto(Xs, Ys).
