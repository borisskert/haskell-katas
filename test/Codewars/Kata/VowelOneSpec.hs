module Codewars.Kata.VowelOneSpec where

import Codewars.Kata.VowelOne
import Test.Hspec

spec :: Spec
spec = do
  describe "vowelOne" $ do
    it "should work for some examples" $ do
      vowelOne "vowelOne" `shouldBe` "01010101"
      vowelOne "123, arou" `shouldBe` "000001011"
