module PasswordMaker where

-- https://www.codewars.com/kata/5637b03c6be7e01d99000046/train/haskell

makePassword :: String -> String
makePassword = map (encode . head) . words
  where
    encode :: Char -> Char
    encode 'o' = '0'
    encode 'O' = '0'
    encode 'i' = '1'
    encode 'I' = '1'
    encode 's' = '5'
    encode 'S' = '5'
    encode c = c
