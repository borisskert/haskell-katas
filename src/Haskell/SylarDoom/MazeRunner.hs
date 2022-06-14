module Haskell.SylarDoom.MazeRunner (mazeRunner) where

--  https://www.codewars.com/kata/58663693b359c4a6560001d6/train/haskell

import Data.Map (Map, fromList, lookup, toList)
import Data.Maybe (fromMaybe)
import Prelude hiding (lookup)

type Position = (Int, Int)

type Grid = Map Position Int

mazeRunner :: [[Int]] -> [Char] -> String
mazeRunner maze = running start
  where
    grid = arrayToGrid maze :: Grid
    start = fst . head . filter ((== 2) . snd) . toList $ grid :: Position

    running :: Position -> [Char] -> String
    running _ [] = "Lost"
    running position (c : cs)
      | field == 1 = "Dead"
      | field == 3 = "Finish"
      | null cs = "Lost"
      | otherwise = running position' cs
      where
        position' = move position c :: Position
        field = fromMaybe 1 . lookup position' $ grid :: Int

move :: Position -> Char -> Position
move (x, y) 'N' = (x, y - 1)
move (x, y) 'S' = (x, y + 1)
move (x, y) 'E' = (x + 1, y)
move (x, y) 'W' = (x - 1, y)

arrayToGrid :: [[Int]] -> Grid
arrayToGrid =
  fromList
    . concatMap (uncurry toLine)
    . zip [0 ..]
  where
    toLine :: Int -> [a] -> [(Position, a)]
    toLine y line = zipWith (\x c -> ((x, y), c)) [0 ..] line
