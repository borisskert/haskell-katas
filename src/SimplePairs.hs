module SimplePairs where 

--  https://www.codewars.com/kata/5a3e1319b6486ac96f000049/train/haskell

pairs :: [Int] -> Int 
pairs = length . filter areConsecutive . toPairs


toPairs :: [Int] -> [(Int, Int)]
toPairs [] = []
toPairs [_] = []
toPairs (x:y:others) = (x, y) : toPairs others


areConsecutive :: (Int, Int) -> Bool
areConsecutive (x, y) = abs (x - y) == 1
