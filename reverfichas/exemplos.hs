-- IO 
teste = do putChar 'A'; putChar 'H';

ler = do x <- getChar
         putChar x -- indentaçao necessaria 
       
putStr1 :: String -> IO ()
putStr1 [] = return () 
putStr1 (x:xs) = do putChar x
                    putStr1 xs -- Prelude.str "ola"

                
putStrLn :: String -> IO ()
putStrLn xs = do putStr xs
                 putChar '\n'


boasVindas :: IO ()
boasVindas = do
        putStr "Como te chamas? "
        nome <- getLine
        putStr ("Bem-vindo, " ++ nome ++ "!\n")
