%ficha 4 

:-dynamic parent/2, male/1, female/1.

%a 
add_person :- write('Insert (M or F)-Name to add'),nl,
              read(Sex-Name),
              add_person(Sex-N).

add_person('M'-Name) :- assert(male(Name)).
add_person('F'-Name) :- assert(female(Name)).

%b
add_parents(Child) :- write('Insert Parent-Parent to add'),nl,
                      read(P1-P2),
                      assert(parent(P1, Child)),
                      assert(parent(P2, Child)).

%c 
remove_person :- write('Which person you want to remove?'), nl, 
                read(Person),
                retractall(female(Person)),
                retractall(male(Person)), 
                retractall(parent(Person, _)),
                retractall(parent(_, Person)).


% ex 2 

%flight(origin, destination, company, code, hour, duration)

flight(porto, lisbon, tap, tp1949, 1615, 60).
flight(lisbon, madrid, tap, tp1018, 1805, 75).
flight(lisbon, paris, tap, tp440, 1810, 150).
flight(lisbon, london, tap, tp1366, 1955, 165).
flight(london, lisbon, tap, tp1361, 1630, 160).
flight(porto, madrid, iberia, ib3095, 1640, 80).
flight(madrid, porto, iberia, ib3094, 1545, 80).
flight(madrid, lisbon, iberia, ib3106, 1945, 80).
flight(madrid, paris, iberia, ib3444, 1640, 125).
flight(madrid, london, iberia, ib3166, 1550, 145).
flight(london, madrid, iberia, ib3163, 1030, 140).
flight(porto, frankfurt, lufthansa, lh1177, 1230, 165).


%a 
get_all_nodes(ListOfAirports) :- setof(AeroportFrom, (A, B, C, D, AeroportTo)^(flight(AeroportFrom, AeroportTo, A, B, C, D)), ListOfAirports).

%b 
most_diversified(Company) :- setof(Companhia, (flight(A,B,Companhia,C,D,E)), Company);

