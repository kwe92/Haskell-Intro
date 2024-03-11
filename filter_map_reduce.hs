{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Avoid lambda" #-}
{-# HLINT ignore "Use product" #-}

-- Filter

--   - filter a list given a unary predicate and a list

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x : xs)
  | p x = x : filter' p xs
  | otherwise = filter' p xs

-- Map

--   - invoke a function on every element in a list and return a new list

map' :: (a -> b) -> [a] -> [b]
map' _ [] = [] -- when there is either an empty list passed in initally or all elements have been iterated over and an empty list is passed in from the recursion then return an empty list to append to to end the recursion
map' f (x : xs) = f x : map' f xs

-- applying map to nested lists
--  - map a map function to every list in the list of lists
arr0 = map' (map (^ 2)) [[1 .. 4], [5 .. 8], [9 .. 12]]

-- Fold | Reduce

--   - reduces a list to a single value by applying a binary function and accumulating the result
--   - the function must be a binary function
--   - there are four implementations of fold in Haskell:

--       - foldl | fold left | triadic function | required accumulator value:
--       - foldr | fold right | triadic function | required accumulator value:
--       - foldl1 | fold left | dyadic function | accumulator value omitted:
--       - foldr1 | fold right | dyadic function | accumulator value omitted:

-- Strange Factorial Implementation

factorial :: (Integral a) => a -> a
factorial 0 = 1
factorial n = foldl (\acc x -> acc * x) 1 [1 .. n]

factorial' :: (Integral a) => a -> a
factorial' 0 = 1
factorial' n = foldl (*) 1 [1 .. n]

factorial'' :: (Integral a) => a -> a
factorial'' 0 = 1
factorial'' n = product [1 .. n]

-- Map Filter Reduce Example

sumOfSquares :: (Integral a) => [a] -> a
sumOfSquares [] = 0
sumOfSquares xs = sum (takeWhile (< 10000) (filter odd (map (^ 2) xs)))

sumOfSquares' :: (Integral a) => [a] -> a
sumOfSquares' xs = sum (takeWhile (< 10000) [x ^ 2 | x <- xs, odd x])

sumOfSquares'' :: (Integral a) => [a] -> a
sumOfSquares'' [] = 0
sumOfSquares'' xs =
  foldl1
    (\acc x -> acc + x)
    ( takeWhile
        (< 10000)
        (filter odd (map (^ 2) xs))
    )

findFirstDivisible :: (Integral a) => a -> [a] -> a
findFirstDivisible _ [] = error "there is no element to divide by"
findFirstDivisible n (x : xs)
  | x `mod` n == 0 && x /= n = x
  | otherwise = findFirstDivisible n xs