module CheckVowel where

-- https://www.codewars.com/kata/5a2b7edcb6486a856e00005b/train/haskell

checkVowel :: String -> Int -> Bool
checkVowel xs index
  | index >= length xs = False
  | index < 0 = False
  | otherwise = isVowel . (!! index) $ xs

isVowel :: Char -> Bool
isVowel x = x `elem` "AEIOUaeiou"
