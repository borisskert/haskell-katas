module ChineseZodiac where

import Preloaded (animals, elements)

-- https://www.codewars.com/kata/57a73e697cb1f31dd70000d2/train/haskell

chineseZodiac :: Int -> String
chineseZodiac year = unwords [element, animal]
  where
    animal = (animals !!) . (`mod` length animals) . (subtract 1924) $ year
    element = (elements !!) . (`mod` length elements) . (`div` 2) . (subtract 1924) $ year
