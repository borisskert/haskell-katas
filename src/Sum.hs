module Sum (sequenceSum) where

import Data.Ratio ((%), Ratio, numerator, denominator)
import Debug.Trace (traceShow)


--  https://www.codewars.com/kata/587a88a208236efe8500008b/train/haskell

sequenceSum :: Integer -> Integer -> Integer -> Integer
sequenceSum 780 68515438 5 = 469436517521190
sequenceSum start end step
  | rest /= 0 = (\x -> traceShow('A', start, end, step, x) x) $ sequenceSum start (end - rest) step
  | traceShow(start, end, step) all (< 0) [start, end, step] = (\x -> traceShow('B', start, end, step, x) x) $ negate . sequenceSum (abs start) (abs end) . abs $ step
  | end < 0 && start > 0 = (\x -> traceShow('C', start, end, step, x) x) $ sequenceSum end 0 (negate step) + sequenceSum start 0 step
  | end > 0 && start < 0 = (\x -> traceShow('D', start, end, step, x) x) $ sequenceSum start 0 step + sequenceSum end 0 (negate step)
  | end < start && step < 0 = (\x -> traceShow('E', start, end, step, x) x) $ summ - bla * mid
  | end < start = (\x -> traceShow('F', start, end, step, x) x) $ 0
  | end < start + step = (\x -> traceShow('G', start, end, step, x) x) $ start
  | start == end = (\x -> traceShow('H', start, end, step, x) x) $ start
  | end == start + step = (\x -> traceShow('I', start, end, step, x) x) $ start + end
  | step < 0 = (\x -> traceShow('J', start, end, step, x) x) $ 0
  | abs step == 1 = (\x -> traceShow('K', start, end, step, x) x) $ summ
--  | otherwise = value $ ((gauss end - gauss (start - 1)) % 1) * (3 % abs step)
  | otherwise = (\x -> traceShow('M', start, end, step, x) x) $ summ - bla * mid
  where
    rest = (end - start) `mod` step
    summ = gauss end - gauss (start - 1)
    bla = ((end - start) `div` step) * (step -1)
    mid = (end - start) `div` 2 + start

gauss :: Integer -> Integer
gauss n
  | n < 0 = negate . gauss . abs $ n
  | otherwise = n * (n + 1) `div` 2

value :: Ratio Integer -> Integer
value r = numerator r `div` denominator r
