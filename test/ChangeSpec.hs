module ChangeSpec where

import Change (countChange)
import Test.Hspec

spec :: Spec
spec = do
  describe "Basic Tests" $ do
    it "countChange 2 [1] => 1" $
      countChange 2 [1] `shouldBe` 1
    it "countChange 2 [1,2] => 2" $
      countChange 2 [1, 2] `shouldBe` 2
    it "countChange 3 [1,2] => 2" $
      countChange 3 [1, 2] `shouldBe` 2
    it "countChange 4 [1,2] => 3" $
      countChange 4 [1, 2] `shouldBe` 3
    it "countChange 4 [2] => 1" $
      countChange 4 [2] `shouldBe` 1
    it "countChange 10 [3,2,4,1] => 23" $
      countChange 10 [3, 2, 4, 1] `shouldBe` 23
    it "countChange 300 [500,5,50,100,20,200,10] => 1022" $
      countChange 300 [500, 5, 50, 100, 20, 200, 10] `shouldBe` 1022
