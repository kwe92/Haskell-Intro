{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Use newtype instead of data" #-}

-- TODO: Edit Comments

import Data.Map as M
import Distribution.Utils.Structured (containerStructure)

-- Type Synonym | Type Alias

--   - type synonyms are type aliases
--   - gives a type a more meaningful name so others and your future self
--     knows what a type is supose to represent
--   - best used when the type declration is long and needs to represent something specific that can not be
--     created as its one type
--   - allows you to convey more information in the type declaration

-- Pair Example:

type Pair = (Float, Float) -- type synonym / type alias for a tuple of length 2 representing a point in two dimensional space where each element is a Float

data Point = Point Pair deriving (Show)

p0 = Point (4, 2)

scale :: Point -> Float -> Point
scale (Point (x, y)) scaler = Point (x + scaler, y + scaler)

-- type keyword side note

--   - in some languages type alaiasing and type definition both use the same keyword `type` example TypeScript
--   - in Haskell these are two separate actions with two sdistinct keywords
--   -  `type` keyword for type synonyms
--   -  `data` keyword for defining new types

-- Association List

--   - a list of tuples length two that convert into key / value pairs
n0 = M.fromList [(1, 2)]

n1 = M.lookup 1 n0 -- has value of Just 2

-- Giving Types Meaningful Names | Desrciptive Type Declarations

--   - type aliasing primitives can help give you code meaningful names conveying more meaningful information on what the type declaration is supose to represent
--   - taking the time to be more expresive and create meaningful names will help you and future developers
--   - this will also reduce the amount of comments that will need to be written to to explain what the code is
--   - will not completely replace specifications though

type Name = String

type PhoneNumber = String

type PhoneBook = [(Name, PhoneNumber)]

phoneBook :: PhoneBook
phoneBook =
  [ ("Gaara", "123-456-7890"),
    ("Baki", "123-456-7890"),
    ("Sunraku", "123-456-7890"),
    ("Buu", "123-456-7890")
  ]

map00 = M.fromList phoneBook

-- Parameterized Type Synonyms

--   - type synonyms can also be generic
--   - can be viewed as an abstraction that takes types and produces a concrete type

type AssociationList k v = [(k, v)] -- an association list in which the keys and values can be of any type

intStringMap :: AssociationList Int String -- explicitly state what the types you expect in the type annotation
  =
  [ (0, "in the beginners mind there are many possibilities, in the experts mind there are few."),
    (1, "let go of all passion and aversion, become a brahmin."),
    (2, "let go of wanting, and want for nothing, without bring apathetic or dissociative.")
  ]

inPhoneBook :: Name -> PhoneNumber -> PhoneBook -> Bool
inPhoneBook name phoneNumber phoneBook = (name, phoneNumber) `elem` phoneBook

contains :: (Eq k, Eq v) => k -> v -> Map k v -> Bool
contains key value map = (key, value) `elem` M.toList map

-- Type Parameter Partial Application

--   - type constructors are functions which means type parameters can be parially applied to
--     return new type types

-- Example:

type IntMap = M.Map Int

map01 :: IntMap String
map01 = M.fromList [(0, "")]

createIntMap :: [a] -> IntMap a
createIntMap [] = M.empty
createIntMap [x] = M.singleton 0 x

-- createIntMap xs =
--     let func _ [] = []
--         func n (x : xs) = (n, x) : func (n + 1) xs
--     in M.toList .func 0 xs

-- createIntMap [x:xs] =

func :: (Num a) => a -> [b] -> [(a, b)]
func _ [] = []
func n (x : xs) = (n, x) : func (n + 1) xs
