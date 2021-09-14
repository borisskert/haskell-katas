module CountSalutes (countSalutes) where

-- https://www.codewars.com/kata/605ae9e1d2be8a0023b494ed/train/haskell

countSalutes :: String -> Int
countSalutes xs = sum . map toSalutes $ withIndices
  where
    withIndices = zip [0..] xs :: [(Int, Char)]

    toSalutes :: (Int, Char) -> Int
    toSalutes (index, value)
      | value == '>' = (* 2) . length . filter ((> index) . fst) . filter ((== '<') . snd) $ withIndices
      | otherwise = 0
