-- TODO: read through and edit comments

-- Functions Are First-Class Objects

--   - functions have a type signature (type annotation)

--   - Function Type Signature Components:

--       - # of parameters and their types (arity - # of arguments the function takes)
--       - function return type
--       - imperative langauges also have method signatures which
--         are type annotations for functions mapped to an object

--   - Properties of a First-Class Object:
--   - Can be:
--       - assigned to variables
--       - passed as arguments to functions
--       - returned from functions as a value (expression)
--       - stored in data structures
--       - compared with other objects

-- Higher Order Functions

--   - function that either:

--       - take a function in as an argument
--       - return a function as a value (expression)

-- Closure Functions

--   - a function that holds the state of some variable above its scope

-- Function Currying

--   - transforms a function that takes multiple arguments
--     into a sequence of functions that only take one argument

--   - a function that takes multiple arguments returns a closure for each argument
--     until the final argument is evaluated and then the last closure returns its value

-- Funcion Type Signature in Haskell

--   - a function annotation defining multiple parameters
--     function type signatures in Haskell are a chain of
--     functions that are higher order monadic closures

-- Reusability and Versatility

--   - if a hbigher order function is generally defined it can be used in a multitude of ways

powOf :: (Integral a) => a -> (a -> a)
powOf e n = n ^ e

powOfTwo = powOf 2

powOfFive = powOf 5

-- Infix Function Partial Application

--   - infix functions (binary functions) can be partially applied
--     by only supplying one of the operands surrounded by parentheses
--   - you can pick which operand state is saved in the closure returned
--   - the process of partial application returns a unary closure

-- Partial Application

--   - any function can be partially applied as all functions return a value or a closure

-- Infix Function Partial Application Example

divideByFive :: (Floating a) => a -> a
divideByFive = (/ 5) -- divideByFive x = x / 5 | a function that now takes any floating point number and divides it by 5

-- Function as Argument Example:

applyTwice :: (a -> a) -> a -> a -- takes a monadic function as an argument and aplies it twice to an expression
applyTwice f x = f (f x)

-- Function Argument in Type Annotation

--   - parentheses are required to indicate a function
--     is a type to a parameter rather than a single literal value
--   - (a -> b -> c) and a-> b-> c are not the same in a function type annotation

-- ZipWith Example:

--   - ZipWith is a function that:

--       - takes a dyadic function and two Lists as arguments
--       - applies the dyadic function to corresponding elements in the Lists
--       - appends the result of the application of f x y
--         to a list for each pair of elements in the lists

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x : xs) (y : ys) = f x y : zipWith' f xs ys
