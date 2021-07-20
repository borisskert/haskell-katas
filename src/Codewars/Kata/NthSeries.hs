module Codewars.Kata.NthSeries where

-- https://www.codewars.com/kata/555eded1ad94b00403000071/train/haskell

--best practice:
--import Text.Printf
--
--series :: [Double]
--series = map (1/) [1, 4 ..]
--
--seriesSum :: Integer -> String
--seriesSum n = printf "%.2f" $ sum $ take (fromInteger n) series


seriesSum :: Integer -> String
seriesSum n = show2 $ seriesSumRecursively n
  where
    seriesSumRecursively :: Integer -> Double
    seriesSumRecursively 0 = 0.00
    seriesSumRecursively 1 = 1.00
    seriesSumRecursively denominator = seriesSumRecursively (denominator - 1) + (1.0 / d)
      where
        d = fromIntegral denominator * 2 + (fromIntegral denominator) - 2 :: Double


show2 :: Double -> String
show2 n
  | length showN < 4 = showN ++ "0"
  | otherwise = showN
  where
    showN = show $ round2 n


--https://stackoverflow.com/a/12450771
round2 :: Double -> Double
round2 f = (fromInteger $ round $ f * (10^n)) / (10.0^^n)
  where n = 2
