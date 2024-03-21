import Data.List (elemIndex)

-- TODO: Edit Comments

-- Deriving Type Classes

--   - user defined data types can derive (inherit)
--     functionality of type classes (type constraints)

--   - Haskell does all the heavy lifting for you reducing the amount of code you have to write

-- Equality

--   - in imperative languages you declare a class to represent a new type
--     then use operator overloading to tell the compiler how you would like
--     the new to to be compaired with other instances of that same type

--   - Haskell is a declarative language only needing to specify what code should do
--     the case of equality the what is compairability if the code meets the criteria
--     the how is done for you automatically (abstracted away)

-- Show | toString

--   - similar to toString methods in imperative languages

--   - in imperative languages you explicitly define how
--     an object is to be printed to the console by implementing a toString method

--   - in Haskell you tell the compiler what the code should do by specifying the Show type class

-- Person Class Example

data Person = Person
  { firstName :: String,
    lastName :: String,
    age :: Int
  }
  deriving (Eq, Show)

type Fname = String

type Lname = String

type Age = Int

createPerson :: Fname -> Lname -> Age -> Person
createPerson firstName lastName age
  | age > 150 = error $ "there are not known humans 150 years or older, ensure the value " ++ show age ++ " is correct."
  | otherwise = Person firstName lastName age

p0 = createPerson "Baki" "Hanma" 14

p1 = createPerson "Baki" "Hanma" 14

-- p0 == p1 returns true

-- deriving Eq Type Class

--   - deriving (inheriting from) the Eq type class
--     Haskell will automatically compare the types of the values

--   - if the values types match then the value constructors are evaluated with their values (fields)

--   - the values compaired must also be part of the Eq type class
--     if the values (fields) are part of the Eq type class then those values are compared

--   - removing the need to overload operators to define equality for types

-- Enums (Enumerated Types)

--   - when declaring a type the value constructors are ordered from left to right least to greatest respectively

--   - if a value constructor has no parameters the value of the constructor is the name of the value constructor

--   - the afromentioned property allows you to create enums out of a set of value constructors without parameters

-- Age Old Day Enum Example:

data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday deriving (Show, Read, Eq, Enum, Bounded, Ord)

-- bounded type class: finite data type, has an upper and lower bound

-- typing: [minBound .. maxBound] :: [Day] in GHCI returns [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday]

days = [Monday .. Sunday] -- returns [Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday]

arr0 :: [(Maybe Int, Day)]
arr0 = [(elemIndex day days, day) | day <- days]
