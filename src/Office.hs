module Office where

-- https://www.codewars.com/kata/57ecf6efc7fe13eb070000e1/train/haskell

outed :: [(String,Int)] -> String -> String
outed colleagues boss
  | overallHappiness > 5 = "Nice Work Champ!"
  | otherwise = "Get Out Now!"
  where
    colleaguesHappiness = sum . map toHappiness . filter (not . isBoss boss) $ colleagues :: Double
    bossHappiness = sum . map toHappiness . filter (isBoss boss) $ colleagues :: Double
    count = fromIntegral . length $ colleagues :: Double
    overallHappiness =  (/ count) . (+ colleaguesHappiness) . (* 2) $ bossHappiness :: Double


toHappiness :: (String, Int) -> Double
toHappiness (_, h) = fromIntegral h


isBoss :: String -> (String, Int) -> Bool
isBoss boss (name, _) = boss == name
