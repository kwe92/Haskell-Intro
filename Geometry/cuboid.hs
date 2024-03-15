module Geometry.Cuboid (volume, area) where

volume :: (Floating a) => a -> a -> a -> a
volume l b h = l * b * h

area :: (Floating a) => a -> a -> a -> a
area l b h = 2 * (l * b + b * h + h * l)