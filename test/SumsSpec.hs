module SumsSpec where

import Test.Hspec
import Sums (sumTwoSmallestNumbers)

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    it "sumTwoSmallestNumbers [5,8,12,18,22]" $ do
      sumTwoSmallestNumbers [5,8,12,18,22] `shouldBe` 13
    it "sumTwoSmallestNumbers [7,15,12,18,22]" $ do
      sumTwoSmallestNumbers [7,15,12,18,22] `shouldBe` 19
    it "sumTwoSmallestNumbers [25,42,12,18,22]" $ do
      sumTwoSmallestNumbers [25,42,12,18,22] `shouldBe` 30
