-- TODO: Edit Comments

-- Guards

--   - control flow statements (boolean conditions) for patterns
--   - concise readable alternatives to if else statements in patterns
--   - if the guard evaluates to true then the pattern is executed
--   - if the guard evaluates to false then the check drops through
--     to the next guard until a guard that evaluates to true is reached
--     or the otherwise statement is reached

-- Otherwise Guard

--   - equivalent to otherwise = trueused as the catch-all guard

-- Guard Syntax (no `=` after the function name and parameters):

--       - function_name param_1 param_2 param_n
--             <tab> | boolean_expression = expression
--             <tab> | boolean_expression = expression
--             <tab> | boolean_expression = expression
--             <tab> | otherwise = expression           - default function body

-- Note: Spacing is important when using guards and a tab is required to indicate a guard construct is being used

-- Example: Boolean Operators Defined Arithmetically 1 is True 0 is False

true = 1

false = 0

is0or1 :: Int -> Int -> Bool
is0or1 a b = not (a < 0 || b < 0 || a > 1 || b > 1)

not' :: Int -> Int
not' x
  | is0or1 x 0 = 1 - x
  | otherwise = error "x must be 0 or 1"

-- not' 0 = 1
-- not' 1 = 0
-- not' x = error "x must be 0 or 1"

and' :: Int -> Int -> Int
and' a b
  | is0or1 a b = a * b
  | otherwise = error "a and b must be 0 or 1"

-- Defining OR by De Morgan's Law
or' :: Int -> Int -> Int
or' a b
  | is0or1 a b = not' (not' a `and'` not' b)
  | otherwise = error "a and b must be 0 or 1"

-- Where Bindings

--   - a syntactic construct placed at the end of a function to bind expressions to identifiers
--     scoped locally to the entire function including guards
--   - placed after the final guard and binds identifiers locally to a function
--   - where binding are scoped locally to the pattern
--     and are not shared arross function bodies
--   - where bindings can be nested
--   - where bindings can contain Pattern Matching on Function Parameters

-- Where Binding Example 1
bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
  | bmi <= underWeight = "you may need to put on a little weight."
  | bmi < normal = "you are in a healthy weight range."
  | bmi < overWeight = "you may need to get on a brief diet and exercise more often."
  | otherwise = "you are at risk for serious health problems and need to diet immediately."
  where
    bmi = weight / height ** 2 * 703
    (underWeight, normal, overWeight) = (18.5, 25, 30) -- destructure values binding them to identifiers

-- Where Binding Example 2
initials :: String -> String -> String
initials firstname lastname
  | null firstname || null lastname = "neither firstname or lastname can be empty."
  | otherwise = [f] ++ ". " ++ [l] ++ "."
  where
    (f : _) = firstname -- get the head of the enum to the right and disregard the tail
    (l : _) = lastname

-- Where Binding Example 3

bmiCalc :: (RealFloat a) => [(a, a)] -> [a]
bmiCalc xs = [bmi w h | (w, h) <- xs]
  where
    bmi weight height = weight / height ** 2 * 703