module ThinkingAndTesting (testIt) where

-- https://www.codewars.com/kata/5a90c9ecb171012b47000077/train/haskell

import Data.Char (digitToInt)

testIt :: Int -> Int -> Int
testIt a b = product . map crosssum $ [a, b]

crosssum :: Int -> Int
crosssum = sum . digits

digits :: Int -> [Int]
digits = map digitToInt . show
