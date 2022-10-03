
    -- Ficha 2  

-- 2.1 
myand :: [Bool] -> Bool
myand [] = True
myand (x:xs) = x && myand xs

myor :: [Bool] -> Bool
myor [] = True
myor (x:xs) = x && myor xs    

myconcat :: [[a]] -> [a]
myconcat [] = []
myconcat (x:xs) = x ++ myconcat xs -- ++ é usado em listas 

myreplicate :: Int -> a -> [a] 
myreplicate 0 _ = [] 
myreplicate x y = y :  myreplicate (x-1) y

(!!) :: [a] -> Int -> a 
(x:_) !! 0 = x
(_:xs) !! n = xs Main.!! (n-1)  

myelem :: Eq a => a -> [a] -> Bool
myelem _ [] = False
myelem x (y:ys) = x == y || myelem x ys

-- 2.2 

intersperse :: a -> [a] -> [a]
intersperse _ [] = []
intersperse symbol [x] = [x] 
intersperse symbol (x:xs) = x : symbol : intersperse symbol (xs)

-- 2.3

mdc :: Integer -> Integer -> Integer 
mdc x y
        | y == 0    = x 
        | otherwise = mdc y( mod x y)

-- 2.4

insert :: Ord a => a -> [a] -> [a]
insert x [] = [x]
insert x (y:ys) | x <= y = x : y : ys 
                | otherwise = y : insert x ys


isort :: Ord a => [a] -> [a]
isort [] = []
isort (x:xs) = insert x (isort xs)

-- 2.5

minimum :: Ord a => [a] -> a 
minimum [] = error "Lista vazia"
minimum [x] = x
minimum (x:y:xs) 
        | x <= y = Main.minimum (x:xs)
        | otherwise = Main.minimum (y:xs)

delete :: Eq a => a -> [a] -> [a] 
delete n [] = error "lista vazia"
delete n (x:xs) 
            | n == x = xs 
            | otherwise = x : delete n xs 

ssort :: Ord a => [a] -> [a]
ssort [] = []
ssort [x] = [x]
ssort (x:xs) = Main.minimum (x:xs) : ssort ( Main.delete (Main.minimum (x:xs)) (x:xs)) 


-- 2.6 

calculo = sum [x^2 | x <- [1..100]] 

-- 2.9  

divprop :: Integer -> [Integer]
divprop n = [x | x <- [1..n], n `mod` x == 0 && x /= n]

-- 2.10 

perfeitos :: Integer -> [Integer]
perfeitos n = [x | x <- [1..n], sum (divprop x) == x] -- a soma dos vários X é igual ao X ( que tem o mesmo valor de N)

-- 2.11


pitagoricos :: Integer -> [(Integer, Integer, Integer)]
pitagoricos n = [(x,y,z) | x <-[1..n], y <-[1..n], z <-[1..n], x^2 + y^2 == z^2] 

-- 2.12

primo :: Integer -> Bool 
--primo n = [x | x <- [1..n], (divprop n) == [1,n]] 
primo n = divprop n == [1]        


