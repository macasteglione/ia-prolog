arco(a, b).
arco(a, c).
arco(c, i).
arco(i, salida).
arco(b, d).
arco(b, e).
arco(e, f).
arco(e, g).
arco(g, salida).

buscar(X, Y, [X, Y]) :- arco(X, Y).
buscar(X, Y, [X|Camino]) :- arco(X, Z), buscar(Z, Y, Camino).