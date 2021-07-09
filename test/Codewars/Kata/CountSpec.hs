module Codewars.Kata.CountSpec where
import Codewars.Kata.Count (countBy)
import Test.Hspec

spec :: Spec
spec = do
  describe "countBy" $ do
    it "should work for some examples" $ do
      countBy 1 5 `shouldBe` [1..5]
      countBy 2 5 `shouldBe` [2,4,6,8,10]
