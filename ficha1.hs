
-- ex 1.1

testatriangulo :: Float -> Float -> Float -> Bool  
testatriangulo a b c = (a + b <= c) && (a + c <= b) && (b + c <= a) 


-- ex 1.2 

areatriangulo :: Float -> Float -> Float -> Float 
areatriangulo a b c = sqrt(s*(s-a)*(s-b)*(s-c))
                    where s = ((a+b+c)/2)


-- ex 1.3

metades :: [a] -> ([a], [a])
metades lista = (take x lista, drop x lista)
            where x = div ( length lista) 2

-- ex 1.4 

last1 :: [a] -> a
last1 lista1 = head (reverse lista1)

last2 :: [a] -> [a] 
last2 lista2 = take 1 (reverse lista2)

init1 :: [a] -> [a] 
init1 lista1 = (reverse (drop 1 (reverse lista1) ) )  

init2 :: [a] -> [a] 
init2 lista2 = reverse ( tail ( reverse lista2 ) )

-- ex 1.5 


binom :: Integer -> Integer -> Integer 
binom n k = div (fact n) (fact k * fact (n - k))
            where fact n = product [1..n]

-- ex 1.6

  
raizes :: Float -> Float -> Float -> (Float, Float)
raizes a b c 
     | delta < 0 = error "raizes negativas"
     | otherwise = (x1, x2)             
     where
        x1 = (-b - sqrt delta) / (2*a)
        x2 = (-b + sqrt delta) / (2*a)
        delta = b**2 - 4*a*c 

-- ex 1.7 

{- 
(a) = ['a', 'b', 'c'] = [Char] --> Lista
(b) = ('a','b','c') = (Char, Char, Char) --> Tuplo 
(c) = [(False, '0'), (True,'1')] = [(Bool,Char)] 
(d) = ( [ False, True] , ['0', '1' ] ) = ([Bool], [Char]) 
(e) = [tail, init, reverse] = [[a] -> [a]]
(f) = [id, not] = [Bool -> Bool]
   -}   

-- ex 1.8 







-- ex 1.9 


classifica :: Int -> String 
classifica n  
        | n <= 9             = "Reprovado"
        | n >= 10 && n <=12  = "Suficiente"
        | n >= 13 && n <=15  = "Bom"
        | n >= 16 && n <=18  = "muito bom"
        | n >= 19 && n <= 20 = "muito bom com distincao"

-- ex 1.10

classificaimc :: Float -> Float -> String
classificaimc peso altura  
                | imc < 18.5                     = "baixo peso"
                | imc >= 18.5 && imc < 25        = "peso normal"
                | imc >= 25 && imc < 30          = "excesso de peso"
                | imc >= 30                      = "obesidade"
                where imc = (peso/altura^2)


-- ex 1.11 

max, min :: Ord a => a -> a -> a
max x y = if x>=y then x else y
min x y = if x<=y then x else y

max3 :: Integer -> Integer -> Integer -> Integer 
max3 x y z 
        | x >= y && x >= z =  x 
        | y >= x && y >= z = y 
        | otherwise = z 

min3 :: Integer -> Integer -> Integer -> Integer 
min3 x y z 
        | x <= y && x <= z =  x 
        | y <= x && y <= z = y 
        | otherwise = z 



-- ex 1.12

xor :: Bool -> Bool -> Bool 
xor x y 
        | x == y = False 
        | otherwise = True

-- ex 1.13

safetail :: [a] -> [a]
safetail [] = [] 
safetail (x:xs) = xs 

safetail1 :: [a] -> [a]
safetail1 list
        | length list == 0 = [] 
        | otherwise        = tail list


safetail2 :: [a] -> [a]
safetail2 list =  if length list == 0 then [] 
                        else tail list

-- ex 1.14

curta :: [a] -> Bool 
curta lista 
        | length lista <= 2     = True 
        | otherwise             = False

-- ex 1.15 

