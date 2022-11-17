%Lascarez Valeriano Roberto Carlos 19161314
% Se proponen los hechos, lectura:
% Roberto ve peliculas de suspendo
ve_peliculas(roberto,suspenso).
ve_peliculas(jaanai,suspenso).
ve_peliculas(abimael,suspenso).
ve_peliculas(leonardo,romance).
ve_peliculas(miguel,terror).

% Se proponen los hechos, lectura:
% Abelino escucha musica reggae
escucha_musica(abelino,reggae).
escucha_musica(jose,rock).
escucha_musica(izmucaneth,reggae).
escucha_musica(rolando,rock).
escucha_musica(maldonado,regional).

% Se proponen los hechos, lectura:
% Roberto consume palomitas
consume(roberto,palomitas).
consume(jaanai,palomitas).
consume(abimael,maruchan).
consume(leonardo,maruchan).
consume(miguel,ensalada).

% Se proponen los hechos, lectura:
% Roberto si tiene netflix
tiene_netflix(roberto,si).
tiene_netflix(jaanai,si).
tiene_netflix(abimael,si).
tiene_netflix(leonardo,no).
tiene_netflix(miguel,si).

% Se proponen los hechos, lectura:
% Abelino no tiene spotify
tiene_spotify(abelino,no).
tiene_spotify(jose,si).
tiene_spotify(izmucaneth,si).
tiene_spotify(rolando,no).
tiene_spotify(maldonado,si).

% Se proponen los hechos, lectura:
% Roberto no tiene tiempo libre
tiempo_libre(roberto,no).
tiempo_libre(jaanai,no).
tiempo_libre(abimael,no).
tiempo_libre(leonardo,no).
tiempo_libre(miguel,no).

% Se proponen los hechos, lectura:
% Abelino no tiene audifonos
tiene_audifonos(abelino,no).
tiene_audifonos(jose,no).
tiene_audifonos(izmucaneth,si).
tiene_audifonos(rolando,si).
tiene_audifonos(maldonado,no).

% Se proponen los hechos, lectura:
% Roberto no usa audifonos
usa_audifonos(roberto,no).
usa_audifonos(jaanai,si).
usa_audifonos(abimael,no).
usa_audifonos(leonardo,si).
usa_audifonos(miguel,si).

% Ejercicio 3. Alguien que ve peliculas de suspenso, disfruta verlas con palomitras, tiene netflix y tiempo libre, tiene una tarde perfecta.
tarde_perfecta(X) :- ve_peliculas(X,suspenso), consume(X,palomitas), tiene_netflix(X,si), tiempo_libre(X,si).

% Ejercicio 4.	Alguien que ve películas consumiendo una ensalada, tiene una vida saludable. --
vida_Saludable(X) :- ve_peliculas(X,Y), consume(X,ensalada).

% Ejercicio 5. Alguien que escuche regional, tiene audifonos y la aplicación de spotify, disfruta del camino a casa.
disfruta_Camino(X) :- escucha_musica(X,regional), tiene_audifonos(X,si), tiene_spotify(X,si).

% Ejercicio 6. Alguien es feliz si ve peliculas consumiendo maruchan, tiempo libre y netflix.
es_feliz(X) :- ve_peliculas(X,Y), consume(X,maruchan), tiempo_libre(X,si), tiene_netflix(X,si).

% Ejercicio 7. Únicamente pueden ser amigos quienes tienen los mismos gustos(películas, botana).
son_Amigos(X,Y) :-
    consume(X,ensalada), consume(Y,ensalada), ve_peliculas(X,suspenso), ve_peliculas(Y,suspenso);
    consume(X,ensalada), consume(Y,ensalada), ve_peliculas(X,romance), ve_peliculas(Y,romance);
    consume(X,ensalada), consume(Y,ensalada), ve_peliculas(X,terror), ve_peliculas(Y,terror);
    consume(X,palomitas), consume(Y,palomitas), ve_peliculas(X,terror), ve_peliculas(Y,terror);
    consume(X,palomitas), consume(Y,palomitas), ve_peliculas(X,romance), ve_peliculas(Y,romance);
    consume(X,palomitas), consume(Y,palomitas), ve_peliculas(X,suspenso), ve_peliculas(Y,suspenso);
    consume(X,maruchan), consume(Y,maruchan), ve_peliculas(X,terror), ve_peliculas(Y,terror);
    consume(X,maruchan), consume(Y,maruchan), ve_peliculas(X,romance), ve_peliculas(Y,romance).
    consume(X,maruchan), consume(Y,maruchan), ve_peliculas(X,suspenso),ve_peliculas(Y,suspenso);
    