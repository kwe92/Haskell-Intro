-- TODO: Edit Comments

import Data.Char

-- let binding in do blocks

--   - you can omit the `in` keyword when using let bindings in do blocks
main = do
  putStrLn "What is your first name?"

  fname <- getLine

  putStrLn "What is your last name?"

  lname <- getLine -- perform the IO action getLine and bind its result to the identifier lname
  let allCaps = map toUpper
  -- `in` keyword omitted here
  putStrLn $ allCaps fname ++ " " ++ allCaps lname
