module HowGoodAreYouSpec (spec) where

import Test.Hspec
import HowGoodAreYou

spec :: Spec
spec = do
  it "basic tests" $ do
    betterThanAverage [2, 3] 5 `shouldBe` True
    betterThanAverage [100, 40, 34, 57, 29, 72, 57, 88] 75 `shouldBe` True
    betterThanAverage [12, 23, 34, 45, 56, 67, 78, 89, 90] 69 `shouldBe` True
    betterThanAverage [12, 23, 34, 45, 56, 67, 78, 89, 90] 55 `shouldBe` True
    betterThanAverage [12, 23, 34, 45, 56, 67, 78, 89, 90] 54 `shouldBe` False
