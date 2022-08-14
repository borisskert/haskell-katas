module Haskell.SylarDoom.FruitMachine where

--  https://www.codewars.com/kata/590adadea658017d90000039/train/haskell

import Data.List (nub, sortOn)
import Data.Ord (Down (..))

fruit :: [[String]] -> [Int] -> Int
fruit reels spins
  | length scoring == 3 = 0
  | length scoring == 1 = three
  | length scoring == 2 && plusWild = plus
  | otherwise = two
  where
    three = threeOfTheSame winningItem
    two = twoOfTheSame winningItem
    plus = plusOne winningItem

    winningItem = head . filter ((== head scoring) . name) $ items :: Item
    plusWild = (== "Wild") . last $ scoring

    scoring :: [String]
    scoring =
      map fst
        . sortOn (Down . snd)
        . map (\s -> (s, length . filter (== s) $ scorings))
        . nub
        $ scorings
      where
        scorings = zipWith (!!) reels spins :: [String]

data Item = Item {name :: String, threeOfTheSame :: Int, twoOfTheSame :: Int, plusOne :: Int}

items :: [Item]
items =
  [ Item {name = "Wild", threeOfTheSame = 100, twoOfTheSame = 10, plusOne = 0},
    Item {name = "Star", threeOfTheSame = 90, twoOfTheSame = 9, plusOne = 18},
    Item {name = "Bell", threeOfTheSame = 80, twoOfTheSame = 8, plusOne = 16},
    Item {name = "Shell", threeOfTheSame = 70, twoOfTheSame = 7, plusOne = 14},
    Item {name = "Seven", threeOfTheSame = 60, twoOfTheSame = 6, plusOne = 12},
    Item {name = "Cherry", threeOfTheSame = 50, twoOfTheSame = 5, plusOne = 10},
    Item {name = "Bar", threeOfTheSame = 40, twoOfTheSame = 4, plusOne = 8},
    Item {name = "King", threeOfTheSame = 30, twoOfTheSame = 3, plusOne = 6},
    Item {name = "Queen", threeOfTheSame = 20, twoOfTheSame = 2, plusOne = 4},
    Item {name = "Jack", threeOfTheSame = 10, twoOfTheSame = 1, plusOne = 2}
  ]
