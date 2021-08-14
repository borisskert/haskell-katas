module SF153 where

--  https://www.codewars.com/kata/58acfe4ae0201e1708000075/train/haskell

inviteMoreWomen :: [Int] -> Bool
inviteMoreWomen = (<) 0 . sum
