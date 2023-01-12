% ex 3 

piloto('Lamb').
piloto('Besenyei').
piloto('Chambliss').
piloto('MacLean').
piloto('Mangold').
piloto('Jones').
piloto('Bonhomme').

equipa('Lamb', 'Breitling').
equipa('Besenyei', 'Red Bull').
equipa('Chambliss', 'Red Bull').
equipa('MacLean', 'Mediterranean Racing Team').
equipa('Mangold', 'Cobra').
equipa('Jones', 'Matador').
equipa('Bonhomme', 'Matador').

aviao('Lamb', 'MX2').
aviao('Besenyei', 'Edge540').
aviao('Chambliss', 'Edge540').
aviao('MacLean', 'Edge540').
aviao('Mangold', 'Edge540').
aviao('Jones', 'Edge540').
aviao('Bonhomme', 'Edge540').

circuito('Istanbul').
circuito('Budapest').
circuito('Porto').

venceu('Jones', 'Porto').
venceu('Mangold', 'Budapest').
venceu('Mangold', 'Istanbul').

gates('Istanbul', 9).
gates('Budapest', 6).
gates('Porto', 5).

% b) 
vencedor(X,'Porto') :- venceu(X, 'Porto').
equipavence(X,'Porto') :- venceu(Y, 'Porto'), equipa(Y, X).
gates8(C) :- gates(C,N), N > 8.
naopilota(X) :- piloto(X), aviao(X,Z), Z \= 'Edge540'.
venceu(V, C1), venceu(V, C2), C1 @< C2.