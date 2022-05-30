module Codewars.Kata.LongestPalindrome where

--  https://www.codewars.com/kata/54bb6f887e5a80180900046b/train/haskell

longestPalindrome :: Eq a => [a] -> Int
longestPalindrome [] = 0
longestPalindrome cs = maximum . concatMap (palindromeLengthsAt 0) $ [0 .. (length cs - 1)]
  where
    palindromeLengthsAt :: Int -> Int -> [Int]
    palindromeLengthsAt pLength index = [oddPalindromeLengthAt pLength index, evenPalindromeLengthAt pLength index]

    oddPalindromeLengthAt :: Int -> Int -> Int
    oddPalindromeLengthAt pLength index
      | leftIndex >= 0 && rightIndex < length cs - 1 && left == right = oddPalindromeLengthAt (pLength + 1) index
      | otherwise = pLength * 2 + 1
      where
        leftIndex = index - pLength - 1
        rightIndex = index + pLength + 1
        left = cs !! leftIndex
        right = cs !! rightIndex

    evenPalindromeLengthAt :: Int -> Int -> Int
    evenPalindromeLengthAt pLength index
      | leftIndex >= 0 && rightIndex < length cs && left == right = evenPalindromeLengthAt (pLength + 1) index
      | otherwise = pLength * 2
      where
        leftIndex = index - pLength
        rightIndex = index + pLength + 1
        left = cs !! leftIndex
        right = cs !! rightIndex

-- Best practice:
-- longestPalindrome = maximum . map length . filter (\s -> s == reverse s) . concatMap tails . inits
