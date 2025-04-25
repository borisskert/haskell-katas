module EvenLast (evenLast) where

-- https://www.codewars.com/kata/5a1a9e5032b8b98477000004/train/haskell

evenLast :: [Int] -> Int
evenLast [] = 0
evenLast xs = (multiplier *) . sum . map fst . filter (even . snd) . zip xs . cycle $ [0, 1]
  where
    multiplier = last xs
