-- Folha 2 rever 

-- 2.1 

myand :: [Bool] -> Bool 
myand [] = True 
myand (x:xs) = x && myand xs  

myor :: [Bool] -> Bool 
myor [] = True 
myor (x:xs) = x || myor xs  

myconcat :: [[a]] -> [a]
myconcat [] = [] 
myconcat (x:xs) = x ++ myconcat xs

myreplicate :: Int -> a -> [a] 
myreplicate 0 _ = []
myreplicate x y = y : myreplicate (x-1) y 

(!!) :: [a] -> Int -> a 
(x:_) !! 0 = x
(_:xs) !! n = xs Main.!! (n-1)  

myelem :: Eq a => a -> [a] -> Bool
myelem _ [] = False
myelem x (y:ys) 
        | x == y = True 
        | otherwise = myelem x ys

-- 2.2

intersperse1 :: a -> [a] -> [a]
intersperse1 n [] = []
intersperse1 n [x] = [x] 
intersperse1 n (x:xs) = x : n : intersperse1 n xs -- exemplo: '-' "banana"

-- 2.3 

mdc1 :: Integer -> Integer -> Integer
mdc1 a b 
        | b == 0 = a 
        | otherwise = mdc1 b (mod a b)

-- 2.4 
insert1 :: Ord a => a -> [a] -> [a] 
insert1 n [] = [n]
insert1 n (x:xs) 
        | n < x =  n :  x : xs 
        | otherwise = x : insert1 n xs  

isort :: Ord a => [a] -> [a] 
isort [] = [] 
isort (x:xs) = insert1 x (isort xs)

-- 2.5 
minimum1 :: Ord a => [a] -> [a] 
minimum [] = error "Lista vazia"
minimum1 [x] = [x]
minimum1 (x:y:xs) 
            | x <= y    = minimum1 (x:xs) 
            | otherwise = minimum1 (y:xs)  

delete1 :: Eq a => a -> [a] -> [a] 
delete1 n [] = error "lista vazia"
delete1 n (x:xs) 
            | n == x = xs 
            | otherwise = x : delete1 n xs

--ssort1 :: Ord a => [a] -> [a]
--ssort1 [] = []
--ssort1 [x] = [x] 
--ssort1 (x:xs) = minimum1 (x:xs) : ssort1 (delete1 (minimum1 (x:xs)) (x:xs))

-- 2.6 
var = sum [x^2 | x <- [1..100]]


-- 2.8
dotprod :: [Float] -> [Float] -> Float
dotprod (x:xs) (y:ys) = x*y + dotprod xs ys

-- 2.9
divprop :: Integer -> [Integer]
divprop n = [ x | x <- [1..n-1], n `mod` x == 0]

-- 2.10
perfeitos :: Integer -> [Integer] 
perfeitos n = [ x | x <- [1..n], sum (divprop x) == x]

-- 2.11
pitagoricos :: Integer -> [(Integer,Integer,Integer)]
pitagoricos n = [ (x,y,z) | x <- [1..n], y <- [1..n], z <- [1..n], x^2 + y^2 == z^2]

-- 2.12
primo :: Integer -> Bool
primo n = divprop n == [1] 

-- 2.16 
concat2 = [ x | x <- [1..5], y <- [1..5], x /= y]
replicate2 = [ (x,y) | x <- [1..5], y <- [1..5], x == y]

-- 2.17
--forte :: String -> Bool
--forte s = length s >= 8 && any isUpper s && any isLower s && any isDigit s

-- 2.19 
nub :: Eq a => [a] -> [a]
nub [] = []
nub (x:xs) = x : nub (filter (/= x) xs)
--nub (x:y:xs) 
   -- | x == y = x : nub xs
   -- | otherwise = x : nub (y:xs)

-- 2.20

transpose :: [[a]] -> [[a]]
transpose  [] = []
transpose ([]:_) = []
transpose x = (map head x) : transpose (map tail x)

-- 2.24 

merge :: Ord a => [a] -> [a] -> [a]
merge [] [] = [] 
merge [x] [] = [x]
merge [] [x] = [x]
merge (x:xs)(y:ys) 
        | x < y = x : merge xs (y:ys)
        | otherwise = y : merge ys (x:xs) 

msort :: Ord a => [a] -> [a]
msort [] = [] 
msort [x] = [] 
msort x = merge (msort metades1) (msort metades2)
        where (metades1, metades2) = splitAt (length x `div` 2) x

