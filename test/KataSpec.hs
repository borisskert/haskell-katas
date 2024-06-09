module KataSpec (spec) where

import Kata (nextHigher)
import Test.Hspec

spec :: Spec
spec = do
  it "basic tests" $ do
    nextHigher 128 `shouldBe` 256
    nextHigher 1 `shouldBe` 2
    nextHigher 1022 `shouldBe` 1279
    nextHigher 127 `shouldBe` 191
    nextHigher 1253343 `shouldBe` 1253359
