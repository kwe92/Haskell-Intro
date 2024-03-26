main = do
    content <- getContents
    putStrLn $ shortLines content
    where shortLines input = 
            let allLines = lines input;
                shortLines = filter (\ line -> length line <= 15) allLines
                result = unlines shortLines
                in result