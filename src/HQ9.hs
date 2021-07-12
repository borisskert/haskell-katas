module HQ9 where

--  https://www.codewars.com/kata/591588d49f4056e13f000001/train/haskell

import Data.List (intercalate)

  
hq9 :: String -> String
hq9 "H" = "Hello World!"
hq9 "Q" = "Q"
hq9 "9" = allPhrases 99
hq9 _ = ""


allPhrases :: Int -> String
allPhrases max = phrases [max, (max -1) .. 1] ++ ", no more bottles of beer on the wall.\nNo more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, " ++ show max ++ " bottles of beer on the wall."


phrases :: [Int] -> String
phrases bottles = concat (map phrase bottles)


phrase :: Int -> String
phrase 1 = ", 1 bottle of beer on the wall.\n1 bottle of beer on the wall, 1 bottle of beer.\nTake one down and pass it around"
phrase 99 = "99 bottles of beer on the wall, 99 bottles of beer.\nTake one down and pass it around"
phrase bottles = ", " ++ show bottles ++ " bottles of beer on the wall.\n" ++ show bottles ++ " bottles of beer on the wall, " ++ show bottles ++ " bottles of beer.\nTake one down and pass it around"
