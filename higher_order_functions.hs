-- Functions as First-Class Objects

--   - functions have a type signature (type annotation)

--   - Function Type Signature Components:

--       - the # of parameters / arity - # of arguments the function takes

-- t     - the types the parameters can accept as arguments

--       - the function return type

--       - imperative langauges also have method signatures which
--         are function type annotations mapped to an object

--   - Properties of a First-Class Object:

--   - Can be:

--       - assigned to variables

--       - passed as arguments to functions

--       - returned from functions as a value (expression)

--       - stored in data structures

--       - compared with other objects

-- Higher Order Functions

--   - functions that either:

--       - take a function in as an argument

--       - return a function as a value (expression)

-- Closure Functions

--   - a function that holds the state of some variable above its scope

--   - typically the state comes from some enclosing function

-- Function Currying

--   - transforms a function that takes multiple arguments
--     into a sequence of functions that only take one argument (nested functions)

--   - in Haskell a function taking multiple arguments returns a closure for each argument retaining some state from above its scope
--     until the final argument is evaluated returning the result of the accumulated expressions

-- Funcion Type Signature in Haskell

--   - a function type declaration defining multiple parameters has a
--     type signature in Haskell consisting of nested higher order monadic closures

-- Reusability and Versatility

--   - if a higher order function is abstract enough it can serve a multitude of purposes
--     allowing for versatility and reusability

powOf :: (Integral a) => a -> (a -> a)
powOf e n = n ^ e

powOfTwo = powOf 2

powOfFive = powOf 5

-- Partial Application | Closure Function

--   - all functions that have more than one parameter are automatically curried in haskell

--   - automatic currying allows you to pass one argument at a time persisting its state as a closure

-- Infix Function Partial Application

--   - infix functions (binary functions made fro symbols) can be partially applied
--     by only supplying one of the operands surrounded by parentheses

--   - you can pick which operand state is saved in the closure returned

--   - the process of partially applying a binary operator returns a unary closure function

-- Infix Function Partial Application Example: divideByFive

--   - divideByFive x = x / 5 | a function taking any floating point number and divides it by 5

--   - the state of the primitive number 5 is saved for the lifetime of the function

--   - NOTE: in the example bellow the parameter `x` was omitted
--           which is possible because the partial application of a binary operator results in a unary
--           operator that only takes one argument which whould make adding the parameter redundant

divideByFive :: (Floating a) => a -> a
divideByFive = (/ 5)

-- Function as Argument Example: applyTwice

--   - takes a monadic function as an argument and aplies it twice to an expression

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

-- Function Argument in Type Declarations

--   - parentheses are required to indicate a function
--     is a type to a parameter rather than a single literal value

--   - (a -> b -> c) and a-> b -> c are not the same in a function type declaration

--   - (a -> b -> c) is a function as a parameter

--   - where as a -> b -> c is a function that takes two values and returns a third value c

-- ZipWith Example:

--   - ZipWith:

--       - takes a dyadic function and two Lists as arguments

--       - applies the dyadic function to corresponding elements in the Lists

--       - appends the result of the application of f x y
--         to a list for each pair of elements in the lists

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = [] -- pattern 1 | edge condition 1
zipWith' _ _ [] = [] -- pattern 2 | edge condition 2
zipWith' f (x : xs) (y : ys) = f x y : zipWith' f xs ys -- pattern 3 | catch all pattern
