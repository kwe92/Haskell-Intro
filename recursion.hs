{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Move guards forward" #-}

-- Recursive Functions

--   - functions that are used within their own function definition (inside their function body)
--   - a way to declare what something is
--   - used in functional languages instead of for and while loops

-- Edge Condition

--   - typically explicity defined
--   - required for a recursive function to terminate

fibonacci :: (Integral a) => a -> a
fibonacci 0 = 0 -- edge condition
fibonacci 1 = 1 -- edge condition
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)

fibonacci' :: (Integral a) => a -> a
fibonacci' n = getFib n
  where
    getFib 0 = 0
    getFib 1 = 1
    getFib n = fibonacci (n - 1) + fibonacci (n - 2)

fibonacci'' :: (Integral a) => a -> a
fibonacci'' n =
  let getFib 0 = 0
      getFib 1 = 1
      getFib n = fibonacci (n - 1) + fibonacci (n - 2)
   in getFib n

fibonacci''' :: (Integral a) => a -> a
fibonacci''' n = case n of
  0 -> 0 -- edge condition
  1 -> 1 -- edge condition
  n ->
    let getFib n = fibonacci (n - 1) + fibonacci (n - 2)
     in getFib n

getLargeEvenFibonacci :: (Integral a) => [a] -> [a]
getLargeEvenFibonacci xs =
  [ x
    | x <-
        [ getFib x
          | x <- xs,
            let getFib 0 = 0
                getFib 1 = 1
                getFib n = getFib (n - 1) + getFib (n - 2)
        ],
      even x && x > 200 -- predicate to check if x is even
  ]

getLargeOddFibonacci :: (Integral a) => [a] -> [a]
getLargeOddFibonacci xs =
  [ x
    | x <- fibCollection,
      odd x && x > 99 -- predicate to check if x is even
  ]
  where
    fibCollection =
      [ getFib x
        | x <- xs,
          let getFib 0 = 0
              getFib 1 = 1
              getFib n = getFib (n - 1) + getFib (n - 2)
      ]

-- Maximum' Example:

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "an empty list does not have a maximum element." -- pattern 1 && edge condition 1
maximum' [x] = x -- pattern 2 && edge condition 2
maximum' (x : xs) -- pattern 3 with guards
  | x > maxTail = x
  | otherwise = maxTail
  where
    maxTail = maximum' xs
