module CatandMouse where

-- https://www.codewars.com/kata/57ee24e17b45eff6d6000164/train/haskell

catMouse :: String -> String
catMouse text
  | dots > 3 = "Escaped!"
  | otherwise = "Caught!"
  where
    dots :: Int
    dots
      | (== 'C') . head $ text = countDots . tail $ text
      | otherwise = 0


countDots :: String -> Int
countDots = count 0
  where
    count :: Int -> String -> Int
    count counter text
      | head text == '.' = count (counter + 1) (tail text)
      | otherwise = counter
