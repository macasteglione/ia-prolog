oracion --> sujeto(Num, Gen, Suj), verbo(Num, V), complemento(Obj), {accion(Suj, V, Obj)}.
sujeto(Num, Gen, Suj) --> articulo(Num, Gen), sustantivo(Num, Gen, Suj).
complemento(Obj) --> articulo(Num2, Gen2), sustantivo(Num2, Gen2, Obj).

articulo(singular, masculino) --> [el].
articulo(plural, masculino) --> [los].
articulo(singular, femenino) --> [la].
articulo(plural, femenino) --> [las].
articulo(singular, masculino) --> [un].
articulo(singular, femenino) --> [una].

sustantivo(singular, masculino, gato) --> [gato].
sustantivo(plural, masculino, gatos) --> [gatos].
sustantivo(singular, femenino, profesora) --> [profesora].
sustantivo(plural, femenino, profesoras) --> [profesoras].
sustantivo(singular, masculino, profesor) --> [profesor].
sustantivo(plural, masculino, profesores) --> [profesores].
sustantivo(singular, femenino, niña) --> [niña].
sustantivo(plural, femenino, niñas) --> [niñas].
sustantivo(singular, masculino, niño) --> [niño].
sustantivo(plural, masculino, niños) --> [niños].
sustantivo(singular, masculino, perro) --> [perro].
sustantivo(plural, masculino, perros) --> [perros].
sustantivo(singular, femenino, pelota) --> [pelota].
sustantivo(singular, masculino, libro) --> [libro].
sustantivo(plural, masculino, libros) --> [libros].
sustantivo(singular, masculino, pescado) --> [pescado].
sustantivo(plural, masculino, pescados) --> [pescados].

verbo(singular, come) --> [come].
verbo(plural, comen) --> [comen].
verbo(singular, lee) --> [lee].
verbo(plural, leen) --> [leen].
verbo(singular, muerde) --> [muerde].

% Verbos que pueden hacer ciertos sujetos con ciertos objetos
accion(gato, come, pescado).
accion(gato, come, libro).
accion(niña, lee, libro).
accion(perro, muerde, pelota).
accion(profesora, lee, libro).
accion(profesor, lee, libro).
accion(profesores, leen, libros).
