module GeometryV1
  ( sphereVolume,
    sphereArea,
    cubeVolume,
    cubeArea,
    cuboidArea,
    cuboidVolume,
  )
where

-- TODO: Edit comments

-- Modules | Modularity | Abstraction Technique

--   - a Haskell script is flagged as a module when the module keyword is used followed by the where keyword
--   - modules are a way to keep code decoupled in haskell and how we create programs
--   - custom modules must be as the same level of the import script\
--     composed on small constituent parts
--   - modules keep code D.R.Y by making code reusable and hiding impleentation details (function body)
--     no matter how the function body is implemented the function should return what it states it will return in its specification to the callings cient
--   - modularity is also a form of abstraction allowing engineers to decompose their system into smaller interrelated constituent parts
--   - reasoning about small components makes the system more manageable and easier to modify as you are working in isolation so you dont have
--     to worry about details that are not relivent to the immediate problem
--   - reduces the propagation of effects throughout a system
--   - highlights concepts such as Single Responsibility Principle / Do One Thing | Smaller Is Better

-- Breaking Apart Big Modules | Sub-Modules

--   - large modules can be broken apart into sub modules
--   - you can name a folder with a capital letter denoting the module name
--   - this is smilar to Go Lang
--   - each .hs script can have its own name accosiated with the sub-module
--   - the syntax:
--       - <module> <module_name_matching_folder_name.sub_module_name> (export1, export2, ..., exportN) <where>
--   - separate modules can have functions with the same name
--   - if separate modules have functions with the same name then its best to import the modules as fully qualified modules

-- Module Exports

--   - exports must be explicitly stated similar to typescript for javascript
--   - exports directives listed between parentheses at the begining of a script just like imports
--   - e.g.
--       - <module> <module_name> (export1, export2, ..., exportN) <where>

-- Type Alias

--   - a type aliases are used to shorten the name of a type
--     or to give a type annotation a meaningful name for yourself and other engineers

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