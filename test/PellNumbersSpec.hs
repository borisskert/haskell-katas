module PellNumbersSpec (spec) where

import PellNumbers (pell)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    pell 0 `shouldBe` 0
    pell 1 `shouldBe` 1
    pell 2 `shouldBe` 2
    pell 3 `shouldBe` 5
    pell 4 `shouldBe` 12
