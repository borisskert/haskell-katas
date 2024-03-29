module Collinearity (collinearity) where

-- https://www.codewars.com/kata/65ba420888906c1f86e1e680/train/haskell

import Data.Ratio ((%))

collinearity :: (Int, Int) -> (Int, Int) -> Bool
collinearity (0, 0) _ = True
collinearity _ (0, 0) = True
collinearity (_, 0) (_, 0) = True
collinearity (_, 0) _ = False
collinearity _ (_, 0) = False
collinearity (x1, y1) (x2, y2) = x1 % y1 == x2 % y2

-- best practice:
-- collinearity (x1, y1) (x2, y2) = x1 * y2 == x2 * y1
