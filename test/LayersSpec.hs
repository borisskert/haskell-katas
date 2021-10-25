module LayersSpec where

import Test.Hspec
import Layers

spec :: Spec
spec = do
  describe "it finds the layers, it does my precious" $ do
    it "on a few fixed cases" $ do
      layers 1 `shouldBe` 1
      layers 2 `shouldBe` 2
      layers 3 `shouldBe` 2
      layers 4 `shouldBe` 2
      layers 5 `shouldBe` 2
      layers 6 `shouldBe` 2
      layers 7 `shouldBe` 2
      layers 8 `shouldBe` 2
      layers 9 `shouldBe` 2
      layers 10 `shouldBe` 3
      layers 11 `shouldBe` 3
      layers 12 `shouldBe` 3
      layers 13 `shouldBe` 3
      layers 14 `shouldBe` 3
      layers 15 `shouldBe` 3
      layers 16 `shouldBe` 3
      layers 17 `shouldBe` 3
      layers 18 `shouldBe` 3
      layers 19 `shouldBe` 3
      layers 20 `shouldBe` 3
      layers 21 `shouldBe` 3
      layers 22 `shouldBe` 3
      layers 23 `shouldBe` 3
      layers 24 `shouldBe` 3
      layers 25 `shouldBe` 3
      layers 26 `shouldBe` 4
      layers 27 `shouldBe` 4
      layers 28 `shouldBe` 4
      layers 29 `shouldBe` 4
      layers 30 `shouldBe` 4
      layers 31 `shouldBe` 4
      layers 32 `shouldBe` 4
      layers 33 `shouldBe` 4
      layers 34 `shouldBe` 4
      layers 35 `shouldBe` 4
      layers 36 `shouldBe` 4
      layers 37 `shouldBe` 4
      layers 38 `shouldBe` 4
      layers 39 `shouldBe` 4
      layers 40 `shouldBe` 4
      layers 41 `shouldBe` 4
      layers 42 `shouldBe` 4
      layers 43 `shouldBe` 4
      layers 44 `shouldBe` 4
      layers 45 `shouldBe` 4
      layers 46 `shouldBe` 4
      layers 47 `shouldBe` 4
      layers 48 `shouldBe` 4
      layers 49 `shouldBe` 4
      layers 50 `shouldBe` 5
      layers 51 `shouldBe` 5
