module OddCubed.JorgeVS.Kata where

--  https://www.codewars.com/kata/580dda86c40fa6c45f00028a/train/haskell

oddCubed :: [Int] -> Int
oddCubed = sum . filter odd . map (^3)
