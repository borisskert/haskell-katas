module Codewars.Kata.MultiplyingSpec where
import Codewars.Kata.Multiplying (multiply)
import Test.Hspec
import Test.QuickCheck

spec = do
  describe "multiply" $ do
    it "should multiply 2 by 3 correctly" $
      multiply 2 3 `shouldBe` 6
