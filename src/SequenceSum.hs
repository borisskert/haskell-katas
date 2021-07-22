module SequenceSum (sequenceSum) where

--  https://www.codewars.com/kata/586f6741c66d18c22800010a/train/haskell

sequenceSum :: (Integer,Integer,Integer) -> Integer
sequenceSum (begin, end, step) = sum [begin, begin + step .. end]
