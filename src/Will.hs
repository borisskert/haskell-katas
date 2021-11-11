module Will where

-- https://www.codewars.com/kata/58844a13aa037ff143000072/train/haskell

willYou :: Bool -> Bool -> Bool -> Bool
willYou young beautiful loved =
  loved && (not beautiful || not young) || young && beautiful && not loved
