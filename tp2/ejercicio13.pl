ultimoElem([X], [], X).
ultimoElem([X|R], [X|NL], UE) :- ultimoElem(R, NL, UE).

rotar([X|R], [E|L]) :- ultimoElem([X|R], L, E).