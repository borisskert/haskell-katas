module Codewars.Kata.NegativeSpec where
import Codewars.Kata.Negative (makeNegative)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "makeNegative" $ do
    it "example test" $ do
      makeNegative (42) `shouldBe` (-42)
    it "should not touch negative number" $ do
      makeNegative (-42) `shouldBe` (-42)
