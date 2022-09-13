module Hofstadter where

--  https://www.codewars.com/kata/53a1eac7e0afd3ad3300008b/train/haskell

f :: Int -> Int
f n = (!! n) . map toF $ [0 ..]
  where
    toF 0 = 1
    toF x = x - m (f (x - 1))

m :: Int -> Int
m n = (!! n) . map toM $ [0 ..]
  where
    toM 0 = 0
    toM x = x - f (m (x - 1))
