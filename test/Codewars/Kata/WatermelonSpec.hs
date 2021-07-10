module Codewars.Kata.WatermelonSpec where
import Codewars.Kata.Watermelon (divide)
import Test.Hspec

spec :: Spec
spec = do
  describe "divide" $ do
    it "should work for some examples" $ do
      divide 1 `shouldBe` False
      divide 2 `shouldBe` False
      divide 3 `shouldBe` False
      divide 4 `shouldBe` True
      divide 5 `shouldBe` False
      divide 6 `shouldBe` True
