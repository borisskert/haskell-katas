module EvenBeforeFixed (evenNumbersBeforeFixed) where

-- https://www.codewars.com/kata/5912701a89fc3d0a6a000169/train/haskell

import Data.List (elemIndex)
import Data.Maybe (fromMaybe, isJust)

evenNumbersBeforeFixed :: [Int] -> Int -> Maybe Int
evenNumbersBeforeFixed xs fixedElement
  | isJust index = Just . countEven . fromMaybe (-1) $ index
  | otherwise = Nothing
  where
    wIndices = zip [0 ..] xs :: [(Int, Int)]

    index = elemIndex fixedElement xs :: Maybe Int

    countEven :: Int -> Int
    countEven pos =
      length
        . filter (\(_, value) -> even value)
        . filter (\(index, _) -> index < pos)
        $ wIndices
