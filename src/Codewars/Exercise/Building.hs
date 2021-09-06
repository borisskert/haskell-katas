module Codewars.Exercise.Building where

-- https://www.codewars.com/kata/55b75fcf67e558d3750000a3/train/haskell

newtype Block = Block (Integer, Integer, Integer)


block :: (Integer, Integer, Integer) -> Block
block (w, l, h) = Block (w, l, h)

getWidth :: Block -> Integer
getWidth (Block (w, l, h)) = w

getLength :: Block -> Integer
getLength (Block (w, l, h)) = l

getHeight :: Block -> Integer
getHeight (Block (w, l, h)) = h

getVolume :: Block -> Integer
getVolume (Block (w, l, h)) = w * l * h

getSurfaceArea :: Block -> Integer
getSurfaceArea (Block (w, l, h)) = 2 * w * l + 2 * h * l + 2 * w * h
