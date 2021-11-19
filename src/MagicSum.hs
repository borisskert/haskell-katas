module MagicSum where 

-- https://www.codewars.com/kata/57193a349906afdf67000f50/train/haskell

magicSum :: [Int] -> Int 
magicSum = sum . filter contains3 . filter odd

contains3 :: Int -> Bool
contains3 = any (== '3') . toDigits

toDigits :: Int -> String
toDigits = show
