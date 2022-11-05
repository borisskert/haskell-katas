module IsOddHeavySpec where

import IsOddHeavy
import Test.Hspec

spec :: Spec
spec = do
  describe "Is Odd-Heavy" $ do
    it "Basic tests" $ do
      isOddHeavy [0, 2, 19, 4, 4] `shouldBe` True
      isOddHeavy [1, -2, -1, 2] `shouldBe` False
      isOddHeavy [] `shouldBe` False
      isOddHeavy [11, 4, 9, 2, 3, 10] `shouldBe` False
      isOddHeavy [0, 0, 0, 0] `shouldBe` False
      isOddHeavy [1, 1, 1] `shouldBe` True
