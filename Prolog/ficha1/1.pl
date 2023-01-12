% Aula PL 1  Ex 1 

% 1.1

%facts 

%gender 

male(frank).
male(phil).
male(jay).
male(javier).
male(merle).
male(mitchell).
male(joe).
male(manny).
male(cameron).
male(bo).
male(dylan).
male(luke).
male(george).
male(calhoun).
male(rexford).

female(grace).
female(dede).
female(gloria).
female(barb).
female(claire).
female(pameron).
female(haley).
female(alex).
female(lily).
female(poppy).

%pais 

parent(grace, phil).
parent(frank, phil).

parent(dede, claire).
parent(dede, mitchell).

parent(jay, claire).
parent(jay, mitchell).

parent(jay, joe).
parent(gloria, joe).

parent(gloria, manny).
parent(javier, manny).

parent(barb, cameron).
parent(barb, pameron).

parent(merle, cameron).
parent(merle, pameron).

parent(phil, haley).
parent(phil, luke).
parent(phil, alex).

parent(claire, haley).
parent(claire, luke).
parent(claire, alex).

parent(mitchell, lily).
parent(mitchell, rexford).

parent(cameron, lily).
parent(cameron, rexford).

parent(pameron, calhoun).
parent(bo, calhoun).

parent(dylan, george).
parent(dylan, poppy).

parent(haley, george).
parent(haley, poppy).


/*
b) 

A Haley é do sexo feminino? - female(haley).
O Gil é do sexo masculino? - male(Gil). - no 
O Frank é progenitor do Phil? - parent(frank, phil). 
Quem são os pais da Claire? - parent(dede,claire), parent(jay,claire). ou parent(X,claire) -> n ? 
Quem são os filhos da Gloria? - parent(gloria,manny), parent(gloria,joe).  ou parent(gloria, X) -> n? 
Quem são os netos do Jay? - grandfather (jay, X). n ?
Quem são os avós da Lily? - grandfather(X, lily).
A Alex tem filhos? - parent(alex, X). 
Quem é filho do Jay, mas não da Gloria? - parent(jay, X), \+ parent(gloria, X).

*/


%c) regras

grandparent(X,Y) :- parent(X,Z), parent(Z,Y).
grandmother(X,Y) :- grandparent(X,Y), female(X).
father(X,Y) :- parent(X,Y), male(X).
mother(X,Y) :- parent(X,Y), female(X).
sibilings(X,Y) :- parent(P1, X), parent(P1, Y), parent(P2, X), parent(P2, Y), (X \= Y), (P1 \= P2). 
cousins(X,Y) :- parent(P1, X), sibilings(P1, P2), parent(P2, Y), (X \=Y), (P1 \= P2).
uncle(X,Y) :- parent(P,Y), sibilings(X,P), male(X).


%d) 
/*
cousins(haley,lily).
father(X, luke).
uncle(X, lily). <- não tem tio, tem tia apenas
grandmother(X,Y).

*/

%e) 

married(A,B,Y) :- married(B,A,Y). 
divorced(A,B,Y) :- divorced(B,A,Y). 

married(jay,gloria,2008).
married(jay,dede,1968).
divorced(jay,dede,2003).