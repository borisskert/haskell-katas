module FromAtoZ (gimmeTheLetters) where

-- https://www.codewars.com/kata/6512b3775bf8500baea77663/train/haskell

gimmeTheLetters :: String -> String
gimmeTheLetters xs = [start .. end]
  where
    start = head xs
    end = last xs

-- another cool solution:
-- gimmeTheLetters :: String -> String
-- gimmeTheLetters = enumFromTo . head <*> last
