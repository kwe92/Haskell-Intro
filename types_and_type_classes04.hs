-- Type Class Example Truthy Type Class
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Avoid lambda using `infix`" #-}

class YesNo a where
    yesno :: a -> Bool

-- instance YesNo String where
--     yesno :: String -> Bool
--     yesno x
--         | null x = False
--         | otherwise = True

-- instance YesNo [a] where
--     yesno [] = False
--     yesno _ = True

-- instance YesNo Bool where
--     yesno = id

instance YesNo (Maybe a) where
    yesno Nothing = False
    yesno (Just _ )= True


-- Functor Type Class

--   - allows you to define how to apply a function to every element of some collection

--   - has one method fmap

--   - the type variable of the Functor type class is a type constructor that takes only one type parameter

-- fmap

--   - a method defined in the Functor type class

--   - a higher order function that takes to arguments:

--       - a monadic function to be applied to every element and a type constructor with one type parameter

--       - returns a concrete type of the type constructor that is of the same type as the function result

-- Example: Point

--   - the Point type constructor (left of the =) takes one type parameter `a`

data Point a = Point  {x:: a, y :: a} deriving (Show)

instance Functor Point where
    fmap :: (a -> b) -> Point a -> Point b
    fmap f (Point x y) = Point (f x) (f y)

p0 :: Point Integer
p0 = fmap (\ x -> x * 2) (Point 4 3)

