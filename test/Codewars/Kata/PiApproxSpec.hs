module Codewars.Kata.PiApproxSpec where

import Codewars.Kata.PiApprox (iterPi, approxValue)
import Test.Hspec
import Text.Printf (printf)
import Data.Ratio ((%))

testPiApprox :: Double -> (Integer, Double) -> Spec
testPiApprox eps r =
  it (printf "should return Pi approximation with epsilon %f" eps) $
    iterPi eps `shouldBe` r

spec :: Spec
spec = do
  describe "iterPi" $ do
    testPiApprox 0.1 (10, 3.0418396189)
    testPiApprox 0.01 (100, 3.1315929035)
  describe "approxValue" $ do
    it "should return Double" $ do
      approxValue (1 % 1) `shouldBe` 1.0
      approxValue (1 % 2) `shouldBe` 0.5
      approxValue (2 % 2) `shouldBe` 1.0
      approxValue (2 % 1) `shouldBe` 2.0
      approxValue (1 % 4) `shouldBe` 0.25
