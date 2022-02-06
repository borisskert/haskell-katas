module GeometricMean where

-- https://www.codewars.com/kata/56ebcea1b9d927f9bf000544/train/haskell

geometricMean :: [Integer] -> Maybe Double
geometricMean xs
  | tooMuchInvalid = Nothing
  | otherwise = Just . product . map ((`root` n) . fromIntegral) $ xs
  where
    n = length xs

    tooMuchInvalid
      | n <= 10 = invalid > 1
      | otherwise = invalid > n `div` 10
      where
        invalid = length . filter (< 0) $ xs

root :: Double -> Int -> Double
x `root` n = x ** (1 / fromIntegral n)
