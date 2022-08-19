module PianoNrOne.JorgeVS.Kata where

--  https://www.codewars.com/kata/589273272fab865136000108/train/haskell

blackOrWhiteKey :: Int -> String
blackOrWhiteKey = (keys !!) . (`mod` 88) . (+ negate 1)
  where
    keys =
      take 88
        . (["white", "black"] ++)
        . cycle
        $ ["white", "white", "black", "white", "black", "white", "white", "black", "white", "black", "white", "black"]
