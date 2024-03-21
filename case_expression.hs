-- Case Expressions | Pattern Matching Anywhere

--   - pattern matches a variable and evaluates pieces of code based on its value
--   - similar to CASE statements in SQL or Switch statments in imperative programming languages
--   - case expressions are expressions
--   - can be used anywhere an expression can be used
--   - similar to Pattern Matching on Function Parameters Case Expressions
--     require an exhaustive list of values or a runtime error will be thrown
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

--   - where bindings can also pattern match in the middle of an expression contained in a function

describeList' :: [a] -> String
describeList' xs = "the list is " ++ describe xs
  where
    describe [] = "an empty list."
    describe [x] = "a singleton."
    describe xs = "a list with " ++ show (length xs) ++ " elements."