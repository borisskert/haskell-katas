module InsideOut where

-- https://www.codewars.com/kata/57ebdf1c2d45a0ecd7002cd5/train/haskell

insideOut :: String -> String
insideOut = unwords . map (concat . reverse . splitWord . reverse) . words

splitWord :: String -> [String]
splitWord word
  | even size = (\(a, b) -> a : [b]) splitWord'
  | otherwise = (\(a, b) -> a : [[head b], tail b]) splitWord'
  where
    size = length word
    half = size `div` 2
    splitWord' = splitAt half word

-- #againwhatlearned
-- use `splitPlaces` function from `Data.List.Split` module
-- Examples (from docs)
-- ```
-- splitPlaces [2,3,4] [1..20] == [[1,2],[3,4,5],[6,7,8,9]]
-- splitPlaces [4,9] [1..10] == [[1,2,3,4],[5,6,7,8,9,10]]
-- splitPlaces [4,9,3] [1..10] == [[1,2,3,4],[5,6,7,8,9,10]]
-- ```
--
-- In this kata:
-- ```
-- splitWord :: String -> [String]
-- splitWord word = splitPlaces [half, middle, half] word
--   where
--     (half, middle) = length word `divMod` 2
-- ```
