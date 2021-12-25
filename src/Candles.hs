module Candles where

-- https://www.codewars.com/kata/5884731139a9b4b7a8000002/train/haskell

candles :: Int -> Int -> Int
candles candles makeNew = burnDown (candles, 0)
  where
    burnDown :: (Int, Int) -> Int
    burnDown (candles, leftovers)
      | leftovers >= makeNew = burnDown (candles + newCandles, nextLeftovers)
      | candles > 0 = candles + burnDown (0, leftovers + candles)
      | otherwise = 0
      where
        (newCandles, nextLeftovers) = divMod leftovers makeNew
