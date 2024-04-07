module Change where

-- https://www.codewars.com/kata/541af676b589989aed0009e7/train/haskell

import Data.List (genericLength)

countChange :: Integer -> [Integer] -> Integer
countChange 0 _ = 0
countChange amount cs = genericLength nextAmounts + sum (map (\nextAmount -> countChange nextAmount coins) nextAmounts)
  where
    coins = filter (<= amount) $ cs
    nextAmounts = map (\coin -> amount - coin) $ coins
