module DecipherThis (decipherThis) where

--  https://www.codewars.com/kata/581e014b55f2c52bb00000f8/train/haskell

import Data.Char (chr, isDigit)

decipherThis :: String -> String
decipherThis = unwords . map decipherWord . words

decipherWord :: String -> String
decipherWord word
  | null rest = [chr code]
  | null . init $ rest = chr code : rest
  | otherwise = chr code : last rest : (tail . init $ rest) ++ [second]
  where
    code = read . filter isDigit $ word :: Int
    rest = filter (not . isDigit) word :: String
    second = head rest :: Char
