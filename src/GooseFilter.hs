module GooseFilter where

-- https://www.codewars.com/kata/57ee4a67108d3fd9eb0000e7/train/haskell

geese = ["African", "Roman Tufted", "Toulouse", "Pilgrim", "Steinbacher"]

gooseFilter :: [String] -> [String]
gooseFilter = filter isNotInGeese


isNotInGeese :: String -> Bool
isNotInGeese goose = not (goose `elem` geese)
