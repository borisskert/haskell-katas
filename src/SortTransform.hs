module SortTransform where

-- https://www.codewars.com/kata/57cc847e58a06b1492000264/train/haskell

import Data.Char (chr)
import Data.List (intercalate, sort)

sortTransform :: [Int] -> String
sortTransform xs =
  intercalate
    "-"
    [ extract text,
      extract (sort text),
      extract (reverse . sort $ text),
      extract (sort text)
    ]
  where
    text = map chr xs :: [Char]

    extract :: [Char] -> [Char]
    extract cs = prefix ++ suffix
      where
        prefix = head cs : [head (tail cs)]
        suffix = last (init cs) : [last cs]
