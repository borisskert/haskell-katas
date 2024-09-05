module CommonElementsSpec where

import CommonElements
import Test.Hspec

spec :: Spec
spec = do
  describe "Common Array Elements" $ do
    it "Basic tests" $ do
      common [1, 2, 3] [5, 3, 2] [7, 3, 2] `shouldBe` 5
      common [1, 2, 2, 3] [5, 3, 2, 2] [7, 3, 2, 2] `shouldBe` 7
