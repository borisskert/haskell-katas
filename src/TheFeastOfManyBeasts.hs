module TheFeastOfManyBeasts where

-- https://www.codewars.com/kata/5aa736a455f906981800360d/train/haskell

feast :: String -> String -> Bool
feast beast dish = head beast == head dish && last beast == last dish
