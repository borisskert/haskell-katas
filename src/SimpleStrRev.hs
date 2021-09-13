module SimpleStrRev where 

-- https://www.codewars.com/kata/5a8d1c82373c2e099d0000ac/train/haskell

solve :: String -> Int -> Int -> String
solve xs a b = begin ++ reversed ++ end
  where
    begin = substring 0 (a - 1) xs
    reversed = reverse . substring a b $ xs
    end = substring (b + 1) (length xs) xs


substring :: Int -> Int -> String -> String
substring begin end = map snd . filter ((\x -> x >= begin && x <= end) . fst) . zip [0..]
