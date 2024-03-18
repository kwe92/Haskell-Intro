--  TODO: Edit Comments

-- Type Constructors | Polymorphic Types

--   - takes a type as a value and produces a new type
--   - type constructors are themselves not types
--   - they must have their type parameters asigned some value in this case a type
--   - type constructors are polymorphic types in which their values can be of any type work for its specification
--   - typically type classes (type constraints) are ommited from the type declaration and added to the function declarations

-- Type Parameters

--       - placeholders for type typically a single letter
--       - type parameters are used to define generic (polymorphic) functions and data types
--       - type parameters are type variables for datatypes

data Maybe a = Nothing | Just a -- the `a` represents a type parameter

-- Example 1 3-d Vector:

data Vector a = Vector a a a | Origin deriving (Show) -- values can be of any types

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