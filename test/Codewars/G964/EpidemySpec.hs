module Codewars.G964.EpidemySpec where

import Codewars.G964.Epidemy (epidemic)
import Control.Monad (when)
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

shouldBeFuzzy :: Int -> Int -> Expectation
shouldBeFuzzy act expect =
  when (abs (act - expect) > 1) $ expectationFailure msg
  where
    msg = "abs(actual - expected) must be <= 1 but expected was " ++ show expect ++ " and got: " ++ show act

testEpid :: Int -> Int -> Double -> Double -> Double -> Double -> Int -> Spec
testEpid tm n s0 i0 b a u =
  it (printf "should return epidemic for tm n s0 i0 b a : %d %d %f %f %f %f --> %d " tm n s0 i0 b a u) $
    epidemic tm n s0 i0 b a `shouldBeFuzzy` u

spec :: Spec
spec = do
  describe "epidemic" $ do
    testEpid 18 432 1004 1 0.00209 0.51 420
    testEpid 12 288 1007 2 0.00206 0.45 461
    testEpid 13 312 999 1 0.00221 0.55 409
    testEpid 24 576 1005 1 0.00216 0.45 474
    testEpid 24 576 982 1 0.00214 0.44 460
    testEpid 20 480 1000 1 0.00199 0.53 386
    testEpid 28 672 980 1 0.00198 0.44 433
    testEpid 14 336 996 2 0.00206 0.41 483
    testEpid 13 312 993 2 0.0021 0.51 414
    testEpid 28 672 999 1 0.00197 0.55 368
