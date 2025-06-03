oracion --> sujeto(Numero, Gen), verbo(Numero), complemento.
sujeto(Numero, Gen) --> articulo(Numero, Gen), sustantivo(Numero, Gen).
complemento --> articulo(Numero, Gen), sustantivo(Numero, Gen).

articulo(singular, masculino) --> [el].
articulo(plural, masculino) --> [los].
articulo(singular, femenino) --> [la].
articulo(plural, femenino) --> [las].
articulo(singular, masculino) --> [un].
articulo(singular, femenino) --> [una].

sustantivo(singular, masculino) --> [profesor].
sustantivo(plural, masculino) --> [profesores].
sustantivo(singular, femenino) --> [profesora].
sustantivo(plural, femenino) --> [profesoras].
sustantivo(singular, masculino) --> [perro].
sustantivo(singular, femenino) --> [pelota].
sustantivo(singular, masculino) --> [libro].

verbo(singular) --> [lee].
verbo(plural) --> [leen].
verbo(singular) --> [muerde].