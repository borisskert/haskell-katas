module Validation (validateEAN) where

-- https://www.codewars.com/kata/55563df50dda59adf900004d/train/haskell

validateEAN :: String -> Bool
validateEAN code = (checksum ==) . (!! 12) $ digits
  where
    digits = map (\c -> read [c] :: Int) code
    checksum = checksumEAN code

checksumEAN :: String -> Int
checksumEAN code
  | prodsum `mod` 10 == 0 = 0
  | otherwise = 10 - (prodsum `mod` 10)
  where
    digits = map (\c -> read [c] :: Int) . take 12 $ code
    prodsum = sum . zipWith (*) digits . cycle $ [1, 3]
