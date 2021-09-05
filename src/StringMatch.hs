module StringMatch where 

-- https://www.codewars.com/kata/59ca8e8e1a68b7de740001f4/train/haskell

solve :: [String] -> [String] -> [Int]
solve xs = map (count xs)
  where
    count :: [String] -> String -> Int
    count [] _ = 0
    count texts search
      | head texts == search = (+ 1) $ count (tail texts) search
      | otherwise = count (tail texts) search
