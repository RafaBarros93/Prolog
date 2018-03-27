progenitor(jose,joao).
progenitor(maria,joao).
progenitor(jose,ana).
progenitor(maria,ana).
progenitor(joao,mario).
progenitor(ana,helena).
progenitor(ana,joana).
progenitor(mario,carlos).
progenitor(helena,carlos).
masculino(jose).
masculino(joao).
feminino(maria).
feminino(ana).
feminino(helena).
masculino(carlos).
feminino(joana).

irmao(X,Y) :- progenitor(Z,Y), progenitor(Z,Y) , masculino(X) , X\==Y.

irma(X,Y)  :- progenitor(Z,Y),progenitor(Z,Y),feminino(X), X\==Y.


mae(X,Y) :-progenitor(X,Y),feminino(X).

pai(X,Y) :-progenitor(X,Y),masculino(X).

avo(X,Z):- pai(X,Y), pai(Y,Z).

primos(X,Y):-progenitor(Z,Y), progenitor(W,Y), progenitor(A,Z),progenitor(A, W) , X\==Y , W\==Z.

descendente(X,Y) :-  progenitor(Y,X), x\==y.

descendente(X,Y) :- progenitor(Y,Z),descendente(X,Z)..
