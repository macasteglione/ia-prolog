interseccion([], L, []).

interseccion([H|T], L, [H|R]) :- 
    member(H, L), 
    interseccion(T, L, R).
    
interseccion([H|T], L, R) :- interseccion(T, L, R).