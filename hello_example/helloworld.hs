-- Compiling Haskell Script

--   - ghc --make <script_name>| omitting the .hs

-- Running Compiled Haskell Code

-- ./<script_name> | omitting the .hs

-- Run Haskell Script Without Compiling

--   - runhaskell <script.hs>

-- main = expression

--   - a special binding similar to the main function of imperative languages serving
--     as the entry point to Haskell programs and will ALWAYS be an IO action

--   - imperitave languages use eager evaluation (sequential evaluation)
--     where as declaritave languages use lazy evaluation (execute as needed)

-- main Expression I/O action Result Type

--   - the I/O action result type depends on the result of the final expression in the main expression
--   - in our example bellow putStrLn has a IO action result type of IO () so that is the type of the main expression

main :: IO () -- the type of `main` is an IO action
main = putStrLn "In the begginer's mind there are many possibilities, in the experts mind there are few."

-- putStrLn

--   - similar to print in Dart or fmt.Println in Go Lang

--   - prints string to console with suffixing new line

--   - putStrLn type signature:

--       - putStrLn :: String -> IO ()

--       - putStrLn takes a String as an argument and returns an I/O actions with an absent value of type ()

-- unit | empty tuple ()

--   - represents the absence of a value

-- I/O Action

--   - typically has a side effect

--   - contains some return value inside it

--   - e.g. IO String, IO Int, IO (), etc

--   - String and IO String are two different types

--   - every IO action that is performed has a result encapsulated within it
