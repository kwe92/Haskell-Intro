-- Tuples

--   - a fixed length collection of elements typically used for creating a record or representing a fixed number of elements
--   - Tuples allow you to give groups of data meaningful descriptions through identifiers
--   - in Haskell tuples can be heterogeneous containing different types
--   - unlike languages with a dynamic or any types a heterogeneous tuple still has an explicit type
--   - a tuples type consists of the types of elements and the number of elements e.g. (String, String, Int)

-- Singleton Tuple

--   - each size of a tuple is part of its type so a tuple of size one is equivalent to the value
--   - which makes singleton tuples pointless

-- Type Alias

--   - use the type keyword followed by an identifier that is capitalized
--     then initialize with the type you wish to alias
--   - e.g. type Identifer = InitializationType

type EmployeeRecord = (String, String, Int)

type Pair = (Float, Float)

type Array2d = [Pair]

getEmployeeRecord :: String -> String -> Int -> EmployeeRecord
getEmployeeRecord fname lname age = (fname, lname, age)

emp00 :: EmployeeRecord = getEmployeeRecord "Kweayon" "Clark" 31

emp01 :: EmployeeRecord = ("Baki", "Hanma", 16)

-- Array Representing 2x2 Cartesian Plane
plane2d :: Array2d =
  [ (1, 2),
    (2, 4),
    (4, 8),
    (8, 16)
  ]

arr0 :: [String] = ["apple", "oranges", "strawberries", "mangos"]

zippedArr = zip [0 .. length arr0 - 1] arr0

--   Some Tuple Functions

--   - fst: takes a tuple of length 2 and returns its first element
--   - snd: takes a tuple of length two and returns its second element
--   - zip: takes to lists and returns a list of pairs | if the lengths of the lists don't match the longer list is cut off
