%ficha 5 
%a) 
double(X,Y) :- Y is X*2. 
map(P, [L1], [L2]) :- G =.. [P,L1,L2], G.  % se as listas só tiverem 1 elemento, aplica o predicado a cada elemento
map(P, [L1 | T], [L2 | L]) :- G =.. [P,L1,L2], G, map(P,T,L).  % se tiverem mais elementos (tails), aplica predicado aos heads (l1 e l2), e depois aos tails.

%b
