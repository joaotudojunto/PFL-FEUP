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