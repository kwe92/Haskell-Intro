-- IO Chain | do syntax

--   - I/O actions can be chained together with the `do syntax`
--     generating a single I/O action

--   - The last IO action in a do block can not be bound to a variable using the <- construct

-- IO Action Result Extraction (Binding)

--   - you can bind the resulting concrete value of an IO action to a variable using the left arrow construct

--   - <identifier> <- <IO action>

--   - you can only extract the value of an I/O action when you are inside another I/O action

--   - you can only use the result of an IO action if it is bound first with the exception of the last IO action

main = do
  putStrLn "What is your favorite quote?"
  quote <- getLine -- execute the I/O action getLine and bind its concrete value in quote variable
  putStrLn ("your favorite quote is: " ++ quote)