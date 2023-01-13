s(1). 
s(2) :- !. 
s(3).

% Ex 1 
% a) X = 1, no, X =2, no -> no, não avalia o S(3)
% b) X = 1, Y = 1?  X=2, Y=1? X=1, Y = 2? X=2, Y=2? no. 
% c) X = 1 e Y=1? no X=1 e Y=2? no

% ex 2 

data(one).
data(two).
data(three).
cut_test_a(X):- data(X).
cut_test_a('five').
cut_test_b(X):- data(X), !.
cut_test_b('five').
cut_test_c(X, Y):- data(X), !, data(Y).
cut_test_c('five', 'five').

/*
a) | ?- cut_test_a(X), write(X), nl, fail.  -> one, two, three, five, no
b) | ?- cut_test_b(X), write(X), nl, fail. -> one, no
c) | ?- cut_test_c(X, Y), write(X-Y), nl, fail. -> one-one, one-two, one-three
*/

% ex 3
% todos red? influenciam resultado..  

% ex 4 
% a
print_n(_, 0). 
print_n(S, N) :- N > 0, write(S), N1 is N-1, print_n(S, N1).

% b 
print_string(""). 
print_string([Code | String]) :- char_code(Char, Code), write(Char), print_string(String).

print_text(T, S, P) :-  write(S), print_n(' ', P), print_string(T), print_n(' ', P), write(S).

%c
print_banner_edge(T, S, P) :-  length(T, Len), Width is Len + P*2 + 2, print_n(S, Width).   % espaco entre a letra e a margem lateral *     Ola
print_blank_spaces(T, S, P) :- length(T, Len), Nspaces is Len + P*2, write(S), print_n(' ', Nspaces), write(S).   
print_banner(T,S,P) :- P >=0, 
                        print_banner_edge(T, S, P), nl, 
                        print_blank_spaces(T,S,P), nl, 
                        print_text(T,S,P), nl, 
                        print_blank_spaces(T,S,P), nl, 
                        print_banner_edge(T, S, P), nl. 

%f 
read_string("") :- peek_code(10), !, get_code(_).
read_string([Char | T]) :- get_code(Char),
                           read_string(T).

%g 
banner :- print_string("Text = "), 
          read_string(T), nl, 
          print_string("Symbol = "), 
          get_char(S), get_char(_), nl, 
          print_string("Padding = "),
          read_number(P), nl,                   % missing read number function 
          print_string("Here comes your banner!"), nl, nl,
          print_banner(T, S, P).


%------------  ex 5 

% a) 

children(Person, Children) :- findall(Child, parent(Person, Child), Children). 

%c) 
connected(P1, P2) :- parent(P1, P2); parent(P2, P1).
family(F) :- setof(Person, Relative^connected(Person, Relative), F).

%d) 
couple(P1-P2) :- parent(P1, Child), parent(P2, Child), P1 \= P2. 

%e) 
couples(Couples) :- setof(Couple, couple(Couple), Couples). 

%f) 
spouse_children(Person, Spouse/Children) :- couple(Person-Spouse), children(Person, Children). 

%g) 
immediate_family(Person, Parents-SC) :- findall(Parent, parent(Parent, Person), Parents), spouse_children(Person, SC).