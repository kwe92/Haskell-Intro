-- TODO: Review and Edit Comments

-- User Defined Type Classes

--   - type classes can be viewed in terms of interfaces or abstract base classes
--     as they can define methods (functions) with or without implementations

--   - type classes can be a set of method signatures or a set of method signatures with their associated implementations

--   - type classes are polymorphic in nature but their instances are explicit

--   - types that can behave in the manner specified can be instances of that type class

--   - instances of a type class can use the associated functions of the type class

--   - similar to abstract base classes if a type class defines functions without
--     implementations their instances must implement the methods

--   - you can inherit from type classes and override their default implementations for their methods

-- Minimal Complete Definition

-- Overriding Type Class Default Behaviour

--   - you can derive from a type class during the declaration of a data type (inherit / compiler automatically generate implemenations of type class methods)

--   - you can make a data type an instance of a type class and explicitly implement the method signatures

data Point = Point {x :: Double, y :: Double}

-- Example: Overriding Show Type Class 

--   - similar to overriding the toString method of a class (data type)
--   - you are keeping all of the pre-defined patterns and adding a new one
instance Show Point where
    show (Point x y) = "Point(" ++ show x ++ "," ++ show y ++ ")"

p0 = Point 4 2

-- instance keyword

--   - used to explicitly make a type and instance of a type class
--     allowing you to override their methods


-- Sub Classing Type Classes

--   - a class constraint on a type declaration


-- :info

-- Verbose Information About Entities

--   - :info <Type_Class>:

--       - lists the set of defined functions and  types in a type class

--   - :into  <Data_Type>:

--       - displays indepth information about a data type e.g. what type classes its an instace of and its infix if its an infix operator

--   - :into  <Function>:

--       - displays the type declaration of a function







