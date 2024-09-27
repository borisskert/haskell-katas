module GettingMADSpec (spec) where

import GettingMAD (gettingMAD)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    gettingMAD [-10, 0, -3, 1] `shouldBe` 1
    gettingMAD [0, 0, 0, 0] `shouldBe` 0
    gettingMAD [-570, 542] `shouldBe` 1112
    gettingMAD [-69, -808, 828, 57] `shouldBe` 126
