%LASCAREZ VALERIANO ROBERTO CARLOS 19161314
%1.Pertenece.
%Verificar si un elemento pertenece a una lista dada.
%Se compara si el numero buscado es igual al head de la lista.
pertenece(X,[M]):-X =:= M.
pertenece(X,[M|TAIL]):-X =:= M.
pertenece(X,[M|TAIL]):-pertenece(X,TAIL).

%2.size.
%Obtener la longitud de una lista.
%Se aumenta el contador del tamaño de la lista
size([],0).
size([X|TAIL],R):-size(TAIL,M),R is M+1.

%3.Concatenación
%Obtener la concatenación de 2 listas dadas.
%Se concatenas las listas con su head.
concatenar([],R,R).
concatenar([X|R1],R2,[X|R3]):- concatenar(R1,R2,R3).

%4.Eliminar.
%Eliminar un elemento de una lista
%Si el head de la lista es diferente al elemento que 
%quiere borrar entonces no se agrega a la lista.
eliminar(X,[],[]).
eliminar(X,[X|TAIL],L):- eliminar(X,TAIL,L).
eliminar(X,[R|TAIL],[R|L]):-X\=R,eliminar(X,TAIL,L).

%5.Agregar un elemento a una lista.
% A la lista nueva se le agrega el elemento.
agregar(X,[],[X]).
agregar(X,L,[X|L]).

%6.Par e impares.
%Separar una lista en 2 listas (pares e impares).  
%Dependiendo si el residuo entre 2 es igual o mayor a 0 se clasifican en las listas debidas.
separar([],[],[]).
separar([L|R],R1,[L|R2]):-Par is L mod 2,Par>0,separar(R,R1,R2).
separar([L|R],[L|R1],R2):-Impar is L mod 2,Impar=0,separar(R,R1,R2).

%7.ascendente
%Verifica si una lista se encuentra de manera ascendente.
%Hasta que el segundo numero de la lista se menor o igual nos dara false.
ascendente([X]).
ascendente([X,Y|TAIL]):-Y>X,ascendente([Y|TAIL]).

%8.Descendente.
%Verifica si una lista se encuentra de manera descendente.
%Hasta que el segundo numero de la lista se mayor o igual nos dara false.
descendente([X]).
descendente([X,Y|TAIL]):-Y<X,descendente([Y|TAIL]).

%9.Aplanar.
aplanar([],[]).
aplanar([X|R], [X|P]) :- atomic(X), aplanar(R,P).
aplanar([X|R],P) :- not(atomic(X)), aplanar(X, P_X), aplanar(R, P_R), append(P_X, P_R, P).



%10.Menor que head.
%Obtener una lista con elementos menores que el elemento HEAD.
%Si el segundo numero de la lista actual es menor a head se agrega a lista nueva.
menorH([X],[]).
menorH([X,Y|TAIL],R):-Y>=X,menorH([X|TAIL],R).
menorH([X,Y|TAIL],[Y|R]):-Y<X,menorH([X|TAIL],R).

%11.Mayor que head.
%Obtener una lista con elementos mayores que el elemento HEAD.
%Si el segundo numero de la lista actual es mayor a head se agrega a lista nueva.
mayorH([],[]).
mayorH([X],[]).
mayorH([X,Y|TAIL],R):-Y=<X,mayorH([X|TAIL],R).
mayorH([X,Y|TAIL],[Y|R]):-Y>X,mayorH([X|TAIL],R).

%12.Invertir.
%Se van agregando los elementos de la lista con el metodo concatenar.
invertir([],[]).
invertir([X|TAIL],R):-invertir(TAIL,M),concatenar(M,[X],R).


