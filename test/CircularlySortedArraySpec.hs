module CircularlySortedArraySpec (spec) where

import CircularlySortedArray (isCircleSorted)
import Test.Hspec

spec :: Spec
spec = do
  describe "example tests" $ do
    it "should be True" $ do
      isCircleSorted [2, 3, 4, 5, 0, 1] `shouldBe` True
      isCircleSorted [4, 5, 6, 9, 1] `shouldBe` True
      isCircleSorted [10, 11, 6, 7, 9] `shouldBe` True
      isCircleSorted [1, 2, 3, 4, 5] `shouldBe` True
      isCircleSorted [5, 7, 43, 987, -9, 0] `shouldBe` True
      isCircleSorted ([] :: [Int]) `shouldBe` True
    it "should be False" $ do
      isCircleSorted [4, 1, 2, 5] `shouldBe` False
      isCircleSorted [8, 7, 6, 5, 4, 3] `shouldBe` False
      isCircleSorted [6, 7, 4, 8] `shouldBe` False
      isCircleSorted [7, 6, 5, 4, 3, 2, 1] `shouldBe` False
    it "some random tests" $ do
      isCircleSorted [-4, 4, 2] `shouldBe` False
      isCircleSorted [-17, -17, -7, 13, -28] `shouldBe` True
