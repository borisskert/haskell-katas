module ISBN (toISBN13) where

-- https://www.codewars.com/kata/61ce25e92ca4fb000f689fb0/train/haskell

import Data.Char (digitToInt)
import Data.List (intercalate)
import Data.List.Split (splitOn)

toISBN13 :: String -> String
toISBN13 isbn = intercalate "-" . (++ [checkDigit]) $ isbn13Groups
  where
    isbnGroups = splitOn "-" isbn :: [String]
    isbn13Groups = (["978"] ++) . init $ isbnGroups :: [String]
    digits = map digitToInt . concat $ isbn13Groups :: [Int]
    checksum = (`mod` 10) . sum . zipWith (*) (cycle [1, 3]) $ digits :: Int
    checkDigit :: String
    checkDigit
      | checksum == 0 = "0"
      | otherwise = show (10 - checksum)
