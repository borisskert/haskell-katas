module RemoveN (remove) where

--  https://www.codewars.com/kata/57faf7275c991027af000679/train/haskell

remove :: String -> Int -> String
remove sentence 0 = sentence
remove "" _       = ""
remove (first:others) count
  | first == '!' = remove others (count - 1)
  | otherwise    = [first] ++ remove others count
