-- Arvores 

data Arv a = Vazia | No a (Arv a) (Arv a )

-- 4.1 
sumArv :: Num a => Arv a -> a 
sumArv Vazia =  0
sumArv (No a esq dir) = a + sumArv esq + sumArv dir

-- 4.2 
listar :: Arv a -> [a]
lista Vazia  = []
listar (No a esq dir)  =  listar dir ++ [a] ++ listar esq

-- 4.3 

nivel :: Int -> Arv a -> [a]
nivel _ Vazia = []
nivel n (No a esq dir) 
            | n == 0    = [a]  -- se só existir um nó, então é o nó raiz = nivel 0
            | otherwise = nivel (n-1) esq ++ nivel (n-1) dir

-- 4.6 a) 

mais_dir :: Arv a -> a 
mais dir (No a _ Vazia) = a 
mais_dir (No a _ dir) = mais_dir dir 
   

-- b) 

remover :: Ord a => a -> Arv a -> Arv a
remover _ Vazia = Vazia
remover x (No a esq dir)
            | x > a = No a esq (remover x dir)
            | x < a = No a (remover x esq) dir
            | otherwise = removerAux (No a esq dir)

removerAux :: Ord a => Arv a -> Arv a
removerAux (No a Vazia dir) = dir
removerAux (No a esq Vazia) = esq 
removerAux (No a esq dir) =  No n (remover n esq) dir
                            where n = mais_dir esq


-- 4.9 

elefantes :: Int -> IO ()
elefantes n = elefantesAux 2 n -- começa em 2 elefantes... até N 

elefantesAux :: Int -> Int -> IO ()
elefantesAux i n
    | (i < n) = do putStrLn $ "Se " ++ show i ++ " elefantes incomodam muita gente,"
                   putStrLn $ show (i+1) ++ " elefantes incomodam muito mais!"
                   elefantesAux (i+1) n -- i++ 
    | otherwise = return ()