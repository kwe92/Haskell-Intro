{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use list literal" #-}

-- TODO: Review and Edit Comments

-- List Declaration Explained

--   - contains a Type Parameter so its polymorphic

--   - contains itself in its declaration so its a Recursive Data Structure

-- Cons Keyword in Data Type Declarations

--   - Cons is the prepend operator in declarative languages
--   - a constant time O(1) operation
--   - the Cons keyword in data type declarations is used to denote the prepending of a value to something
--   - the semi-colon : is the infix equivalent to Cons
--   - : can't be used in data type declarations
--   - Side Note: SML (Standard ML) used a double semi-colon for the Cons operator ::

data List a = Empty | Cons a (List a) deriving (Show, Eq, Read, Ord) -- Polymorphic Recursive Data Structure

emptyList = Empty

singletonList = 9999 `Cons` emptyList

arr0 = 1 `Cons` (2 `Cons` (3 `Cons` emptyList)) -- equivalent to 1 : (2 : (3 : []))

arr1 = 1 : (2 : (3 : []))

-- Custom Infix Operators

--   - using the keyword infix [fixity state] <special characters>
--     will allow you to contruct custom infix functions

--   - lnfixl: left associative

--   - lnfixr: right associative

--   - fixity state determines operator precedence

infixr 5 :::

data List' a = Empty' | a ::: (List' a) deriving (Show, Eq, Read, Ord)

arr2 :: List' String
arr2 = "This" ::: "Still" ::: "Works" ::: Empty'

infixr 5 +++

Empty' +++ ys = ys
(x ::: xs) +++ ys = x ::: (xs +++ ys)

-- Pattern Matching On Constructors

--   - pattern matching only works on constructors
--   - this goes for custom constructors we define

arr3 = 42 ::: 9999 ::: Empty'

arr4 = 1 ::: 2 ::: 3 ::: Empty'

arr5 = arr3 +++ arr4