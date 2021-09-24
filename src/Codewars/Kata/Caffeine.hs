module Codewars.Kata.Caffeine where

-- https://www.codewars.com/kata/5434283682b0fdb0420000e6/train/haskell

caffeineBuzz :: Integer -> String
caffeineBuzz x = start ++ end
  where
    isJava = x `mod` 3 == 0 :: Bool
    isCoffee = isJava && x `mod` 4 == 0 :: Bool

    start
      | isCoffee = "Coffee"
      | isJava = "Java"
      | otherwise = "mocha_missing!"

    end
      | (isJava || isCoffee) && even x = "Script"
      | otherwise = ""
