module PossibilitiesOfThrowingACoinNTimesSpec (spec) where

import PossibilitiesOfThrowingACoinNTimes (coin)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    coin 1 `shouldBe` ["H", "T"]
    coin 2 `shouldBe` ["HH", "HT", "TH", "TT"]
    coin 3 `shouldBe` ["HHH", "HHT", "HTH", "HTT", "THH", "THT", "TTH", "TTT"]
    