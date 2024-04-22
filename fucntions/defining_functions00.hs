-- Functions in Haskell

--   - functions are objects (first class citizens) which imply they have a type signature
--   - a functions type signature is also known as its method signature in OOP languages
--   - in Haskell a function signature must have an associated binding (implementation)

-- Function Definitions

--   - function definitions in Haskell differ from other languages
--   - in the head of a function parentheses are ommited
--   - parameters are separated by spaces rather than commas
--   - the implementation is defined after = ... instead of between curly brackets {...}
--   - parameter and return types are defined by the function type signature abstraction
--     rather than being part of the function definition itself

-- Function Signature (abstractions)

--   - function type signatures also differ from other languages that are typed
--   - there is no preceeding type or typedef keyword
--   - instead you define function type signatures as follows:
--       - functionName :: type1 -> type2 -> ... typeN -> returnType
--         where the sequence of types  (type1, type2, ..., typeN) represent the types of the parameters
--         or the accosiated argument expected at that position
--       - the return type is the resulting type of the expression or return type of the function after execution

-- Function Hoisting

--   - function definitions can be hoisted in haskell
--   - function expressions can not

-- Function Signature
doubleMe :: Int -> Int
-- Function Definition && Implementation
doubleMe x = x * 2

pow :: Float -> Float -> Float
pow num exp = num ** exp

doubleUs :: Float -> Float -> (Float, Float)
doubleUs x y = (x * 2, y * 2)

-- Combining Functions

--   - combine functions to make more complex functions and keep code D.R.Y
--   - if an implementation needs to change you only have to change the implementation in one place

doubleUsV2 :: Int -> Int -> (Int, Int)
doubleUsV2 x y = (doubleMe x, doubleMe y)