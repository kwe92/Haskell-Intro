-- TODO: Edit Comments

-- Defining New Data Types | type definition with data keyword

--   - similar to how you can define your own types with classes and the <class> keyword in imperative
--     OO languages
--   - you can define your own types in Haskell with the <data> keyword
--     which is similar to the <type> keyword in TypeScript
--   - SIDE NOTEs:
--                  - the <type> keyword in TypeScript is used to both create new types and alias known types
--                  - where as the <data> keyword in Haskell is used to create new types and the <type>
--                  -  keyword in haskell is used to alias known types
--                  - in imperative languages the <class> keyword is used to create new types and languages such as
--                    dart that supports type aliasing use the <typedef> keyword to alias known types

-- Abstract Data Types

--   - abstract data types or ADT's are similar to Struct's in imperative OO languages
--   - they both are data structures with a fixed number of fields
--   - ADT's are purely functional structs which means they are:

--       - immutable
--       - recursive
--       - constructed with constructors and pattern matching
--       - can serve the same purpose as a struct
--       - less efficient that a struct due to how ADT's are stored in memory compared to Structs

-- Abstract Data Type vs Abstract Data Structure

--   - Abstract Data Types can be seen as Abstract Data Structures with operations (functions / methods) of behavior
--   - Abstract Data Structures can be viewed as type declarations without implementations
--   - the terms are often used interchangeably to refer to the same concept
--   - type declarations are both abstract data structures and abstract data types

-- Abstract Data Type (ADT) vs Struct Memory Storage

--   - memory is one giant array indexable by pointer/reference
--   - there are many data storage methods when managing memory allocation the top three being:
--       - Contiguous Allocation
--       - Segmented (Non-Contiguous) Allocation
--       - Paged Allocation
--   - ADT's are less effiecient than Structs as they are allocated in memory in a non-contiguous manner (thay are not side by side in memory)

-- New Data Type Syntax

--   - <data> <DataTypeName> = ValueConstructor1 | ValueConstructor1 | ... | ValueConstructorN

-- Value Constructors | EVERYTHING IS A FUNCTION!!!

--   - creates values of specific types
--   - they specify the different values the newly constructed type can have
--   - similar to class constructors in imperative languages
--     implying they are function used to instantiate a type
--   - how objects are instatiated differs from imperative languages
--   - instead of using a new keyword they are instatiated using pattern matching and value constructors directly
--   - when you instantiate a value with a value constructor the type will be of the data type not the value constructor
--   - similar to having multiple class constructors in an imperative OO language

-- Single Value Constructor

--   - similar to its imperitave counter part when defining an object with one constructor the constructor has the same name as  the type

-- Polymorphic Data Types

--   - values in declarative languages can conform to more than one type

-- deriving Keyword

--   - deriving in Haskell is similar to inheriting in imperative languages and allows newly defined
--     types to conform to standard Type Classes such as Show, Floating, Etc

-- TODO: add comments
-- Polymorphic Functions && Pattern Matching on Datatypes

-- Value Constructor (Function) Parameter Syntax

--   - <data> <DataTypeName> = ValueConstructor1 ParamType1  ParamType2 ... ParamTypeN | ValueConstructor1 ParamType1  ParamType2 ... ParamTypeN | ... | ValueConstructorN ParamType1  ParamType2 ... ParamTypeN

-- Exporting User Defined Types

--   - you can export new types you create within the same set of parentheses you use to export functions
--   - syntax for exporting new types
--   - <module> <ModuleName> (
--                       DataType1(ValueConstructor1, ValueConstructor2, ..., ValueConstructorN),
--                       DataType2(..) | (..) means export all value constructors of a defined type
--                           ) <where>

-- Auxiliary Functions (Constructors) | Alternate Value Constructors

--   - pure functions that take one or more arguments and return a new value (instantation of a type)
--   - similar to factory constructors in imperative OO languages
--     where a type is instantiated using an alternate constructor (alternate function)
--   - useful when you do not want to export the value constructors of a datatype you have created
--     but want to use some alternate form of construction for the client
--   - a way of hiding the implementation details of a type
--   - if the value constructor is not exported it will not be able to be pattern matched against
--   - the standard library Map.fromList function is an example of an alternate constructor in which thr value constructor is not exported

type Center = Float

type Circumference = Float

type Radius = Float

type Length = Float

type Width = Float

data Shape
  = Circle
      { center :: Center,
        circumference :: Circumference,
        radius :: Radius
      }
  | SymmetricalRectangle
      { length :: Length,
        width :: Width
      }
  deriving (Show) -- must derive (inherit) from Show type class to make newly defined types printable to the console

c0 :: Center -> Circumference -> Radius -> Shape -- Circle has type of Center -> Circumference -> Radius -> returning a Shape
c0 = Circle

sr0 :: Length -> Width -> Shape -- SymmetricalRectangle has type of Length -> Width -> returning a Shape
sr0 = SymmetricalRectangle

-- Data Type WIth Single Value Constructor

data Point = Point Float Float -- the value constructor name is the same as the type name | just like the class name matches the name of the class constructor function in most imperative OO languages | the value constructure has explicit types instead of being polymorphic

-- surfaceArea a polymorphic function that pattern matches on the Shape data type defined

surfaceArea :: Shape -> Float
surfaceArea (Circle _ _ r) = pi * r ^ 2 -- pattern match on value constructor Circle and extract its third element which is the radius
surfaceArea (SymmetricalRectangle l w) = 2 * l * w

shapes :: [Shape]
shapes = [Circle 1 2 3, Circle 4 5 6, SymmetricalRectangle 20 10, SymmetricalRectangle 40 20] -- similar to new Circle(1,2,3) in imperative languages but the values are store non-contiguously

surfaceAreas :: [Float]
surfaceAreas = map surfaceArea shapes
