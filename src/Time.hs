module Time where

-- https://www.codewars.com/kata/57ea0ee4491a151fc5000acf/train/haskell

calculateTime :: Int -> Int -> Double
calculateTime battery charger = fastChargeTime + descreasingChargeTime + trickleChargeTime
  where
    capacity = fromIntegral battery :: Double

    fullChargeRate = fromIntegral charger :: Double
    descreasingChargeRate = fullChargeRate * 0.5
    trickleChargeRate = fullChargeRate * 0.2

    fastChargeTime = capacity * 0.85 / fullChargeRate :: Double
    descreasingChargeTime = capacity * 0.1 / descreasingChargeRate :: Double
    trickleChargeTime = capacity * 0.05 / trickleChargeRate :: Double
