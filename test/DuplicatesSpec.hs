module DuplicatesSpec where

import Duplicates (countDuplicates)
import Test.HUnit
import Test.Hspec

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    it "Returns 0 if there are no duplicates" $ do
      runTest
        ["John", "Beth", "Beth", "Bill"]
        [37, 23, 30, 46]
        [183, 170, 165, 175]
        0
    it "Counts duplicates of one entry" $ do
      runTest
        ["John", "Beth", "Beth", "Beth", "Bill"]
        [37, 23, 23, 23, 46]
        [183, 170, 170, 170, 175]
        2
    it "Counts duplicates from multiple entries" $ do
      runTest
        ["Jack", "Ben", "Jack", "Ben", "Jack", "Jack"]
        [25, 25, 34, 25, 25, 34]
        [180, 180, 200, 180, 180, 200]
        3

runTest :: [String] -> [Int] -> [Int] -> Int -> Expectation
runTest name age height expected = assertEqual msg expected actual
  where
    actual = countDuplicates name age height
    msg = "Test Failed\n  " ++ showInput (name, age, height)

showInput :: ([String], [Int], [Int]) -> String
showInput (n, a, h) = unwords ["countDuplicates", show n, show a, show h]
