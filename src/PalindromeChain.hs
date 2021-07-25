module PalindromeChain (palindromeChainLength) where

--  https://www.codewars.com/kata/525f039017c7cd0e1a000a26/train/haskell

palindromeChainLength :: Integer -> Integer
palindromeChainLength number
  | isPalindrome number = 0
  | otherwise = (+) 1 $ palindromeChainLength $ (+) number $ reverseNumber number


isPalindrome :: Integer -> Bool
isPalindrome number = go $ show number
  where
    go :: [Char] -> Bool
    go [] = True
    go [_] = True
    go numberAsText
      | head numberAsText == (last numberAsText) = go $ tail $ init numberAsText
      | otherwise = False


reverseNumber :: Integer -> Integer
reverseNumber = read . reverse . show
