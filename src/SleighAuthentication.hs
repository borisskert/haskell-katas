module SleighAuthentication where

--  https://www.codewars.com/kata/52adc142b2651f25a8000643/train/haskell

authenticate :: String -> String -> Bool
authenticate "Santa Claus" password = password == "Ho Ho Ho!"
authenticate _ _ = False
