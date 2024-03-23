--  TODO: Edit Comments

-- Type Constructors

--   - when applied with a type parameter produce a concrete type

--   - takes a type as an argument and produces a new type (concrete type)

--   - type constructors are themselves not types that can be asigned to a value

--   - type constructors can omit the type parameter
--     or include the type parameter and have polymorphic types ???

--   - type constructor components consist of everything between data and = when declaring a type

--   - they must have their type parameters asigned some value in this case a type

--   - type constructors are polymorphic types in which their values can be of any type that work for its specification

--   - typically type classes (type constraints) are ommited from the type declaration and added to the function declarations

--   - has similarities to functions in the sense of when they have one or more type parameters
--     type constructors can be curried and parially applied with concrete types

-- The Type Signature of a Type Constructor

--   - value constructors and expressions have a type that can be viewed in the GHCI using the :t command
--   - type constructors are slightly diffrent in the regard that their type is a `kind` and uses the :k command

-- kind

--   - a kind is a higher level of abstraction than a type in haskell

--   - :k Int :: * means that Int is a concrete type that takes not type parameters

--   - :k Maybe :: * -> * means that the Maybe type constructor takes one type parameter (concrete type) as an argument

--   - :k Either :: * -> * -> * means that Either is a type constructor that takes two type parameters producing a concrete type

--       - example: Either String Int where String and Int are concrete types passed to Either to produce a concrete type of Either String Int

-- Type Parameters

--   - placeholders for type typically a single letter

--   - type parameters are used to define generic (polymorphic) functions and data types

--   - type parameters are type variables for datatypes

--   - type parameters can be inferred by the compiler

data Maybe a = Nothing | Just a -- the `a` represents a type parameter

-- Example 1 3-d Vector:

data Vector a = Vector a a a | Origin deriving (Show) -- values can be of any types

intVect :: Vector Int -- applying Int to the Vector type constructor as an argument for its type parameter

intVect = Vector 1 2 3

-- Type Declaration Breakdown

--   before =

--      - <data Vector a> | Polymorphic Type Constructor
--      - takes one argument the type that the values will be in our example of a three dimensional vector

--   after =

--      - <Vector a a a> | Polymorphic Value Constructor
--      - The types of the three parameters depends on what was passed into the polymorphic type constructor

-- deriving (Show)

--   - the set of type classes you want to inherit from for your newly defined type

-- Polymorphic Functions for Defined Types

--   - defining your types polymorphically allows you to
--     define polymorphic functions that can work for those types
--   - when a type is polymorphic you add the type classes (type constraints)
--     to the functions that work with those types
--     narrowing down the domain of types the values can be

addVectors :: (Num a) => Vector a -> Vector a -> Vector a
addVectors (Vector i1 j1 k1) (Vector i2 j2 k2) = Vector (i1 + i2) (j1 + j2) (k1 + k2)

scale :: (Num a) => Vector a -> a -> Vector a
scale (Vector i j k) n = Vector (i + n) (j + n) (k + n)