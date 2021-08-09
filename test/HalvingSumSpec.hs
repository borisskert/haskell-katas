module HalvingSumSpec (spec) where

import Test.Hspec
import HalvingSum (halvingSum)

spec :: Spec
spec = do
  it "Basic tests" $ do
    halvingSum 25 `shouldBe` 47
    halvingSum 127 `shouldBe` 247
    halvingSum 38 `shouldBe` 73
    halvingSum 1 `shouldBe` 1
    halvingSum 320 `shouldBe` 638
    halvingSum 13 `shouldBe` 23
    halvingSum 15 `shouldBe` 26
    halvingSum 47 `shouldBe` 89
    halvingSum 101 `shouldBe` 198
    halvingSum 257 `shouldBe` 512
