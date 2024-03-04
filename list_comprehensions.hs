-- List Comprehension

--   - a concise way of creating complex Lists or Lists from other Lists
--   - derived from mathematical set comprehension but instead returns a List

wholeNumbers = [0, 1 ..]

arr0 = [2 * x | x <- take 10 wholeNumbers, x > 0]

-- Filtering a List

--   - when you use a predicate to determine the contents of a List
--   - elements who satisfy the predicate function are returned as elements of the comprehension

boomBangs xs = [if x < 10 then "BOOM" else "BANG" | x <- xs, odd x]

-- Using Multiple Lists in a List Comprehension | Multiple Bound Input Iterables

--   - results in all possible combinations i.e. the product of the length of all Lists
--   - e.g. given two Lists of length 3 you would have 3 * 3 = 9 total combinations

allPossibleCombinations00 = [x * y * z | x <- [3, 6, 9], y <- [5, 10, 15, 20], z <- [4, 12]]

allPossibleCombinations01 = [x * y * z | x <- [3, 6, 9], y <- [5, 10, 15, 20], z <- [4, 12], x * y * z >= 700]

-- Custom Length Function (Really Slow)

--   - replaces every element in a list with 1 and then sums the List
--   - _ indicates unused variable
--   - in our example the variable is unused in the output expression
length' xs = sum [1 | _ <- xs]

-- Remeber Strings ARE Lists!

--   - meaning we can use List comprehension to construct Strings

removeNonUpercase xs = [c | c <- xs, c `elem` ['A' .. 'Z']]

-- List Comprehension on Nested Lists

--   - possible on Lists whose elements are Lists

nestedArr0 = [[1, 3, 5, 2, 3, 1, 2, 4, 5], [1, 2, 3, 4, 5, 6, 7, 8, 9], [1, 2, 4, 2, 1, 6, 3, 1, 3, 2, 3, 6]]

allEven = [[x | x <- xs, even x] | xs <- nestedArr0]