% ex 7)

a(a1, 1).
a(A2, 2).
a(a3, N).
b(1, b1).
b(2, B2).
b(N, b3).
c(X, Y):- a(X, Z), b(Z, Y).
d(X, Y):- a(X, Z), b(Y, Z).
d(X, Y):- a(Z, X), b(Z, Y).

/*
a)
i. a(A, 2).        
      respostas: A = a3, N = 2
ii. b(A, foobar).  
      respostas: A = 2 B2=foobar
iii. c(A, b3).     
      respostas: Y=b3, Z=1, X=a1 =A (N=1)
iv. c(A, B).      
      respostas: Z=1, X= a1, Y=b1
                 z=2, X= a1, Y=b3
                 z=N, X=a3 , Y=b3
v. d(A, B).       
      respostas: X=a1, Y=2
                 X=a3, Y=1
                 X=a3, Y=2
                 X=1, Y=b3 
                 X=2, Y=b1
                 X=2, Y=b3
*/