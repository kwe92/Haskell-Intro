-- Haskell Type System

--   - Strong and Static Type System with additional Type Inference

-- Types

--   - everything in Haskell has a type
--   - expressions return a value
--   - values are instances of a type
--   - therefore every expression is an instantiation of a type
--   - all user-defined identifiers also have an associated type

-- Static Type System

--   - expression types are known at compile-time instead of run-time
--   - the compiler knows what operations types can and can not do | type class
--   - your program will not compile if types are incorrect given the operation you are trying to perform
--   - modern day IDE's notify developers with red squiggly lines and some associated error message
--     if you are using some type incorrectly

-- Strong Type System

--   - super sets of static type systems adding additional contraints

-- Type Inference

--   - explicit type annotation is unnecessary in most but not all cases
--   - example of a type that CAN NOT be inferred: read "5"
--   - the read function requires type annotation if used  without specifying the result i.e. read "5" + 0

-- Function Type Declaration

--   - functions are objects and therefore have a type
--   - functional type declarations are synonymous with method signatures on OOP

-- Generic Functions | Polymorphic Functions

--   - functions that can operate on values of different types
--   - instead of using explicit types placeholder type variables are used
--   - examples of type variables: SML : 'a | Haskell a | Dart T

-- Type Variables

--   - single letter characters lowercase or uppercase depending on the programming language
--     representing the ability for a parameter to accept an argument of any type

-- Checking Runtime type in GHCI

--   - use :t expression to determine the static type (compile time type) of an expression
--   - :t returns expression :: Type, where :: means `has type of`
--   - e.g. :t True | True :: Bool | True `has type of` Boolean

-- Type Classes

--   - an interface that defines some behavior a type can perform
--   - used in combination with type variables to
--     reduce the domain of possible types a polymorphic function can accept

-- Generic Identity Function

indentity :: a -> a
indentity x = x

-- parses a String and returns a Double
toDouble :: String -> Double
toDouble s = read s + 0.0 :: Double

s0 = "43.43"

-- show: represents a type as a String | does not work for functions (kinda...i mean value constructors are technically functions) | an abstract way to define toString method
-- e.g. show 4 returns "4"

-- polymorphic toString function
toString :: (Show a) => a -> String
toString = show

n = 43

-- TODO: Draw Arrow Types

-- Arrow Types

--   - There are three types of arrows used in programming languages:
--       ~ function arrow =>
--       ~ right arrow ->
--       ~ left arrow <- (used in list comprehension in Haskell representing the binding of a variable to some iterable)

-- Type Annotations

--   - explicitly state the type of a variable or function
--   - examples of type annotations: Dart: String someText | Go: someText String | TypeScript: someText: string | Haskell: someText :: String
--   - all of the examples can be read as someText `has type of` String

-- TODO: Explain When Type Classes are Needed