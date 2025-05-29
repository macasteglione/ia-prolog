pregunta(interes_matematicas, '¿Te interesa resolver problemas matemáticos y técnicos?').
pregunta(gusta_programar, '¿Te atrae la programación o el desarrollo de software?').
pregunta(preferencia_practica, '¿Preferís trabajos con aplicación práctica?').
pregunta(interes_salud, '¿Te interesa trabajar en el área de la salud?').
pregunta(habilidad_comunicacion, '¿Te considerás una persona con buenas habilidades de comunicación?').
pregunta(gusto_creatividad, '¿Te gusta crear contenido artístico o visual?').
pregunta(interes_sociedad, '¿Te interesa entender y ayudar a resolver problemas sociales o humanos?').
pregunta(preferencia_teorica, '¿Preferís el estudio teórico por sobre la práctica?').

% PREGUNTAS DINÁMICAS
preguntar(Clave, Resp) :- pregunta(Clave, Texto), writeln(Texto), read(R), downcase_atom(R, Resp).

% LIMPIAR RESPUESTAS
limpiar :- retract(respuesta(_, _)), fail.
limpiar.

% RECOMENDACION
recomendar_carrera :- 
    limpiar, 
    hacer_preguntas(Respuestas), 
    inferir_carreras(Respuestas, Principal, Otras), 
    mostrar_resultado(Principal, Otras), 
    limpiar.

% INGENIERÍA EN SISTEMAS
inferir_carreras([si, si, si, no, _, _, _, _], ingenieria_sistemas, []) :- !.
inferir_carreras([si, si, _, no, _, _, _, _], ingenieria_sistemas, []) :- !.

% CIENCIAS DE LA COMPUTACIÓN
inferir_carreras([_, si, _, no, si, _, _, _], ciencias_computacion, []) :- !.
inferir_carreras([si, si, no, no, si, _, _, _], ciencias_computacion, []) :- !.

% INGENIERÍA ELECTRÓNICA
inferir_carreras([si, _, si, no, _, _, _, _], ingenieria_electronica, []) :- !.
inferir_carreras([si, no, si, no, _, _, _, _], ingenieria_electronica, []) :- !.

% MEDICINA
inferir_carreras([si, _, si, si, _, _, _, _], medicina, []) :- !.
inferir_carreras([_, _, si, si, _, _, _, _], medicina, []) :- !.

% PSICOLOGÍA
inferir_carreras([_, _, _, si, _, _, si, si], psicologia, []) :- !.
inferir_carreras([_, _, _, si, _, si, si, _], psicologia, []) :- !.

% DERECHO
inferir_carreras([_, _, _, _, si, si, si, _], derecho, []) :- !.
inferir_carreras([_, _, no, _, si, si, si, _], derecho, []) :- !.

% DISEÑO GRÁFICO
inferir_carreras([_, _, si, _, _, _, _, si], diseno_grafico, []) :- !.
inferir_carreras([_, _, _, _, _, _, _, si], diseno_grafico, []) :- !.

% DESCONOCIDA
inferir_carreras(_, desconocida, []).
inferir_carreras([si, si, si, si, si, si, si, si], desconocida, []) :- !.

mostrar_resultado(desconocida, _) :- writeln('No se encontró una carrera que se ajuste completamente a tus respuestas.').
mostrar_resultado(Carrera, []) :- format('\nCarrera recomendada: ~w~n', [Carrera]).

hacer_preguntas([IM, GP, PP, IS, PT, ISOC, HC, GC]) :-
    preguntar(interes_matematicas, IM),
    preguntar(gusta_programar, GP),
    preguntar(preferencia_practica, PP),
    preguntar(interes_salud, IS),
    preguntar(preferencia_teorica, PT),
    preguntar(interes_sociedad, ISOC),
    preguntar(habilidad_comunicacion, HC),
    preguntar(gusto_creatividad, GC).