module Codewars.G964.BrakingSpec (spec, main) where

import Codewars.G964.Braking (dist, speed)
import Control.Monad (when)
import Test.Hspec
import Test.Hspec.Codewars
import Test.QuickCheck
import Text.Printf (printf)

infix 1 `shouldBeFuzzy`

shouldBeFuzzy = shouldBeApproxPrec 1e-2

testBrakingDist :: Double -> Double -> Double -> Spec
testBrakingDist v mu u =
  it (printf "should return dist for v: %.2f mu: %.2f " v mu) $
    dist v mu `shouldBeFuzzy` u

testBrakingSpeed :: Double -> Double -> Double -> Spec
testBrakingSpeed d mu u =
  it (printf "should return speed for d: %.2f mu: %.2f " d mu) $
    speed d mu `shouldBeFuzzy` u

main = hspec spec

spec = do
  describe "dist and speed" $ do
    testBrakingDist 144 0.3 311.83
    testBrakingDist 92 0.5 92.12
    testBrakingDist 142 0.2 435.94
    testBrakingDist 96 0.2 207.88

    testBrakingSpeed 159 0.8 153.79
    testBrakingSpeed 164 0.7 147.91
    testBrakingSpeed 153 0.7 142.14
    testBrakingSpeed 88 0.9 113.64
