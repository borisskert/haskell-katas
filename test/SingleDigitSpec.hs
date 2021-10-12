module SingleDigitSpec (spec) where

import SingleDigit (singleDigit)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    singleDigit 5665 `shouldBe` 5
    singleDigit 123456789 `shouldBe` 1
