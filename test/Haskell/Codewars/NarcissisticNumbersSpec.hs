module Haskell.Codewars.NarcissisticNumbersSpec where
import Haskell.Codewars.NarcissisticNumbers
import Test.Hspec


spec :: Spec
spec = do
  describe "Example Tests" $ do
    it "153" $ isNarcissistic 153 `shouldBe` True
    it "143" $ isNarcissistic 143 `shouldBe` False
    it "1634" $ isNarcissistic 1634 `shouldBe` True
    it "115132219018763992565095597973971522401" $ isNarcissistic 115132219018763992565095597973971522401 `shouldBe` True
