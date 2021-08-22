module SimpleStrChar where 
import Data.Char(isUpper,isLower,isDigit)

-- https://www.codewars.com/kata/5a29a0898f27f2d9c9000058/train/haskell

solve :: [Char] -> [Int] 
solve xs = [upperCaseLetters, lowerCaseLetters, numbers, specials]
  where
    upperCaseLetters = length . filter isUpper $ xs
    lowerCaseLetters = length . filter isLower $ xs
    numbers = length . filter isDigit $ xs
    specials = length xs - upperCaseLetters - lowerCaseLetters - numbers
