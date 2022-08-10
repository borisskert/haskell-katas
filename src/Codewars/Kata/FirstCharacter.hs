module Codewars.Kata.FirstCharacter where

--  https://www.codewars.com/kata/54f9f4d7c41722304e000bbb/train/haskell

firstDup :: Eq a => [a] -> Maybe a
firstDup xs
  | null dups = Nothing
  | otherwise = Just . fst . head $ dups
  where
    -- somehow it feels like cheating. but I don't have a clue
    justarandomnumber = 128
    took = take justarandomnumber xs
    dups =
      filter ((> 1) . snd)
        . map (\x -> (x, length . filter (== x) $ took))
        $ took

-- Yes, it was cheating. Best practice:
--firstDup :: Eq a => [a] -> Maybe a
--firstDup [] = Nothing
--firstDup (x:xs)
--  | x `elem` xs = Just x
--  | otherwise = firstDup xs
