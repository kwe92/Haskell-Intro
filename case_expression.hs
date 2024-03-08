-- TODO: edit comments

-- Case Expressions | Pattern Matching Anywhere

--   - similar to CASE statements in SQL or Switch statments in imperative programming languages
--   - case expressions are as there nsame implies expressions
--   - pattern matches a variable and evaluates peices of code based on its value
--   - since Case Expressions are expression they can be used almost anywhere to match an expression to a parameter
--   - just like Pattern Matching on Function Parameters Case Expression require an exhaustive list of values of runtime errors will be thrown on values that do not match a pattern
--   - useful for pattern matching something in the middle of an expression

-- Case Expression Syntax

--   - case <expresion to pattern match> of <pattern 0> -> <expression>
--   -                                      <pattern 1> -> <expression>
--   -                                      <pattern 2> -> <expression>
--   -                                      <pattern .> -> <expression>
--   -                                      <pattern .> -> <expression>
--   -                                      <pattern .> -> <expression>
--   -                                      <pattern n> -> <expression>
--   -                                      <catch-all> -> <expression>

-- Case Expression Example 1

describeList :: [a] -> String
describeList xs =
  "the list is " ++ case xs of
    [] -> "an empty list."
    [x] -> "a singleton."
    xs -> "a list with " ++ show (length xs) ++ " elements."

-- Equivalent Pattern Matching on a Function Parameter Using where binding

describeList' :: [a] -> String
describeList' xs = "the list is " ++ describe xs
  where
    describe [] = "an empty list."
    describe [x] = "a singleton."
    describe xs = "a list with " ++ show (length xs) ++ " elements."