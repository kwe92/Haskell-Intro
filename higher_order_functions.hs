-- Functions Are First-Class Objects

--   - functions have a type signature (type annotation)

--   - consisting of:

--       - the number of parameters the function has (arity - the number of arguments that the function takes)
--       - the return type of the function
--       - NOTE: in purely functional languages expressions must return some value that can not be null
--       - imperative langauges also have something called a method signature which is just a type annotation for a function mapped to an object

--   - Properties of a First-Class Object:

--       - assigned to variables
--       - passed as arguments to functions
--       - returned from functions as a value (expression)
--       - stored in data structures
--       - compared with other objects

-- Higher Order Functions

--   - function that either:

--       - take a function in as an argument
--       - returns a function as a value (expression)

-- Closure Functions

--   - a function that holds the state of some variable above its scope

-- Function Currying

--   - transforms a function that takes multiple arguments into a sequence of functions that only take one argument
--   - a function that takes multiple arguments returns a closure for each argument until the final argument is passed in then returns the return type of the function

-- Funcion Type Signature in Haskell

--   - a function annotation defining multiple parameters
--     is really just defining a chain of functions that are higher order monadic closures

powOf :: (Integral a) => a -> (a -> a)
powOf e n = n ^ e

powOfTwo = powOf 2

powOfFive = powOf 5

-- Infix Function Partial Application

--   - infix functions can be partially applied by only supplying one of the operands surrounded by parentheses
--   - you can pick which operand state is saved in the closure returned

-- Infix Function Partial Application Example

divideByFive :: (Floating a) => a -> a
divideByFive = (/ 5)

-- Function as Argument Example:

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

-- Function Argument in Type Annotation

--   - parentheses are required to indicate that a function is an argument to a parameter rather than a closure

-- ZipWith Example:
