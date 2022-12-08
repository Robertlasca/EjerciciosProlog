
%1.Pertenece.
pertenece(X,[M]):-X =:= M.
pertenece(X,[M|TAIL]):-X =:= M.
pertenece(X,[M|TAIL]):-pertenece(X,TAIL).

%2.size.
size([],0).
size([X|TAIL],R):-size(TAIL,M),R is M+1.

%3.Concatenación
concatenar([],R,R).
concatenar([X|R1],R2,[X|R3]):- concatenar(R1,R2,R3).

%4.Eliminar.
eliminar(X,[],[]).
eliminar(X,[X|TAIL],L):- eliminar(X,TAIL,L).
eliminar(X,[R|TAIL],[R|L]):-X\=R,eliminar(X,TAIL,L).

%5.Agregar un elemento a una lista.
agregar(X,[],[X]).
agregar(X,L,[X|L]).

%6.Par e impares.
separar([],[],[]).
separar([L|R],R1,[L|R2]):-Par is L mod 2,Par>0,separar(R,R1,R2).
separar([L|R],[L|R1],R2):-Impar is L mod 2,Impar=0,separar(R,R1,R2).

%7.ascendente
ascendente([X]).
ascendente([X,Y|TAIL]):-Y>X,ascendente([Y|TAIL]).

%8.Descendente.
descendente([X]).
descendente([X,Y|TAIL]):-Y<X,descendente([Y|TAIL]).}

%9.Aplanar.
aplanar([],[]).
aplanar([X|R], [X|P]) :- atomic(X), aplanar(R,P).
aplanar([X|R],P) :- not(atomic(X)), aplanar(X, P_X), aplanar(R, P_R), append(P_X, P_R, P).



%10.Menor que head.

menorH([X],[]).
menorH([X,Y|TAIL],R):-Y>=X,menorH([X|TAIL],R).
menorH([X,Y|TAIL],[Y|R]):-Y<X,menorH([X|TAIL],R).
%11.Mayor que head.
mayorH([],[]).
mayorH([X],[]).
mayorH([X,Y|TAIL],R):-Y=<X,mayorH([X|TAIL],R).
mayorH([X,Y|TAIL],[Y|R]):-Y>X,mayorH([X|TAIL],R).

%12.Invertir.
invertir([],[]).
invertir([X|TAIL],R):-invertir(TAIL,M),concatenar(M,[X],R).


