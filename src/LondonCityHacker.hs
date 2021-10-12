module LondonCityHacker (londonCityHacker) where

-- https://www.codewars.com/kata/5bce125d3bb2adff0d000245/train/haskell

import LondonCityHacker.Preloaded (Journey(..))
import Data.List.Split (splitWhen)
import Text.Printf (printf)


londonCityHacker :: [Journey] -> String
londonCityHacker journey = formatPrice $ busPrice + tubePrice
  where
    formatPrice :: Double -> String
    formatPrice = ("£" ++) . printf "%.2f"

    tubeTicket = 2.40 :: Double
    busTicket = 1.50 :: Double

    tubePrice = (* tubeTicket) . fromIntegral . length . filter (not . isBus) $ journey :: Double

    busPrice = sum . map bussesToPrice . filter (not . null) . splitWhen (not . isBus) $ journey :: Double

    bussesToPrice :: [Journey] -> Double
    bussesToPrice xs
      | even count = (* busTicket) . fromIntegral . (`div` 2) $ count
      | otherwise = (* busTicket) . fromIntegral . (+ 1) . (`div` 2) $ count
      where
        count = length . filter isBus $ xs :: Int

    isBus :: Journey -> Bool
    isBus (Bus x) = True
    isBus _ = False
