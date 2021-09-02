module SignChangeSpec where

import SignChange (count)
import Test.Hspec

spec = do
  it "example tests" $ do
    count [1, 3, 4, 5] `shouldBe` 0
    count [1, -3, -4, 0, 5] `shouldBe` 2
    count [] `shouldBe` 0
    count [-47, 84, -30, -11, -5, 74, 77] `shouldBe` 3
    count [0, -1] `shouldBe` 1
    count [0, 0, -1] `shouldBe` 1
    count [-1, 0] `shouldBe` 1
    count [0, 0] `shouldBe` 0
    count [-1, 0, -1] `shouldBe` 2
    count [1, 0] `shouldBe` 0
    count [0, 1] `shouldBe` 0
    count [0, 0, 1] `shouldBe` 0
    count [0, 1, 0] `shouldBe` 0
    count [1, 0, 0] `shouldBe` 0
    count [1, 0, 1] `shouldBe` 0
    count [0,-1,0] `shouldBe` 2
