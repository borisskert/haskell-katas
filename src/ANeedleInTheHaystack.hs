module ANeedleInTheHaystack (findNeedle) where

-- https://www.codewars.com/kata/56676e8fabd2d1ff3000000c/train/haskell

findNeedle :: [String] -> String
findNeedle hayStack = "found the needle at position " ++ show (findNeedleInHaystack 0 hayStack)

findNeedleInHaystack :: Int -> [String] -> Int
findNeedleInHaystack index (first:others) = do
  if first == "needle"
    then index
    else findNeedleInHaystack (index + 1) others
