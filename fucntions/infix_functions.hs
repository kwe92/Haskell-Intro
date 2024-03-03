-- Infix Functions

--   - dyadic function that are mostly arithmetic operators such as +, -, *, /, etc
--   - instead of arguments suffixing the function the function goes between the arguments
--   - example via primitive arithmetic operator application:
--       - 4 * 5 or 25 / 5
--   - defined dyadic functions can be called as infix functions
--     by surrounding the function name with backticks
--   - example: 25 `div` 5 or 4 `mul` 10

pow :: Float -> Float -> Float
pow n exp = n ** exp

x = 5 `pow` 2 -- returns 25
