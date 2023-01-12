-- Tipos e arvores 

-- exemplos
{- 
inserir :: Ord a => a -> Arv a -> Arv a
inserir x Vazia = No x Vazia Vazia 
inserir x (No a esq dir) 
            | x == a = No a esq dir 
            | x < a  = No a (inserir x esq) dir
            | x > a = No a esq (inserir x dir)

construir :: Ord a => [a] -> Tree a
construir [] = Vazia 
construir (x:xs) = insert x (construir xs)

remover :: Ord a => a -> Arv a -> Arv a
remover x Vazia = Vazia -- nada para remover 
remover x (No a Vazia dir) 
        | x == a = dir 
remover x (No a esq Vazia) 
        | x == a = esq 
remover x (No a esq dir)
        | x < a  = No a (remover x esq) dir 
        | x > a  = No a esq (remover x dir) 
        | x == a = let novo = maisEsq dir 
                in No a esq (remover novo dir)

-}

data Arv a = Vazia | No a (Arv a) (Arv a)  

-- 4.1 
sumArv :: Num a => Arv a -> a 
sumArv Vazia = 0
sumArv (No a esq dir) = a + sumArv esq + sumArv dir

-- 4.2 
listar :: Arv a -> [a]
listar Vazia = []
listar (No a esq dir) = listar dir ++ [a] ++ listar esq 

-- 4.3
nivel :: Int -> Arv a -> [a] 
nivel _ Vazia = []
nivel n (No a esq dir) 
            | n == 0    = [a] -- raiz 
            | otherwise = nivel (n-1) esq ++ nivel (n-1) dir -- nivel é sempre n-1 porque começa em 0

-- 4.5 

mapArv :: (a -> b) -> Arv a -> Arv b
mapArv _ Vazia = Vazia
mapArv f (No a esq dir) = No (f a) (mapArv f esq) (mapArv f dir)

-- 4.6 
--a
maisDir :: Arv a -> a
maisDir (No node _ Vazia) = node 
maisDir (No node esq dir) = maisDir dir

maisEsq :: Arv a -> a
maisEsq (No node Vazia _) = node
maisEsq (No node esq dir) = maisEsq esq 

--b
remover :: Ord a => a -> Arv a -> Arv a 
remover x (No a Vazia dir)
        | x == a = dir 
remover x (No a esq Vazia) 
        | x == a = esq
remover x (No a esq dir)
        | x > a = No a esq (remover x dir)
        | x < a = No a (remover x esq) dir 
        | otherwise = let z = maisDir esq 
                      in No a (remover z esq) dir 

-- 4.9

elefantes :: Int -> IO ()
elefantes n = elefantesAux 2 n -- começa em 2 elefantes... até N 

elefantesAux i n 
            | (i < n) = do putStrLn $ "Se " ++ show i ++ " elefantes incomodam muita gente,"
                           putStrLn $ show (i+1) ++ " elefantes incomodam muito mais!"
                           elefantesAux (i+1) n
            | otherwise = return ()