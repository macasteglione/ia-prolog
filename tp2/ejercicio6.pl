varon(francisco).
varon(mario).
varon(eduardo).
varon(luis).

mujer(victoria).
mujer(veronica).
mujer(alicia).
mujer(beatriz).

esposos(francisco, victoria).
esposos(victoria, francisco).

esposos(mario, alicia).
esposos(alicia, mario).

esposos(eduardo, veronica).
esposos(veronica, eduardo).

padres(francisco, alicia).
padres(victoria, alicia).

padres(francisco, eduardo).
padres(victoria, eduardo).

padres(mario, beatriz).
padres(alicia, beatriz).

padres(eduardo, luis).
padres(veronica, luis).

hermana(X, Y) :-
    mujer(X),
    padres(P, X),
    padres(P, Y),
    X \= Y.

hermano(X, Y) :-
    varon(X),
    padres(P, X),
    padres(P, Y),
    X \= Y.

hijo(X, P) :-
    varon(X),
    padres(P, X).

hija(X, P) :-
    mujer(X),
    padres(P, X).

sobrino(X, Y) :-
    varon(X),
    padres(P, X),
    (hermano(P, Y) ; hermana(P, Y)).

sobrina(X, Y) :-
    mujer(X),
    padres(P, X),
    (hermano(P, Y) ; hermana(P, Y)).

cunado(X, Y) :-
    varon(Y),
    (hermano(X, P) ; hermana(X, P)),
    esposos(P, Y).

cunada(X, Y) :-
    mujer(Y),
    (hermano(X, P) ; hermana(X, P)),
    esposos(P, Y).