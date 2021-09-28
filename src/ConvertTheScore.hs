module ConvertTheScore (scoreboard) where

-- https://www.codewars.com/kata/5b6c220fa0a661fbf200005d/train/haskell

import Data.List (elemIndex)

scoreboard :: String -> (Int, Int)
scoreboard text = (head scores, last scores)
  where
    scores =
      map (\(Just x) -> x)
        . filter (not . (==) Nothing)
        . map (`elemIndex` scoreWords)
        . words
        $ text ::
        [Int]

    scoreWords =
      [ "nil",
        "one",
        "two",
        "three",
        "four",
        "five",
        "six",
        "seven",
        "eight",
        "nine"
      ] ::
        [String]

-- better use `mapMaybe`
