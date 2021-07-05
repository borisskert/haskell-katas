module Codewars.Kata.OppositeSpec where
import Codewars.Kata.Opposite (opposite)
import Test.Hspec

spec :: Spec
spec = do
  describe "opposite" $ do
    it "should work for the examples" $ do
      opposite    1  `shouldBe` (-1)
      opposite   14  `shouldBe` (-14)
      opposite (-34) `shouldBe` 34
