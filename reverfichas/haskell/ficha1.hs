-- 1.1 
testaTriangulo :: Float -> Float -> Float -> Bool
testaTriangulo a b c = (a > b+c) && (b > a+c) && (c > a+b)
  
-- 1.2 

areaTriangulo :: Float -> Float -> Float -> Float
areaTriangulo a b c = sqrt (s * (s-a)*(s-b)*(s-c))
            where s = (a+b+c/2)

-- 1.3 

metades :: [a] -> ([a], [a])
metades list = (take l list, drop l list)
        where l = div (length list) 2

-- 1.4
-- a) 

myLast :: [a] -> a 
myLast n = head (reverse n)

myLast1 :: [a] -> [a]  
myLast1 n = take 1 (reverse n)

myInit :: [a] -> [a] 
myInit n =  reverse (drop 1 ( reverse n))

myInit2 :: [a] -> [a] 
myInit2 n = reverse (tail ( reverse n))


-- 1.5 

binom :: Integer -> Integer -> Integer 
binom n k = div (fact n) (fact k * fact (n - k))
            where fact n = product [1..n]

binom' :: Integer -> Integer -> Integer 
binom' n k
        | k < n - k   =  binom' n (n - k)
        | k >= n - k  =  div (fact n) (fact k * fact (n - k))
        where fact n = product [1..n]


-- 1.6

raizes :: Float -> Float -> Float -> (Float, Float)
raizes a b c 
        | aux < 0 = error "Error"
        | otherwise = (x1,x2)
        where aux = sqrt(b**2 - 4*a*c)
              x1 = (-b + aux / 2*a)
              x2 = (-b - aux / 2*a)

-- 1.7 

{- 
a) [Char]
b) (Char,Char,Char)
c) [(Bool,Char)]
d) ([Bool], [Char])
e) [[a] -> [a]]
f) [Bool -> Bool]

-- 1.8 

a)  [a] -> [a]
b) (a,b) -> (b,a)
c) a -> b -> (a,b)   
d) Num a => a -> a
e) Num a => a -> a  
f) Char -> Bool
g)  Int -> Int -> [Int]
h) [a] -> Bool
i) (a -> a) -> a -> a  
-}

-- 1.9 

classifica :: Int -> String 
classifica n 
    | n <= 9  = "Reprovado"
    | n >= 10 && n <= 12 = "Suficiente"
    | n >= 13 && n <= 15 =  "Bom"
    | n >= 16 && n <= 18 = " Muito bom"
    | n >= 19 && n <= 20 = "muito bom com distincao"
    | otherwise =  error "Valor invalido"

-- 1.10

classificaIMC :: Float -> Float -> String
classificaIMC a p 
        | imc < 18.5 = "baixo peso"
        | imc >= 18.5 && imc <= 25 = "peso normal"
        | imc >= 25 && imc <= 30 ="excesso peso"
        | imc >= 30 = "obesidade"
        | otherwise = error "valores invalidos "
        where imc = (p/a**2)

-- 1.11 

max3 :: Ord a => a -> a -> a -> a 
max3 x y z = if x>=y && x>=z then x else if y >= x && y>=z  then y else z

min3 :: Ord a => a -> a -> a -> a
min3 x y z = if x<=y && x<=z then x else if y <= x && y<=z  then y else z

max4 :: Ord a => a -> a -> a -> a 
max4 x y z = max (max x y) z

min4 :: Ord a => a -> a -> a -> a
min4 x y z =  min (min x y) z

-- 1.12
xor :: Bool -> Bool -> Bool
xor x y 
    | x == y = False 
    | otherwise = True 

-- 1.13 
safetail :: [a] -> [a]
safetail [] = [] 
safetail (x:xs) = xs 

safetail1 :: [a] -> [a]
safetail1 list    
        | length list == 0  = []
        | otherwise = list
        where list = tail list

safetail2 :: [a] -> [a]
safetail2 list = if length list == 0 then [] else tail list

-- 1.15 
mediana :: Int -> Int -> Int -> Int    
mediana x y z 
        | x > y && x > z && y < z  = z  
        | y > x && y > z && x < z  = z 
        | z > x && z > y && x < y = y 
        | otherwise = x  

mediana1 :: Int -> Int -> Int -> Int    
mediana1 x y z 
        | max3 x y z == x = max y z 
        | max3 x y z == y = max x z 
        | max3 x y z == z = max x y  

mediana2 :: Int -> Int -> Int -> Int    
mediana2 x y z = x + y + z - max3 x y z - min3 x y z
        