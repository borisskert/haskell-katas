module Product2 where

-- https://www.codewars.com/kata/5901f361927288d961000013/train/haskell

product' :: [Integer] -> Maybe Integer
product' [] = Nothing
product' xs = Just (product xs)
