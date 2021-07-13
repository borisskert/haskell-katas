module CountCubesSpec (spec) where

import Test.Hspec
import CountCubes (count)

spec :: Spec
spec = do
  it "example tests" $ do
    count 0 `shouldBe` 1
    count 1 `shouldBe` 8
    count 2 `shouldBe` 26
    count 3 `shouldBe` 56
    count 4 `shouldBe` 98
    count 5 `shouldBe` 152
    count 16 `shouldBe` 1538
    count 23 `shouldBe` 3176
