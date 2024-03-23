-- Compiling Haskell Script

--   - ghc --make <script_name>| omitting the .hs

-- Running Compiled Haskell Code

-- ./<script_name> | omitting the .hs

-- Run Haskell Script Without Compiling

--   - runhaskell <script.hs>

-- main = expression

--   - serves as the entry point to a Haskell program 
--   - somewhat similar to the main function of imperative languages 
--   - the main = expression construct is a special binding that associates the name main with an expression
--   - imperitave languages ussually use eager evaluation (sequential evaluation) where as declaritave languages use lazy evaluation (execute as needed)
--   - conceptually the main = expression construct is similar to the main function in imperative languages but fundamentally diffrent as functional and OOP are diffrent programming paradigms
--   - main = expression construct can result in an expression that performs some I/O action

main :: IO ()
main = putStrLn "In the begginer's mind there are many possibilities, in the experts mind there are few."

