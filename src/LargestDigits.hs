module LargestDigits where

--  https://www.codewars.com/kata/51675d17e0c1bed195000001/train/haskell

digit5 :: String -> Int
digit5 xs = maximum readNumbers
  where
    numbers = toConsecutiveNumbers xs :: [String]
    readNumbers = map (read :: String -> Int) $ numbers :: [Int]


toConsecutiveNumbers :: String -> [String]
toConsecutiveNumbers [c1, c2, c3, c4, c5] = [[c1] ++ [c2] ++ [c3] ++ [c4] ++ [c5]]
toConsecutiveNumbers (c1:c2:c3:c4:c5:rest) = [[c1] ++ [c2] ++ [c3] ++ [c4] ++ [c5]] ++ toConsecutiveNumbers ([c2] ++ [c3] ++ [c4] ++ [c5] ++ rest)
