arco(a, b).
arco(a, c).
arco(c, i).
arco(i, salida).
arco(b, d).
arco(b, e).
arco(e, f).
arco(e, g).
arco(g, salida).

buscar(Inicio, Meta, Camino) :- buscar_aux([[Inicio]], Meta, Camino).

buscar_aux([[Meta|Resto]|_], Meta, Camino) :- reverse([Meta|Resto], Camino).

buscar_aux([[NodoActual|RestoCamino]|OtrosCaminos], Meta, Camino) :-
    findall(
        [NuevoNodo, NodoActual|RestoCamino],
        (arco(NodoActual, NuevoNodo), \+ member(NuevoNodo, [NodoActual|RestoCamino])),
        NuevosCaminos
    ), 
    append(OtrosCaminos, NuevosCaminos, NuevaCola), buscar_aux(NuevaCola, Meta, Camino).