main = do
    interact shortLines
    where shortLines input = 
            let allLines = lines input;
                shortLines = filter (\ line -> length line <= 15) allLines
                result = unlines shortLines
                in result -- returns the final expression

-- TODO: Edit Comments

-- interact function

--   - takes as an argument a uniary function of the form String -> String

--   - combines the actions of getContents / getLine, transformation of the string received with the provided unary finction
--     and printing the result to the console

--   - combines: getContents, unary function application on String and printing to the console