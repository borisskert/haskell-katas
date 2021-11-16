module Gift where

-- https://www.codewars.com/kata/54554846126a002d5b000854/train/haskell

buy :: (Num a, Eq a, Ord a, Show a) => a -> [a] -> Maybe (Int, Int)
buy _ [] = Nothing
buy _ [_] = Nothing
buy card xs
  | sum xs < card = Nothing
  | null candidates = Nothing
  | otherwise =
    Just
      . toIndices
      . head
      $ candidates
  where
    candidates =
      filter isExactlyCard
        . map toValue
        . toPairs
        . withIndices
        $ xs

    withIndices xs = zip [0 ..] xs
    toPairs xs = [(x, y) | x <- xs, y <- xs, fst x < fst y]
    toValue ((i1, v1), (i2, v2)) = (i1, i2, v1 + v2)
    isExactlyCard (_, _, x) = x == card
    toIndices (i1, i2, _) = (i1, i2)
