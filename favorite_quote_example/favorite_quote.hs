main = do
    putStrLn "What is your favorite quote?"
    quote <- getLine
    putStrLn ("your favorite quote is: " ++ quote)