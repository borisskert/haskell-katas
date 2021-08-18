module NumberStrings where 

-- https://www.codewars.com/kata/59dd2c38f703c4ae5e000014/train/haskell

-- best practise:
-- import Data.Char (isDigit)
-- import Data.List.Split (wordsBy)

-- solve :: [Char] -> Int
-- solve = maximum . map read . wordsBy (not . isDigit)


import Data.List (sortOn)
import Data.Ord (Down(..))


solve :: [Char] -> Int
solve = head . sortOn Down . extractNumbers


extractNumbers :: String -> [Int]
extractNumbers = map read . filter (not . null) . splitOn (not . isNumber)


splitOn :: (Char -> Bool) -> String -> [String]
splitOn _ "" = []
splitOn delimiter str = 
    let (start, rest) = break delimiter str
        (_, remain) = span delimiter rest
     in start : splitOn delimiter remain


isNumber :: Char -> Bool 
isNumber char = char `elem` "0123456789"
