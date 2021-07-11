module Blue where

--  https://www.codewars.com/kata/5862f663b4e9d6f12b00003b/train/haskell

guessBlue :: Int -> Int -> Int -> Int -> Double
guessBlue blue red removedBlue removedRed = fromIntegral remainBlue / fromIntegral all
  where
    remainBlue = blue - removedBlue
    remainRed  = red - removedRed
    all        = remainBlue + remainRed
