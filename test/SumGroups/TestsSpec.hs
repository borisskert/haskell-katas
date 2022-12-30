module SumGroups.TestsSpec (spec) where

import SumGroups.Kata (sumGroups)
import Test.Hspec

spec :: Spec
spec = do
  describe "Sum Groups" $ do
    it "Example Tests" $ do
      sumGroups [2, 1, 2, 2, 6, 5, 0, 2, 0, 5, 5, 7, 7, 4, 3, 3, 9] `shouldBe` 6
      sumGroups [2, 1, 2, 2, 6, 5, 0, 2, 0, 3, 3, 3, 9, 2] `shouldBe` 5
      sumGroups [1] `shouldBe` 1
      sumGroups [2] `shouldBe` 1
      sumGroups [1, 2] `shouldBe` 2
      sumGroups [1, 1, 2, 2] `shouldBe` 1
