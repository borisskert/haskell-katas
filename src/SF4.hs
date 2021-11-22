module SF4 where

-- https://www.codewars.com/kata/588425ee4e8efb583d000088/train/haskell

phoneCall :: Int -> Int -> Int -> Int -> Int
phoneCall min1 min2_10 min11 cents
  | cents < min1 = 0
  | minutes2_10 <= 9.0 = 1 + floor minutes2_10
  | otherwise = 1 + 9 + floor rest
  where
    minutes2_10 = fromIntegral (cents - min1) / fromIntegral min2_10 :: Double
    rest = fromIntegral (cents - (min1 + 9 * min2_10)) / fromIntegral min11 :: Double
