module MaxSum (maxSum) where

import MaxSumPreload

-- https://www.codewars.com/kata/57e5279b7cf1aea5cf000359/train/haskell

maxSum :: TreeNode -> Int
maxSum None = 0
maxSum (Leaf n) = n
maxSum (Node a x b) = maximum [x + maxSum a, x + maxSum b]
