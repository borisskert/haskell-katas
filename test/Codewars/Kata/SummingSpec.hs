module Codewars.Kata.SummingSpec where
import Codewars.Kata.Summing (f)
import Test.Hspec

spec :: Spec
spec = do
  describe "summing" $ do
    it "should work for some examples" $ do
      f        10  5 `shouldBe`         20
      f       100  2 `shouldBe`         50
      f 123456789 69 `shouldBe` 4197530541
      f 5 3 `shouldBe` 6
