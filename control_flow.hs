import Data.Text.Lazy.Read (double)

-- if Statements in Haskell
-- TODO: maybe move the definition of an expression somewhere else
--   - everything is an expression in Haskell
--   - which has a few implications:
--       - everything must return a value
--       - there are no null types (immutability)
--       - if control flow statements must have an else block

-- Expression

--   - Must return a value and can not represent the absence of a value i.e. null or nil

doubleSmallNumbers :: Float -> Float
doubleSmallNumbers x = if x < 100 then x * 2 else x

x = doubleSmallNumbers 88

-- Suffixing Names With Apostrophe
--   - in Haskell you can use a apostrophe in the name of an identifier
--   - this is similar to using prime in math to represent simiar functions are variables
--   - bellow is an example of the use on an apostrophe in doubleSmallNumbers to represent a slightly diffrent version of the function
--   - they can also represent a function that is not lazy

doubleSmallNumbers' :: Float -> Float
doubleSmallNumbers' x = (if x < 100 then x * 2 else x) + 1
