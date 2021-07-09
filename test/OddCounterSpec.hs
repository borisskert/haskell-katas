module OddCounterSpec where

import OddCounter
import Test.Hspec

spec :: Spec
spec = do
  it "Basic tests" $ do
    oddCount 15 `shouldBe` 7
    oddCount 15023 `shouldBe` 7511
