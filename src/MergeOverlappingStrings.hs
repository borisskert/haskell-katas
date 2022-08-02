module MergeOverlappingStrings (merge) where

--  https://www.codewars.com/kata/61c78b57ee4be50035d28d42/train/haskell

import Data.List (inits, isSuffixOf, (\\))

merge :: (Eq a) => [a] -> [a] -> [a]
merge xs ys = xs ++ (ys \\ overlap)
  where
    overlap = last . filter (`isSuffixOf` xs) . inits $ ys
