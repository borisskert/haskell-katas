module Piles where

-- https://www.codewars.com/kata/57aae4facf1fa57b3300005d/train/haskell

fourPiles :: Int -> Int -> Maybe (Int, Int, Int, Int)
fourPiles x y
  | y > x = Nothing
  | null solutions = Nothing
  | otherwise = Just . toTuple . head $ solutions
  where
    modes = [(+ y), \i -> i - y, (* y), (`div` y)] :: [Int -> Int]
    solutions =
      filter (not . any (<= 0))
        . filter ((== x) . sum)
        . map (\i -> map (\m -> m i) modes)
        $ [y, (2 * y) .. (x `div` y)] ::
        [[Int]]

    toTuple :: [Int] -> (Int, Int, Int, Int)
    toTuple (a : b : c : d : _) = (a, b, c, d)
