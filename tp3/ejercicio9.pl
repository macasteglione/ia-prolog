arco(a, d).
arco(a, b).
arco(a, c).
arco(c, g).
arco(d, g).
arco(g, i).
arco(i, k).
arco(b, f).
arco(b, e).
arco(e, h).
arco(f, e).
arco(f, h).
arco(h, j).
arco(j, k).

estadoInicial(a).
estadoMeta(k).

% dfs

buscar_dfs(Inicio, Meta, [Inicio, Meta]) :- arco(Inicio, Meta).
buscar_dfs(Inicio, Meta, [Inicio|Camino]) :- arco(Inicio, OtroCamino), buscar_dfs(OtroCamino, Meta, Camino).

% bfs

buscar_bfs(Inicio, Meta, Camino) :- bfs_aux([[Inicio]], Meta, Camino).

bfs_aux([[Meta|Resto]|_], Meta, Camino) :- reverse([Meta|Resto], Camino).

bfs_aux([[NodoActual|RestoCamino]|OtrosCaminos], Meta, Camino) :-
    findall(
        [NuevoNodo, NodoActual|RestoCamino],
        (arco(NodoActual, NuevoNodo), \+ member(NuevoNodo, [NodoActual|RestoCamino])),
        NuevosCaminos
    ),
    append(OtrosCaminos, NuevosCaminos, NuevaCola), bfs_aux(NuevaCola, Meta, Camino).