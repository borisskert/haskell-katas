module KataSpec (spec) where

import Test.Hspec
import Kata (past)

spec :: Spec
spec = do
  it "basic tests" $ do
    past 0 1 1 `shouldBe` 61000
    past 1 1 1 `shouldBe` 3661000
    past 0 0 0 `shouldBe` 0
    past 1 0 1 `shouldBe` 3601000
    past 1 0 0 `shouldBe` 3600000
