module Average where

-- https://www.codewars.com/kata/596f6385e7cd727fff0000d6/train/haskell

avgArray :: [[Int]] -> [Double]
avgArray [] = []
avgArray xs = map ((/ count) . fromIntegral) . summarize $ xs
  where
    count = fromIntegral . length $ xs :: Double

    summarize :: [[Int]] -> [Int]
    summarize [] = []
    summarize xs
      | not . null . concat $ xs = heads : summarize tails
      | otherwise = []
      where
        heads = sum . map head $ xs :: Int
        tails = map tail xs :: [[Int]]
