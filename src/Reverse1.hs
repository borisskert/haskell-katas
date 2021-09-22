module Reverse1 where

--  https://www.codewars.com/kata/5259b20d6021e9e14c0010d4/train/haskell

reverseWords :: String -> String
reverseWords = concat . map reverse . splitOn ' '


splitOn :: Char -> String -> [String]
splitOn _ [] = []
splitOn separator text = _splitOnRecursively separator "" "" text
  where
    _splitOnRecursively :: Char -> String -> String -> String -> [String]
    _splitOnRecursively _ "" currentWord "" = [currentWord]
    _splitOnRecursively _ currentSeparator "" "" = [currentSeparator]
    _splitOnRecursively separator "" currentSeparator text
      | head text == separator = _splitOnRecursively separator "" (separator : currentSeparator) (tail text)
      | otherwise = [currentSeparator] ++ (_splitOnRecursively separator [head text] "" (tail text))
    _splitOnRecursively separator currentWord "" text
      | head text == separator = [currentWord] ++ (_splitOnRecursively separator "" [separator] (tail text))
      | otherwise = _splitOnRecursively separator (currentWord ++ [head text]) "" $ tail text
