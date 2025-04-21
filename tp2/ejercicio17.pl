llamar_bomberos :- fuego.

fuego :- humo.
fuego :- alarma_incendio_activada.
fuego :- calor_intenso, noche.

llamar_policia :- llamar_bomberos.
llamar_policia :- ladrones.
llamar_policia :- cerrado, ventana_abierta.

ladrones :- movimiento, cerrado.

publico :- salon4.
publico :- salon5.

movimiento :- sensor_mov_salon1_s1, sensor_mov_salon1_s2.
movimiento :- sensor_mov_salon2_s1, sensor_mov_salon2_s2.
movimiento :- sensor_mov_salon3_s1, sensor_mov_salon3_s2.
movimiento :- sensor_mov_salon4.
movimiento :- sensor_mov_salon5.

cerrado:- domingo.

activar_grupo_electrogeno :- corte_de_luz.