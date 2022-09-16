module Codewars.G964.BankerplanSpec (spec, main) where

import Codewars.G964.Bankerplan (fortune)
import Test.Hspec
import Text.Printf (printf)

testFortune :: Int -> Double -> Int -> Int -> Double -> Bool -> Spec
testFortune f0 p c0 n i u =
  it (printf "should return fortune for f0 p c0 n i : %d %s %d %d %s --> %s " f0 (show p) c0 n (show i) (show u)) $
    fortune f0 p c0 n i `shouldBe` u

main = hspec spec

spec = do
  describe "fortune" $ do
    testFortune 100000 1 2000 15 1 True
    testFortune 100000 1 9185 12 1 False
    testFortune 100000000 1 100000 50 1 True
    testFortune 100000000 1.5 10000000 50 1 False
    testFortune 100000000 5 1000000 50 1 True
    testFortune 37609185 6.440027393056677 767469 13 4.477627053527183 True
    testFortune 20386589 7.768904250828843 1010495 50 3.9957902384693647 False
    testFortune 8219548 6.639458042028433 687632 15 1.114296489498848 True
    testFortune 9999 61.8161 10000 3 0.0 False
    testFortune 10000 0.0 10000 2 0.0 True
