module Geometry.Cube (volume, area) where

volume :: (Floating a) => a -> a
volume a = a ^ 3

area :: (Floating a) => a -> a
area e = 6 * e ^ 2
