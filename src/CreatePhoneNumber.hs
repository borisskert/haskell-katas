module CreatePhoneNumber where

--  https://www.codewars.com/kata/525f50e3b73515a6db000b83/train/haskell

createPhoneNumber :: [Int] -> String
createPhoneNumber xs = "(" ++ prefix ++ ") " ++ mid ++ "-" ++ suffix
  where
    digits = concatMap show xs
    prefix = take 3 digits
    mid = take 3 . drop 3 $ digits
    suffix = drop 6 digits
