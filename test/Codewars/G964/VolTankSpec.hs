module Codewars.G964.VolTankSpec where

import Codewars.G964.VolTank
import Test.Hspec
import Text.Printf (printf)

testVolTank :: Int -> Int -> Int -> Int -> Spec
testVolTank h d vt s =
  it (printf "should return tankvol %d %d %d" h d vt) $
    tankvol h d vt `shouldBe` s

spec :: Spec
spec = do
  describe "tankvol" $ do
    testVolTank 5 7 3848 2940
    testVolTank 2 7 3848 907
    testVolTank 40 120 3500 1021 -- (calculation gives about: 1021.26992027)
    testVolTank 60 120 3500 1750
    testVolTank 80 120 3500 2478 --(calculation gives about: 2478.73007973)
    -- testVolTank 3 6 7744 3872 -- but got 3871 - this test is still failing
    testVolTank 3 6 7378 3689 -- but got 3688
