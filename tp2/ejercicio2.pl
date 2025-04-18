miembro(X, [X|Xs]).
miembro(X, [Y|Ys]) :- miembro(X, Ys).

elim_rep([], []).
elim_rep([X|Xs], Ys) :- member(X, Xs), elim_rep(Xs, Ys).
elim_rep([X|Xs], [X|Ys]) :- elim_rep(Xs, Ys).