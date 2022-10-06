--3.1 

mapFilter :: (a -> b) -> [a] -> [b]
mapFilter f [] = []
mapfilter f p l = map f (filter p l)

--3.2
dec2int :: [Int] -> Int
