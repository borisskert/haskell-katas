module Codewars.SumAndMultiplySpec where

import Codewars.SumAndMultiply
import Test.Hspec

spec :: Spec
spec = do
  describe "Sum and Multiply" $ do
    it "should work for simple examples" $ do
      sumAndMultiply 12 36 `shouldBe` [6, 6]
      sumAndMultiply 6 9 `shouldBe` [3, 3]
      sumAndMultiply 200 8458 `shouldBe` []
      sumAndMultiply 480 956 `shouldBe` [2, 478]
