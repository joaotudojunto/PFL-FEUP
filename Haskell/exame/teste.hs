-- teorica 
{-
1- d
2- a 
3- b
4- d
5-
6- a
7- b
8- a 
9- c
10- d
11- a
12- c
    
-}

-- prática
--1

maxpos :: [Int] -> Int 
maxpos [] = 0 
maxpos (x:xs)
        | x > next = x
        | otherwise = next 
        where next = (maxpos xs) 

-- 2 
dups :: [a] -> [a]
dups [] = []
dups (x:xs) 
    | length(x:xs) `mod` 2 /= 0     = x : x : dups xs -- queremos duplicar na posicao/index impar, nao quando os numeros sao impares, como tal usa-se length..
    | otherwise                     = x : dups xs 
  
-- 3
transforma :: String -> String 
transforma [] = []
transforma (x:xs)
        | x == 'a' || x == 'e' || x == 'i' || x == 'o' || x == 'u'  = x : 'p' : x : transforma xs 
        | otherwise                                                 = x : transforma xs

-- 4 
type Vector = [Int] 
type Matriz = [[Int]]

transposta :: Matriz -> Matriz 
transposta [] = []
transposta ([]:_) = []
transposta x = (map head x) : transposta (map tail x)


-- 5 

prodInterno :: Vector -> Vector -> Int
prodInterno x1 x2 = head x1 * head x2 + prodInterno (tail x1)(tail x2)

-- 7

data Arv a = F | N a (Arv a) (Arv a)
          deriving(Show)

alturas :: Arv a -> Arv Int 
alturas F = F 
alturas (No a esq dir ) = No (alturasAux (esq dir))(alturas esq)(alturas dir)

alturasAux :: Arv a -> Int 
alturasAux F = 0
alturasAux (No a esq dir) = 1 + max (alturasAux esq)(alturasAux dir)


-- 8 





-- 9 

f :: (a -> b -> c) -> b -> a -> c
f funcao a b  = funcao b a 

