-- Problem 0

--   - use tuples and list comprehensions to determine:

--       - which right triangle have integers for all sides
--         and all sides equal to or smaller than 10 with a perimeter of 24?

type Triplet = (Float, Float, Float)

type Array3d = [Triplet]

triangles :: Array3d =
  [ (x, y, z)
    | x <- [1 .. 10], -- bind x to each element in the iterable
      y <- [1 .. 10], -- bind y to each element in the iterable
      z <- [1 .. 10], -- bind z to each element in the iterable
      isRightTriangle x y z,
      getTrianglePerimeter x y z == 24 -- predicate to determine if the parameter is equal to 24
  ]

-- predicate to determine if the triangle is a right triangle
isRightTriangle :: Float -> Float -> Float -> Bool
isRightTriangle a b c = a ** 2 + b ** 2 == c ** 2

getTrianglePerimeter :: Float -> Float -> Float -> Float
getTrianglePerimeter a b c = a + b + c

-- Common Pattern in Programming

--   - have some collection of elements you apply transformations too and then filter them in some way
--     to attain the elements that you want