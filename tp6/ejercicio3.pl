oracion --> sujeto(Num, Gen), verbo(Num), complemento.
sujeto(Num, Gen) --> articulo(Num, Gen), sustantivo(Num, Gen).
complemento --> articulo(Num2, Gen2), sustantivo(Num2, Gen2).

articulo(singular, masculino) --> [el].
articulo(plural, masculino)   --> [los].
articulo(singular, femenino)  --> [la].
articulo(plural, femenino)    --> [las].
articulo(singular, masculino) --> [un].
articulo(singular, femenino)  --> [una].

sustantivo(singular, masculino) --> [gato].
sustantivo(plural, masculino)   --> [gatos].
sustantivo(singular, femenino)  --> [profesora].
sustantivo(plural, femenino)    --> [profesoras].
sustantivo(singular, masculino) --> [profesor].
sustantivo(plural, masculino)   --> [profesores].
sustantivo(singular, femenino)  --> [niña].
sustantivo(singular, masculino) --> [perro].
sustantivo(singular, femenino)  --> [pelota].
sustantivo(singular, masculino) --> [libro].
sustantivo(singular, masculino) --> [pescado].

verbo(singular) --> [come].
verbo(plural)   --> [comen].
verbo(singular) --> [lee].
verbo(plural)   --> [leen].
verbo(singular) --> [muerde].
