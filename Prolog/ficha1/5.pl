% Ex 5 ficha 1 

cargo(tecnico, eleuterio).
cargo(tecnico, juvenaldo).
cargo(analista, leonilde).
cargo(analista, marciliano).
cargo(engenheiro, osvaldo).
cargo(engenheiro, porfirio).
cargo(engenheiro, reginaldo).
cargo(supervisor, sisnando).
cargo(supervisor_chefe, gertrudes).
cargo(secretaria_exec, felismina).
cargo(diretor, asdrubal).
chefiado_por(tecnico, engenheiro).
chefiado_por(engenheiro, supervisor).
chefiado_por(analista, supervisor).
chefiado_por(supervisor, supervisor_chefe).
chefiado_por(supervisor_chefe, diretor).
chefiado_por(secretaria_exec, diretor).


/*

a) 
1- Analista  é chefiado por X (supervisor) e o cargo de X( supervisor) pertence ao sisnando
2- Tecnico é chefiado por X (supervisor) e o supervisor é chefiado por Y (supervisor_chefe)
3- Quem é chefiado por um supervisor e qual o seu cargo?
4- QUem é chefiado por um diretor, exceto a felismina?

b)
1- X= supervisor 
2- X= engenheiro e Y= supervisor 
3- J= Engenheiro/Analista e P = leonilde, marciliano, osvaldo, porfirio, reginaldo
4- P = supervisor_chefe 

*/
% c) 

% A pessoa X é chefe da pessoa Y?
chefe(X,Y) :- cargo(Cy, Y), cargo(Cx, X), chefiado_por(Cx, Cy). 

% As pessoas X e Y sao chefiadas por pessoas do mesmo cargo?
chefe(H,X,Y) :- cargo(C1,X), cargo(C2,Y), chefiado_por(C1, H), chefiado_por(C2, H).

%Quais os cargos que não são responsáveis por outros cargos?
responsavel_por(X, Y) :- chefiado_por(Y, X).

