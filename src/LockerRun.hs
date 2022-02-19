module LockerRun where

-- https://www.codewars.com/kata/55a5085c1a3d379fbb000062/train/haskell

lockerRun :: Int -> [Int]
lockerRun x = map (^ 2) [1 .. root]
  where
    root = floor . sqrt . fromIntegral $ x
