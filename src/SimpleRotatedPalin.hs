module SimpleRotatedPalin where

-- https://www.codewars.com/kata/5a8fbe73373c2e904700008c/train/haskell

solve :: String -> Bool
solve "" = True
solve xs = any ((== True) . check) [1 .. (length xs)]
  where
    check :: Int -> Bool
    check index =
      all isPalindrom [left, right]
        && any (even . length) [left, right]
      where
        palindromes = splitAt index xs :: ([Char], [Char])

        left = fst palindromes
        right = snd palindromes

        isPalindrom :: String -> Bool
        isPalindrom [] = True
        isPalindrom xs = (== xs) . reverse $ xs


-- interresting solution:
-- import Data.List (inits, tails)

-- solve :: String -> Bool
-- solve = any ((==) <*> reverse) . (zipWith (++) <$> tails <*> inits)
