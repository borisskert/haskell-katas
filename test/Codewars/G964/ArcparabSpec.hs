module Codewars.G964.ArcparabSpec where

import Codewars.G964.Arcparab (lenCurve)
import Control.Monad (when)
import Data.List
import Test.Hspec
import Test.Hspec.QuickCheck
import Test.QuickCheck
import Text.Printf (printf)

shouldBeFuzzy :: Double -> Double -> Expectation
shouldBeFuzzy a e =
  when (abs ((a - e) / e) >= 1e-06) $ expectationFailure msg
  where
    msg = "At 1e-06: Expected value must be near " ++ show e ++ " but got: " ++ show a

testlenCurve :: Integer -> Double -> Spec
testlenCurve n u =
  it (printf "should return lenCurve for n: %s " (show n)) $
    lenCurve n `shouldBeFuzzy` u

spec :: Spec
spec = do
  describe "lenCurve" $ do
    testlenCurve 1 1.414213562
    testlenCurve 10 1.478197397
    testlenCurve 40 1.478896272
    testlenCurve 200 1.478940994
    testlenCurve 1200 1.478942805
    testlenCurve 10000 1.478942856
    testlenCurve 10643 1.478942856
    testlenCurve 100000 1.478942857
