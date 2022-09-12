module OfficeV (meeting) where

--  https://www.codewars.com/kata/57f6051c3ff02f3b7300008b/train/haskell

meeting :: [(String, Int)] -> Int -> Either String [Int]
meeting _ 0 = Left "Game On"
meeting oc requiredAmount = go oc requiredAmount []

go :: [(String, Int)] -> Int -> [Int] -> Either String [Int]
go _ 0 found = Right found
go [] _ _ = Left "Not enough!"
go ((occupants, chairs) : rest) requiredAmount found
  | diff <= 0 = go rest requiredAmount (found ++ [0])
  | otherwise = go rest nextRequired nextFound
  where
    diff = chairs - length occupants :: Int
    nextRequired = maximum [requiredAmount - diff, 0]
    nextFound = found ++ [minimum [diff, requiredAmount]]
