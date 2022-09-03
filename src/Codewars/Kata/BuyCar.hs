module Codewars.Kata.BuyCar where

--  https://www.codewars.com/kata/554a44516729e4d80b000012/train/haskell

nbMonths :: Integer -> Integer -> Integer -> Double -> [Integer]
nbMonths startPriceOld startPriceNew savingperMonth percentLossByMonth = [toInteger count, round leftOver]
  where
    (count, leftOver) = go 0 (fromIntegral startPriceOld) (fromIntegral startPriceNew) 0 percentLossByMonth

    savingperMonth' = fromIntegral savingperMonth :: Double

    go :: Int -> Double -> Double -> Double -> Double -> (Int, Double)
    go counter startPriceOld' startPriceNew' savings percentLoss
      | startPriceOld' + savings >= startPriceNew' = (counter, startPriceOld' + savings - startPriceNew')
      | otherwise = go (counter + 1) nextStartPriceOld nextStartPriceNew (savings + savingperMonth') nextPercentLossByMonth
      where
        lossFactor = (/ 100.0) (100.0 - percentLoss) :: Double

        nextStartPriceOld = lossFactor * startPriceOld' :: Double
        nextStartPriceNew = lossFactor * startPriceNew' :: Double

        nextPercentLossByMonth
          | even counter = percentLoss + 0.5
          | otherwise = percentLoss
