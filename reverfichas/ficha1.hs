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

-- 1.6
