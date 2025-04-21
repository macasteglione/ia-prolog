max(X, Y, X) :- X >= Y.
max(X, Y, Y) :- X < Y.

maxlista([X], X).
maxlista([A|R], X) :- maxlista(R, X1), max(X1, A, X).

sumlista([], 0).
sumlista([H|T], Res) :- sumlista(T, X), Res is H + X.

% sumlista([1,2,3], R) :- sumlista([2,3], 0), R = 1 + 0.
% sumlista([2,3], R) :- sumlista([3], 1), R = 2 + 1.
% sumlista([3], R) :- sumlista([], 3), R = 3 + 3.
% R = 6.

ordenada([]).
ordenada([_]).
ordenada([A,B|C]) :- A =< B, ordenada([B|C]).