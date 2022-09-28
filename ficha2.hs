
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
myconcat (x:xs) = x ++ myconcat xs

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
intersperse symbol (x:y:xs) = [x] ++ [symbol] ++ intersperse symbol (y:xs)

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

