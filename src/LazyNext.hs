module LazyNext where

--  https://www.codewars.com/kata/542ebbdb494db239f8000046/train/haskell

--best practice:
--next :: Eq a => a -> [a] -> Maybe a
--next item = listToMaybe . drop 1 . dropWhile (/=item)

import Data.List (elemIndex)


next :: Eq a => a -> [a] -> Maybe a
next item list = case (elemIndex item list) of
  (Just index) -> byIndex (index + 1) list
  otherwise -> Nothing


byIndex :: Eq a => Int -> [a] -> Maybe a
byIndex index list
  | index > (length list - 1) = Nothing
  | otherwise = Just (list !! index)
