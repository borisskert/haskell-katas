module Codewars.AlanPartridge.PartridgeWatch where

-- https://www.codewars.com/kata/5808c8eff0ed4210de000008/train/haskell

part :: [String] -> String
part xs
  | count > 0 = (++ replicate count '!') $ "Mine's a Pint"
  | otherwise = "Lynn, I've pierced my foot on a spike!!"
  where
    count = length . filter (`elem` alansTerms) $ xs

alansTerms =
  [ "Partridge",
    "PearTree",
    "Chat",
    "Dan",
    "Toblerone",
    "Lynn",
    "AlphaPapa",
    "Nomad"
  ]
