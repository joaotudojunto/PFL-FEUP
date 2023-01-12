--3.1 

mapFilter :: (a -> b) -> [a] -> [b]
mapFilter f [] = []
mapfilter f p l = map f (filter p l)

--3.2
dec2int :: [Int] -> Int
dec2int [] = 0
dec2int (x:xs) = foldl (\x y -> x*10 + y) 0 (x:xs)

-- 3.3 

zipWith10 :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith10 _ [] _ = []
zipWith10 _ _ [] = []
zipWith10 f (x:xs) (y:ys) = f x y : zipWith10 f xs ys

-- 3.4 

isort :: Ord a => [a] -> [a]
isort  

-- 3.5 

{-
foldl1 = maximum xs = foldl1 max xs 
foldr1 = maximum xs = foldr1 max xs 
foldl1 = minimum xs = foldl1 min xs 
foldr1 = minimum xs = foldr1 min xs 
-}

-- 