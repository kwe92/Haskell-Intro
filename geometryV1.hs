module GeometryV1
  ( sphereVolume,
    sphereArea,
    cubeVolume,
    cubeArea,
    cuboidArea,
    cuboidVolume,
  )
where

-- Modules

--   - a Haskell script is flagged as a module when the module keyword is used followed by the where keyword
--   - modules are a way to keep code decoupled in haskell and how we create programs
--     composed on small constituent parts

-- Breaking Apart Big Modules

--   - large modules can be broken apart into sub modules
--   - you can name a folder with a capital letter denoting the module name
--   - this is smilar to Go Lang
--   - each .hs script can have its own name accosiated with the sub-module
--   - the syntax:
--       - module <module_name_matching_folder_name.sub_module_name> (export1, export2, ..., exportN) where

-- Module Exports

--   - exports must be explicitly stated similar to typescript for javascript
--   - exports are listed between parentheses just like imports
--   - e.g.
--       - module <module_name> (export1, export2, ..., exportN) where

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