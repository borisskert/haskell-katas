module ConsecutiveVowelsinaString (getTheVowels) where

--  https://www.codewars.com/kata/62a933d6d6deb7001093de16/train/haskell

getTheVowels :: String -> Int
getTheVowels = findVowels . filter isVowel

findVowels :: [Char] -> Int
findVowels [] = 0
findVowels ax = max found nextFound
  where
    found = search ax (cycle vowels)
    nextFound
      | found > 0 = findVowels (drop found ax)
      | otherwise = findVowels (tail ax)

search :: [Char] -> [Char] -> Int
search [] _ = 0
search (a : ax) (b : bx)
  | a == b = 1 + search ax bx
  | otherwise = search ax (b : bx)

isVowel :: Char -> Bool
isVowel x = x `elem` vowels

vowels :: [Char]
vowels = "aeiou"
