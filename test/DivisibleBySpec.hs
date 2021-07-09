module DivisibleBySpec (spec) where

import Test.Hspec
import DivisibleBy (divisibleBy)

spec :: Spec
spec = do
  it "Divisible by 2" $ do
    [2, 5, 8, 16, 17, 19] `divisibleBy` 2 `shouldBe` [2, 8, 16]
  it "Divisible by 3" $ do
    [1, 3, 6, 7, 9, 11, 12, 15, 18] `divisibleBy` 3 `shouldBe` [3, 6, 9, 12, 15, 18]
  it "Divisible by 15" $ do
    [1, 2, 5, 14, 15, 30, 44, 45, 60] `divisibleBy` 15 `shouldBe` [15, 30, 45, 60]
