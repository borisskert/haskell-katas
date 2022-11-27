module Codewars.G964.SimpsonSpec where

import Codewars.G964.Simpson (simpson)
import Control.Monad (when)
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

shouldBeFuzzy :: Double -> Double -> Expectation
shouldBeFuzzy act expec =
  when (abs (act - expec) >= 1e-10) $ expectationFailure msg
  where
    msg = "At 1e-10: Expected value must be " ++ show expec ++ " but got: " ++ show act

testSimpson :: Int -> Double -> Spec
testSimpson n u =
  it (printf "should return simpson for n: %d " n) $
    simpson n `shouldBeFuzzy` u

spec :: Spec
spec = do
  describe "simpson" $ do
    testSimpson 2 pi
    testSimpson 290 1.9999999986
    testSimpson 72 1.9999996367
    testSimpson 252 1.9999999975
    testSimpson 40 1.9999961668
