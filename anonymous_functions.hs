{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Collapse lambdas" #-}
{-# HLINT ignore "Redundant lambda" #-}

-- Lambda Functions
--   - anonymous functions
--   - syntax:
--       (\ param1 param2 paramN -> expression)
--  - typicaally surronded by parentheses as to not extend all the way to the rights
-- can be useful if:
--   - you have a small function that will only be used once
--   - passing in a function to a higher order function (callback function)
--   - can be used instead of a where binding within a function
--   - can be used instead of a let binding within a function
--   - many more reasons
-- lLambda Function Example 1

bmiCalc :: (RealFloat a) => [(a, a)] -> [a]
bmiCalc xs = [(\w h -> w / h ** 2 * 703) w h | (w, h) <- xs]

bmiCalc' :: (RealFloat a) => [(a, a)] -> [a]
bmiCalc' xs = [bmi w h | (w, h) <- xs]
  where
    bmi weight height = weight / height ** 2 * 703

-- Lambda Function Example 2

cylinder :: (RealFloat a) => a -> a -> a
cylinder radius height =
  (\r h -> 2 * pi * r * h) radius height + 2 * (\r -> pi * r ^ 2) radius

cylinder' :: (RealFloat a) => a -> a -> a
cylinder' radius height =
  let sideArea = 2 * pi * radius * height
      topArea = pi * radius ^ 2
   in sideArea + 2 * topArea

-- Lambda Function Right Arrow Extension

--   - just as in its mathematical equivalent meta variables (parameter variables)
--     are bound to the variables in the function body
--     extending all the way to the right
--   - any variable not bound to a meta variable is a free variable
--   - in the example bellow x, y and z are bound to each of the anonymous functions in the
--     function type anootation
--   - adding parenttheses to the function type annotation illustrates the application of three anonymous closures

sumTriple :: (Num a) => a -> (a -> (a -> a))
sumTriple = \x -> \y -> \z -> x + y + z -- Lambda Calculus Abstraction (anonymous funcftion definition)

sumTriple' :: (Num a) => a -> (a -> (a -> a))
sumTriple' x y z = x + y + z
