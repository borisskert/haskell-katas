module Hand where

--  https://www.codewars.com/kata/5574835e3e404a0bed00001b/train/haskell

getParticipants :: Int -> Int
getParticipants 0 = 0
getParticipants x = (ceiling :: Double -> Int) (0.5 + sqrt (0.25 + 2 * fromIntegral x))
