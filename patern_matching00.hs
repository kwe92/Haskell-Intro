-- TODO: Edit Comments

-- Pattern Matching

--   - a syntactic construct that allows you to compare a value
--     against a set of patterns, deconstructing the value in a concise and declarative way
--   - if the pattern is matched a corresponding value is returned or piece of code is executed
--   - similar to case statements in SQL or Switch statements in imperative programming (Object Oriented) languages
--   - pattern matching takes a declarative (functional) approach and tends to be more powerful then SQL CASE statements and Switch statements
--   - a value matches a form and then is deconstructed in some way

-- Catch All Pattern - Default Pattern

--   - used to match any value that is not matched by the patterns above it
--   - there must be a catch all (default pattern) which is the last pattern of a set of patterns
--   - this is because if a pattern is not matched then the value will fall through to the next pattern
--   - order is important when defining patterns
--   - if the catch all pattern is placed at the top then the other patterns will not have a chance to be matched against
--   - omitting the catch-all (default) pattern will through an error: Non-exhaustive patterns if matched on a pattern that was not explicitly specified
--   - catch all patterns either have an explicit variable or a wild card variable in there definition within Haskell

-- Edge Condition

--   - the result of a known input

-- Examples:

-- luckySeven `has type of` (Integral-Type-Class type_variable) function-arrow => type_variable right-arrow -> ReturnType
luckySeven :: (Integral a) => a -> String
luckySeven 7 = "LUCKY NUMBER 7, YOU ARE A WINNER!!"
luckySeven x = "NO LUCK, TRY AGAIN!!"

length' :: (Num b) => [a] -> b
length' [] = 0 --  edge condition
length' (_ : xs) = 1 + length' xs

factorial :: (Integral a) => a -> a
factorial 0 = 1 --  edge condition
factorial n = n * factorial (n - 1)

euclideanDistance :: (Floating a) => (a, a) -> (a, a) -> a
-- since variables are use the pattern is already exhaustive
euclideanDistance (x1, y1) (x2, y2) = sqrt ((x2 - x1) ** 2 + (y1 - y2) ** 2)

sumPoints :: (Num a) => [(a, a)] -> a
sumPoints [] = 0 --  edge condition
sumPoints xs = sum [x + y | (x, y) <- xs]

-- Boolean Operators Defined Arithmetically 1 is True 0 is False

true = 1

false = 0

not' :: Int -> Int
not' 0 = 1
not' 1 = 0
not' x = error "x must be 0 or 1"

isBetween0and1 :: Int -> Int -> Bool
isBetween0and1 a b = not (a < 0 || b < 0 || a > 1 || b > 1)

and' :: Int -> Int -> Int
and' a b = if isBetween0and1 a b then a * b else error "a and b must be 0 or 1"

-- Defining OR by De Morgan's Law
or' :: Int -> Int -> Int
or' a b = if isBetween0and1 a b then not' (not' a `and'` not' b) else error "a and b must be 0 or 1"
