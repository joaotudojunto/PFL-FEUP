% Aula pratica 2 - Recursividade e listas 

fatorial(0,1).
fatorial(N,F) :- N > 0,
                 N1 is N -1, 
                 fatorial(N1, F1),
                 F is F1 * N. 

somaRec(0, 0).
somaRec(N, Sum) :- N > 0, 
                   N1 is N-1,  % N tem de decrescer 
                   sumN(N1, Sum1), 
                   Sum is Sum1 + N. 


fibonacci(N, F) :-  N = 0, F = 0;
                    N = 1, F = 1;
                    N > 1, N1 is N-1, N2 is N-2, 
                    fibonacci(N1, F1), 
                    fibonacci(N2, F2), 
                    F is F1 + F2.

isPrime(2). 
isPrime(X) :- X > 2, X mod 2 =\= 0, \+ hasFactor(X,3).


% exercicio 2 

ancestor(X, Y) :- ancestor(X, Z), ancestor (Z, Y). 
descendent(X, Y) :- ancestor(Y, X).

% exercicio 3

superior(X, Y) :- chefiado_por(Y, X).

% exercicio 4

% a) yes 
% b) error 
% c) error 
% d) H = pfl  e T = restantes 
% e) H = lbaw, e T = ltw 
% f) H = leic e T = [] 
% g) no 
% h) h = leic, e tail o resto 
% i) h = leic, e tail [two] 
% j) Inst = gram, e LEIC = feup 
% k) One = 1, Two = 2 e tail = 3,4
% l) one = leic, Rest = [two, tail]

% exercicio 5

