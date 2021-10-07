module PowersSpec (spec) where

import Powers (powers)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    powers 1 `shouldBe` [1]
    powers 2 `shouldBe` [2]
    powers 5 `shouldBe` [1, 4]
    powers 6 `shouldBe` [2, 4]
    powers 7 `shouldBe` [1, 2, 4]
    powers 602601091500320 `shouldBe` [32, 256, 2048, 68719476736, 4398046511104, 35184372088832, 562949953421312]
