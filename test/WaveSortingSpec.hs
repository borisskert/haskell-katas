module WaveSortingSpec (spec) where

import Data.List (sort)
import Kata.WaveSort (waveSort)
import Preloaded (isWaveSorted)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  it "fixed tests" $ do
    isWaveSorted (waveSort [1, 2, 34, 4, 5, 5, 5, 65, 6, 65, 5454, 4]) `shouldBe` True
  it "random tests" $ do
    property $ \xs -> do
      let actual = waveSort xs :: [Int]
      length actual `shouldBe` length xs
      sort actual `shouldBe` sort xs
      isWaveSorted actual `shouldBe` True
