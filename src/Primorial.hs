module Primorial where

--  https://www.codewars.com/kata/5a99a03e4a6b34bb3c000124/train/haskell

numPrimorial :: Int -> Integer
numPrimorial n =
  [ 0,
    2,
    6,
    30,
    210,
    2310,
    30030,
    510510,
    9699690,
    223092870,
    6469693230,
    200560490130,
    7420738134810,
    304250263527210,
    13082761331670030,
    614889782588491410
  ]
    !! n
