module GeometryV1
  ( sphereVolume,
    sphereArea,
    cubeVolume,
    cubeArea,
    cuboidArea,
    cuboidVolume,
  )
where

-- Modules | Modularity | Abstraction Technique

--   - a Haskell script is flagged as a module when the module keyword is used followed by the where keyword

--   - modules are a way to keep code decoupled and how we create systems made from small interrelated components

--   - custom modules must be at the same level of the import script

--   - modules keep code D.R.Y by making code reusable and hiding implementation details (function body)
--     no matter how the function body is implemented the function should return what its specification dictates

--   - modularity is also a form of abstraction allowing engineers to decompose their system into smaller interrelated constituent parts

--   - reasoning about small components makes a system more manageable and easier to modify
--     as you are working in isolation not worrying about details that are not relivent to the immediate problem

--   - modularity also reduces the propagation of effects throughout a system if done properly

--   - highlights concepts such as `Single Responsibility Principle / Do One` Thing and `Smaller Is Better`

-- Breaking Apart Big Modules | Sub-Modules

--   - large modules can be broken apart into sub modules

--   - you can name a folder with a capital letter denoting the module name

--   - this is similar to Go Lang

--   - each .hs script can have its own name accosiated with the sub-module

--   - the syntax:

--       - <module keyword> <module_name_matching_folder_name.sub_module_name> (export1, export2, ..., exportN) <where>

--       - separate modules can have functions with the same name

--       - modules that have functions with the same names should be imported as fully qualified modules

-- Module Exports

--   - exports must be explicitly stated in Haskell similar to TypeScript, JavaScript or Java

--   - unlike Dart where entities are implicitly public and explicitly private denoted by a leading underscore

--   - similar to imports export directives are listed between parentheses at the begining of a script

--   - e.g.

--       - <module keyword> <module_name> (export1, export2, ..., exportN) <where>

-- Type Alias

--   - a type alias known as type synonym in Haskell are used to shorten the name of an existing type

--   - they can also serve as documentation for yourself and other engineers

-- Example of Type Synonym: Removing Ambiguity

--   - the type Double -> Double -> Double -> Double can have many interpretations
--   - at the highest level it is a function that takes three arguments of type Double
--     and returns a Double but its implementation is ambiguous

type UnaryRationalNumFunc = Double -> Double

type TernaryRationalNumFunc = Double -> Double -> Double -> Double

sphereVolume :: UnaryRationalNumFunc
sphereVolume r = 4 / 3 * pi * r ^ 3

sphereArea :: UnaryRationalNumFunc
sphereArea r = 4 * pi * r ^ 2

cubeVolume :: UnaryRationalNumFunc
cubeVolume a = a ^ 3

cubeArea :: UnaryRationalNumFunc
cubeArea e = 6 * e ^ 2

cuboidVolume :: TernaryRationalNumFunc
cuboidVolume l b h = l * b * h

cuboidArea :: TernaryRationalNumFunc
cuboidArea l b h = 2 * (l * b + b * h + h * l)
