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

ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).
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

list_size([], 0).
list_size([_ | Tail], N) :- list_size(Tail, N1), N is N1 + 1.

list_sum([], 0).
list_sum([Head | Tail], Sum) :- list_sum(Tail, Sum1), Sum is Sum1 + Head.

list_prod([], 1).
list_prod([Head | Tail], Mult) :- list_prod(Tail, Mult1), Mult is Mult1 * Head.

inner_product([], [], 0).
inner_product([Head1 | Tail1], [Head2 | Tail2], Sum) :- inner_product(Tail1, Tail2, Sum1), Sum is Sum1 + Head1 * Head2.

% count (X, [], 0).
% count(X, [Head | Tail], N) :- X = Head, count(X, Tail, N1), N is N1 + 1.


% Exercicio 6 

invert(L1, L2) :- reverse(L1, [], L2). 
reverse([], L, L).
reverse([Head | Tail], Acc, L) :- reverse(Tail, [Head | Acc], L).

del_one(X, [X], []). 
del_one(X, [ X | Tail], Tail).
del_one(X, [Head | Tail], [Head | Tail1]) :- del_one(X, Tail, Tail1). % del_one(1, [1,2,3], Newlist).

replicate(0, _, []).
replicate(Amount, X, [X | Tail]) :- Amount > 0, Amount1 is Amount - 1, replicate(Amount1, X, Tail).

intersperse(_, [], []).
intersperse(X, [Head | Tail], [Head, X | Tail1]) :- intersperse(X, Tail, Tail1).

list_append([], L, L).
list_append([Head | Tail], L, [Head | Tail1]) :- list_append(Tail, L, Tail1).