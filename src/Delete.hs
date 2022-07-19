module Delete where

import Data.List ((\\))

--  https://www.codewars.com/kata/5894318275f2c75695000146/train/haskell

deleteDigit :: Int -> Int
deleteDigit n = maximum . map (toIntegral . map snd . (\digit -> digits \\ [digit])) $ digits
  where
    digits = zip [0 ..] . toDigits $ n :: [(Int, Int)]

toDigits :: Integral a => a -> [a]
toDigits n
  | n < 10 = [n]
  | otherwise = toDigits m ++ [remainder]
  where
    (m, remainder) = n `divMod` 10

toIntegral :: Integral a => [a] -> a
toIntegral [] = 0
toIntegral digits = last digits + 10 * (toIntegral . init $ digits)
