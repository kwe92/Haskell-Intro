import Data.List (elemIndex)

-- TODO: Edit Comments

-- Deriving Type Classes

--   - user defined data types can derive (inherit)
--     the functionality of type classes (type constraints)
--   - Haskell does al lthe heavy lifting for you reducing the amount of code you have to write

-- Equality

--   - in imperative languages you ofter have to define a class to represent a new type
--     then use operator overloading to tell the compiler how you would want the new to
--     to be compaired with other instances of that same type
--   - since Haskell is a declarative language you only need to specify that you would
--     would like a type to be compairable and if it meets the criteria the how is done for you automatically

-- Show | toString

--   - similarly with what would be a toString method in imperative languages
--     where you would have to explicitly define how an object is printed to the console
--     is automatically done for you by specifying the Show typw class

-- Person Class Example

data Person = Person
  { firstName :: String,
    lastName :: String,
    age :: Int
  }
  deriving (Eq, Show)

createPerson :: String -> String -> Int -> Person
createPerson firstName lastName age
  | age > 150 = error $ "there are not known humans 150 years or older, ensure the value " ++ show age ++ " is correct."
  | otherwise = Person firstName lastName age

p0 = createPerson "Baki" "Hanma" 14

p1 = createPerson "Baki" "Hanma" 14

-- p0 == p1 returns true

-- deriving Eq Type Class

--   - when you derive (inherit from) the Eq type class
--     Haskell will automatically compare the types of the values
--   - if the expressions types match then the value constructors are evaluated with their values
--   - the values compaired must also be part of the Eq type class
--     if the values that the data type hold are part of the Eq type class then those values are compared
--   - eleviating the need to overload operators to define equality for types

-- Enums (Enumerated Types)

--   - when defining a type the value constructors are ordered from left to right least to greatest respectively
--   - if a value constructor has no parameters the value of the constructor is just the name of the constructor
--   - the afromentioned property allows you to create enums out of a set of value constructors without parameters

-- Age Old Day Enum Example

data Day = Monday | Tuesday | Wednesday | Thursday | Friday | Saturday | Sunday deriving (Show, Read, Eq, Enum, Bounded, Ord)

-- bounded type class: a datatype that has an upper and lower bound (finite)

-- typing: [minBound .. maxBound] :: [Day] in GHCI returns [Monday,Tuesday,Wednesday,Thursday,Friday,Saturday,Sunday]

days = [Monday .. Sunday]

arr0 = [(elemIndex day days, day) | day <- days]
