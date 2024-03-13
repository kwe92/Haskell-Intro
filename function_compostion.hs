-- Function Composition

--   - (f o g)(x) = f(g(x))
--   - creating a function composed of two other functions

-- Function Compostion Operator .

--   - . (period) is the function composition operator
--   - joins two unary functions calling the right most then applying the left function right after
--   - not to be confused with currying which returns a closure
--   - can also be used to reduce the number of parenttheses use but not advised
--   - if the inner most function has two or more parameters use the function application operator $ to separate the parameters

-- Example 1:

f :: (Num a) => a -> a
f x = x * 100

g :: (Floating a) => a -> a
g x = x ** 2

fg :: Double -> Double
fg = f . g

-- Example 2:

sumOfSquares :: (Integral a) => [a] -> a
sumOfSquares [] = 0
sumOfSquares xs = sum . takeWhile (< 10000) . filter odd . map (^ 2) $ xs

-- Readable Example 1:

sumOfSquares' :: (Integral a) => [a] -> a
sumOfSquares' [] = 0
sumOfSquares' xs =
  let oddSquares = filter odd $ map (^ 2) xs
      bellowLimit = takeWhile (< 10000) oddSquares
   in sum bellowLimit