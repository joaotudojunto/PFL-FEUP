-- Funcoes ordem superior 

-- 3.1

mapFilter :: (a -> b) -> [a] -> [b]
mapFilter f [] = []
mapfilter f p l = map f (filter p l)

--3.2
dec2int :: [Int] -> Int
dec2int [] = 0
dec2int (x:xs) = foldl (\x y -> x*10 + y) 0 (x:xs)

-- 3.3
zipWith1 :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith10 _ [] _ = []
zipWith10 _ _ [] = []
zipWith1 f (x:xs) (y:ys) = f x y : zipWith1 f xs ys

-- 3.4
isort :: Ord a => [a] -> [a]
isort xs = foldr insert [] xs

-- 3.5
myMaximum :: Ord a => [a] -> a
myMaximum xs = foldl1 (max) xs

myMinimum :: Ord a => [a] -> a
myMinimum xs = foldr1 (min) xs

-- 3.6 


-- 3.7 
(+++):: [a] -> [a] -> [a]
(+++) xs ys = foldr (:) ys xs

-- (b)
myconcat :: [[a]] -> [a]
myconcat xss = foldr (++) [] xss

-- (c)
myreverse :: [a] -> [a]
myreverse xs = foldr (\a b -> b ++ [a]) [] xs

-- (d)
myreverse2 :: [a] -> [a]
myreverse2 xs = foldl(\a b -> [b] ++ a) [] xs

-- (e)
myelem :: Eq a => a -> [a] -> Bool
myelem a xs = any (\b -> b == a) xs