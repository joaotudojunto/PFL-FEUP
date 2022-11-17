% Ex 5 ficha 1 


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
chefe(X,Y).

% As pessoas X e Y sao chefiadas por pessoas do mesmo cargo?
chefe(Z,X), chefe(Z,Y) :- cargo(X, C), cargo(Y,C), cargo(Z,C).


