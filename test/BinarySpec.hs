module BinarySpec where

import Binary (toBinary)
import Test.Hspec

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    it "toBinary 1" $ toBinary 1 `shouldBe` 1
    it "toBinary 2" $ toBinary 2 `shouldBe` 10
    it "toBinary 3" $ toBinary 3 `shouldBe` 11
    it "toBinary 5" $ toBinary 5 `shouldBe` 101
