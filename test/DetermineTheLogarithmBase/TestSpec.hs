module DetermineTheLogarithmBase.TestSpec (spec) where

import Test.Hspec
import DetermineTheLogarithmBase.Kata (guessBase)

precision :: Double -> Double -> Double
precision p n = fromIntegral (round (n * 10 ** p)) / 10 ** p

shouldApproximatelyBe :: Double -> Double -> Expectation
a `shouldApproximatelyBe` b = precision 6 a `shouldBe` precision 6 b

spec :: Spec
spec = do
  describe "Determine the logarithm base" $ do
    it "Example tests" $ do
      guessBase log `shouldApproximatelyBe` exp 1
      guessBase (logBase 10) `shouldApproximatelyBe` 10
      guessBase (logBase 2) `shouldApproximatelyBe` 2
      guessBase (logBase 77) `shouldApproximatelyBe` 77
      guessBase (logBase 334856.74914974207) `shouldApproximatelyBe` 334856.74914974207
      guessBase (logBase 55317.00438069386) `shouldApproximatelyBe` 55317.00438069386
