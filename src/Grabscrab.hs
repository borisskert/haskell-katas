module Grabscrab where

--  https://www.codewars.com/kata/52b305bec65ea40fe90007a7/train/haskell

import Data.List (sort)

grabScrab :: String -> [String] -> [String]
grabScrab x = filter (\w -> sort w == sorted)
  where
    sorted = sort x
