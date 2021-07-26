module Codewars.G964.Gps1Spec where
import Codewars.G964.Gps1 (gps)
import Control.Monad (when)

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

shouldBeFuzzy :: Int -> Int -> Expectation
shouldBeFuzzy act expect =
    when (abs (act - expect) > 1) $ expectationFailure msg
  where msg = "abs(actual - expected) must be <= 1 but expected was " ++ show expect ++ " and got: " ++ show act
  
testGps :: Int -> [Double] -> Int -> Spec
testGps s x u = 
    it (printf "should return gps for s x : %d %s  --> %d \n" s (show x) u) $
        gps s x `shouldBeFuzzy` u

spec :: Spec
spec = do
    describe "gps" $ do
        let x = [0.0, 0.19, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0, 2.25]
        let s = 15
        testGps s x 74        
        let x = [0.0, 0.23, 0.46, 0.69, 0.92, 1.15, 1.38, 1.61]
        let s = 20
        testGps s x 41
        let x = [0.0, 0.11, 0.22, 0.33, 0.44, 0.65, 1.08, 1.26, 1.68, 1.89, 2.1, 2.31, 2.52, 3.25]
        let s = 12
        testGps s x 219
        let x = [0.0, 0.18, 0.36, 0.54, 0.72, 1.05, 1.26, 1.47, 1.92, 2.16, 2.4, 2.64, 2.88, 3.12, 3.36, 3.6, 3.84]
        let s = 20
        testGps s x 80
        let x = [0.0, 0.02, 0.36, 0.54, 0.72, 0.9, 1.08, 1.26, 1.44, 1.62, 1.8]
        let s = 17
        testGps s x 72
        let x = [0.0, 0.24, 0.48, 0.72, 0.96, 1.2, 1.44, 1.68, 1.92, 2.16, 2.4]
        let s = 12
        testGps s x 72
        let x = [0.0, 0.02, 0.44, 0.66, 0.88, 1.1, 1.32, 1.54, 1.76]
        let s = 17
        testGps s x 88
        let x = [0.0, 0.2, 0.4, 0.6, 0.8, 1.0, 1.32, 1.54, 1.76, 1.98, 2.2, 2.42, 2.76, 2.99, 3.22, 3.45]
        let s = 16
        testGps s x 76
        let x = [0.0, 0.01, 0.36, 0.75, 1.0, 1.25, 1.5, 1.75, 2.0, 2.25, 2.5, 2.75, 3.0, 3.25, 3.5, 3.75, 4.0, 4.25, 4.5, 4.75]
        let s = 17
        testGps s x 82
        let x = [0.0, 0.2, 0.4, 0.69, 0.92, 1.15, 1.38, 1.61, 1.92, 2.16, 2.4, 2.64, 2.88, 3.12, 3.36]
        let s = 19
        testGps s x 58
        let x = []
        let s = 15
        testGps s x 0
        let x = [0.5]
        let s = 15
        testGps s x 0
