import Data.Char

-- where Bindings and IO Actions

--   - you can also use where binding in IO actions

main = do
    putStrLn "What is your first name?"

    fname <- getLine

    putStrLn "What is your last name?"

    lname <- getLine

    -- let allCaps  = map toUpper 
-- `in` keyword omitted here  
    putStrLn $ allCaps fname ++ " " ++ allCaps lname

    where allCaps  = map toUpper 