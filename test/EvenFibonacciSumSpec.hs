module EvenFibonacciSumSpec (spec) where

import EvenFibonacciSum (fibSum)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    fibSum 0 `shouldBe` 0
    fibSum 8 `shouldBe` 2
    fibSum 33 `shouldBe` 10
    fibSum 25997544 `shouldBe` 19544084
