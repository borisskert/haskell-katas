module BubblesortOnceSpec (spec) where

import BubblesortOnce (bubblesortOnce)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    bubblesortOnce [9, 7, 5, 3, 1, 2, 4, 6, 8] `shouldBe` [7, 5, 3, 1, 2, 4, 6, 8, 9]
    bubblesortOnce [1, 2] `shouldBe` [1, 2]
    bubblesortOnce [2, 1] `shouldBe` [1, 2]
    bubblesortOnce [42] `shouldBe` [42]
    bubblesortOnce [0] `shouldBe` [0]
    bubblesortOnce [0, -1] `shouldBe` [-1, 0]
    bubblesortOnce [4, 2, 1] `shouldBe` [2, 1, 4]
    bubblesortOnce [2, 4, 1] `shouldBe` [2, 1, 4]
