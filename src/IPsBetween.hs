module IPsBetween (ipsBetween) where

-- https://www.codewars.com/kata/526989a41034285187000de4/train/haskell

import Data.Function (on)
import Data.List.Split (splitOn)
import Data.Word (Word8)

ipsBetween :: String -> String -> Int
ipsBetween = flip diff `on` parse

type IPv4 = (Word8, Word8, Word8, Word8)

parse :: String -> IPv4
parse xs = (a, b, c, d)
  where
    [a, b, c, d] = map read . splitOn "." $ xs

diff :: IPv4 -> IPv4 -> Int
diff = on (-) toInt32

toInt32 :: IPv4 -> Int
toInt32 (a, b, c, d) = fromIntegral a * 256 ^ 3 + fromIntegral b * 256 ^ 2 + fromIntegral c * 256 + fromIntegral d
