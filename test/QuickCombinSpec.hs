module QuickCombinSpec where

import Test.Hspec
import QuickCombin

spec :: Spec
spec = do
    describe "does combinations quickly" $ do
        it "a few small fixed cases" $ do
          choose' 1 1 `shouldBe` 1
          choose' 5 4 `shouldBe` 5
          choose' 10 5 `shouldBe` 252
          choose' 10 20 `shouldBe` 0
        it "a few large fixed cases" $ do
          choose' 52 5 `shouldBe` 2598960
          choose' 100 10 `shouldBe` 17310309456440
          choose' 500 4 `shouldBe` 2573031125
          choose' 1000 3 `shouldBe` 166167000
          choose' 200 8 `shouldBe` 55098996177225
          choose' 300 6 `shouldBe` 962822846700
