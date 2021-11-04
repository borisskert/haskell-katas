module Paul where

-- https://www.codewars.com/kata/57ee31c5e77282c24d000024/train/haskell

paul :: [String] -> String
paul = feelings . sum . map toScore


feelings :: Int -> String
feelings score
  | score > 100 = "Miserable!"
  | score >= 70 = "Sad!"
  | score >= 40 = "Happy!"
  | otherwise = "Super happy!"


toScore :: String -> Int
toScore "kata" = 5
toScore "Petes kata" = 10
toScore "life" = 0
toScore "eating" = 1
