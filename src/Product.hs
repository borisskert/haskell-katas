module Product where

-- https://www.codewars.com/kata/5a905c2157c562994900009d/train/haskell

productArray :: [Integer] -> [Integer]
productArray xs = map toProduct withIndices
  where
    withIndices = zip [1..] xs :: [(Int, Integer)]

    toProduct :: (Int, Integer) -> Integer
    toProduct (index, _) = product . map snd . filter ((/= index). fst) $ withIndices
