module Codewars.G964.Movie where

--  https://www.codewars.com/kata/562f91ff6a8b77dfe900006e/train/haskell


movie :: Int -> Int -> Double -> Int
movie 0 _ _ = 2
movie card ticket perc = search (-card) (0.0, fromIntegral ticket)
  where
    search :: Int -> (Double, Double) -> Int
    search systemA systemB
      | systemA > round sumB = 0
      | otherwise = 1 + search (systemA + ticket) (sumB + ticketB, ticketB)
      where
        sumB = fst systemB
        ticketB = snd systemB * perc
