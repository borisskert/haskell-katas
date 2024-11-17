module PipesSpec where

import Pipes (pipeFix)
import Test.Hspec

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    it "Basic Test Cases" $ do
      pipeFix [1, 2, 3, 5, 6, 8, 9] `shouldBe` [1, 2, 3, 4, 5, 6, 7, 8, 9]
      pipeFix [1, 2, 3, 12] `shouldBe` [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
      pipeFix [6, 9] `shouldBe` [6, 7, 8, 9]
      pipeFix [-1, 4] `shouldBe` [-1, 0, 1, 2, 3, 4]
      pipeFix [1, 2, 3] `shouldBe` [1, 2, 3]
