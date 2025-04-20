module TwoHighestSpec where

import Test.Hspec
import TwoHighest (twoHighest)

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    it "Works for some examples" $ do
      twoHighest [4, 10, 10, 9] `shouldBe` [10, 9]
      twoHighest [1, 1, 1] `shouldBe` [1]
      twoHighest [] `shouldBe` ([] :: [Int])
