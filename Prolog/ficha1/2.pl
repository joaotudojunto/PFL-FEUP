
leciona(adalberto, algoritmos).
leciona(bernardete, bases_de_dados ).
leciona(capitolino, compiladores).
leciona(diogenes, estatistica).
leciona(ermelinda, redes).


frequenta(alberto, algoritmos).
frequenta(bruna, algoritmos).
frequenta(cristina, algoritmos).
frequenta(diogo, algoritmos).
frequenta(eduarda, algoritmos).

frequenta(antonio, bases_de_dados).
frequenta(bruno, bases_de_dados).
frequenta(cristina,bases_de_dados).
frequenta(duarte,bases_de_dados).
frequenta(eduardo, bases_de_dados).

frequenta(alberto, compiladores).
frequenta(bernardo,compiladores).
frequenta(clara, compiladores).
frequenta(diana, compiladores).
frequenta(eurico, compiladores).

frequenta(antonio, estatistica).
frequenta(bruna,estatistica).
frequenta(claudio, estatistica).
frequenta(duarte, estatistica).
frequenta(eva, estatistica).

frequenta(alvaro, redes).
frequenta(beatriz,redes).
frequenta(claudio, redes).
frequenta(diana,redes).
frequenta(eduardo,redes).

% b)


/*
1) leciona(diogenes, X). 
2) leciona(felismina,  X).
3) frequenta(claudio, X). 
4) frequenta(dalmino, X).
5) frequenta(eduarda, X), leciona(bernardete, X).
6) frequenta(alberto, X), frequenta(alvaro, X). 

*/ 

%c) 
professor(Y, X) :- leciona(Y, Z), frequenta(X, Z). % X é aluno do professor Y? 
alunos(Y, X) :- frequenta(Y, Z), leciona(X, Z). % Quem sao os alunos do professor X?
aluno(X, Y) :- leciona(Y, Z), frequenta(X, Z). % Quem são os professores do aluno X?
mesmotempoAluno(A, X, Y) :- alunos(A, X), alunos(A, Y). % Quem é ao mesmo tempo aluno do professor X e do professor Y?
colega(X,Y) :- alunos(X, Z), alunos(Y, Z). % Quem é colega de quem? dois alunos sao colegas se frequentarem pelo menos uma UC em comum dois docentes sao colegas
frequentaMaisde1UC(A) :- frequenta(A,X), frequenta(A,Y), X @< Y.





