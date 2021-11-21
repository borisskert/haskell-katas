module OlympicRing where

data Medal = Bronze | Silver | Gold deriving (Eq, Enum, Show)

-- https://www.codewars.com/kata/57d06663eca260fe630001cc/train/haskell

olympicRing :: String -> Maybe Medal
olympicRing = toMedal . (`div` 2) . sum . map toOs

toMedal :: Int -> Maybe Medal
toMedal points
  | points <= 1 = Nothing
  | points == 2 = Just Bronze
  | points == 3 = Just Silver
  | points > 3 = Just Gold

toOs :: Char -> Int
toOs 'o' = 1
toOs 'O' = 1
toOs 'b' = 1
toOs 'B' = 2
toOs 'p' = 1
toOs 'P' = 1
toOs 'e' = 1
toOs 'A' = 1
toOs 'a' = 1
toOs 'g' = 1
toOs 'd' = 1
toOs 'D' = 1
toOs 'q' = 1
toOs 'Q' = 1
toOs 'R' = 1
toOs _ = 0
