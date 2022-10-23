-- Semana 1
-- IN-6 
-- a) 
half :: Fractional a => a -> a
half x = x/2  
-- b) 
xor :: Bool -> Bool -> Bool 
xor x y 
    | x == y = False
    | otherwise = True 

-- c)
cbrt :: Floating a => a -> a
cbrt x = x**(1/3)

-- d) 
heron :: Floating a => a -> a -> a -> a
heron a b c = sqrt(s*(s-a)*(s-b)*(s-c))
    where s = (a+b+c)/2

-- IN-13 
f :: (Ord a, Num a, Integral b) => a -> b
f x =   if x < 0 then -1
        else if x > 0 then 1
        else 0

-- FT 3 - Fundamentals on Types

mySwap :: (b,a) -> (a,b) 
mySwap (x,y) = (y,x)

-- FT 4 

distance2 :: Floating a => (a,a) -> (a,a) -> a 
distance2 (x1,y1) (x2,y2) = sqrt((x1 - x2)^2+ ( y1 - y2)^2)

distanceInf :: (Num a, Ord a) => (a, a) -> (a, a) -> a
distanceInf (x1, y1) (x2 , y2) = max (abs (x1 - x2)) (abs (y1 - y2))

-- FT 9 - Listas 

{- 
a) reverse []                                              = [] 
b) [[1,2]]++[[]]++[[3],[4,5]]                              = [[1,2],[],[3],[4,5]]
c) [1,2]:[]:[3]:[[4,5]]                                    = [[1,2],[],[3],[4,5]]
d) ([1,2]:[]:[3]:[[4,5]])!! 3                              = [4,5]
e) length ([]:[]:[]:[])                                    = 3 
f) take 2 ([1,2]:[3,4,5]:[6,7]:[8])                        = error
g) take 2 ([1,2]:[3,4,5]:[6,7]:[])                         = [[1,2],[3,4,5]]
h) []:[]:[] ++ []:[]                                       = [[],[],[]]
i) "abc":[[]] ++ "dce":[]                                  = ["abc","","dce"]
j) tail ([1]:[]:[2]:[3]:[])                                = [[],[2],[3]]
k) [[1,2,3,4],[5,6,7,8],[9,10,11,12]] !! 2 !! 3            = 12
l) [5,6,7,8] ‘elem‘ [[1,2,3,4],[5,6,7,8],[9,10,11,12]]     = True 
    
     
-}

-- FT 10   
f' :: [a] -> (a,[a])
f' l = (l !! 2, drop 3 l)

-- FT 11 

evaluateLength :: [a] -> String 
evaluateLength n 
        | len == 0 || len == 1           = "Short"
        | len == 2 || len == 3           = "Medium-sized"
        | otherwise                      = "Long"
        where len = length n

-- FT 23 - Functional Types



