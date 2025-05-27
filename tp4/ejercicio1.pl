% Estados inicio y meta
estado_inicial(estado(3, 3, 1)).
estado_meta(estado(0, 0, 0)).

% Cruze de izquierda a derecha (1 a 0)
cruzar(estado(M, C, 1), estado(NM, C, 0), 'Un misionero cruza') :- 
    M > 0, 
    NM is M - 1, 
    es_valido(estado(NM, C, 0)).

cruzar(estado(M, C, 1), estado(NM, C, 0), 'Dos misioneros cruzan') :- 
    M > 1, 
    NM is M - 2, 
    es_valido(estado(NM, C, 0)).

cruzar(estado(M, C, 1), estado(M, NC, 0), 'Un canibal cruza') :- 
    C > 0, 
    NC is C - 1, 
    es_valido(estado(M, NC, 0)).

cruzar(estado(M, C, 1), estado(M, NC, 0), 'Dos canibales cruzan') :- 
    C > 1, 
    NC is C - 2, 
    es_valido(estado(M, NC, 0)).

cruzar(estado(M, C, 1), estado(NM, NC, 0), 'Un misionero y un canibal cruzan') :- 
    M > 0, 
    C > 0, 
    NM is M - 1, 
    NC is C - 1, 
    es_valido(estado(NM, NC, 0)).

% Cruze de derecha a izquierda (0 a 1)
cruzar(estado(M, C, 0), estado(NM, C, 1), 'Un misionero vuelve') :-
    M < 3,
    NM is M + 1,
    es_valido(estado(NM, C, 1)).

cruzar(estado(M, C, 0), estado(NM, C, 1), 'Dos misioneros vuelven') :-
    M < 2,
    NM is M + 2,
    es_valido(estado(NM, C, 1)).

cruzar(estado(M, C, 0), estado(M, NC, 1), 'Un canibal vuelve') :-
    C < 3,
    NC is C + 1,
    es_valido(estado(M, NC, 1)).

cruzar(estado(M, C, 0), estado(M, NC, 1), 'Dos canibales vuelven') :-
    C < 2,
    NC is C + 2,
    es_valido(estado(M, NC, 1)).

cruzar(estado(M, C, 0), estado(NM, NC, 1), 'Un misionero y un canibal vuelven') :- 
    M < 3, 
    C < 3, 
    NM is M + 1, 
    NC is C + 1, 
    es_valido(estado(NM, NC, 1)).

% Validacion para cada cruze
es_valido(estado(M, C, _)) :- 
    M >= 0, M =< 3,
    C >= 0, C =< 3,
    MD is 3 - M, CD is 3 - C,
    (M == 0; M >= C),
    (MD == 0; MD >= CD). 

% Busqueda DFS
resolver(Solucion) :-
    estado_inicial(Inicio),
    dfs(Inicio, [Inicio], CaminoReverso),
    reverse(CaminoReverso, Solucion).

dfs(Estado, Camino, Camino) :-
    estado_meta(Estado).

dfs(Estado, Visitados, CaminoFinal) :-
    cruzar(Estado, NuevoEstado, _),
    \+ member(NuevoEstado, Visitados),
    dfs(NuevoEstado, [NuevoEstado|Visitados], CaminoFinal).

% Usar ?- resolver(Solucion). para ver los estados resolucion.