module Codewars.G964.BarycenterSpec where
import Codewars.G964.Barycenter (barTriang)

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testBary :: (Double, Double) -> (Double, Double) -> (Double, Double) -> (Double, Double) -> Spec
testBary (a, b) (c, d) (e, f) s = 
    it (printf "should return Barycenter for A: %s, B: %s , C: %s ---> %s " (show (a, b)) (show (c, d)) (show (e, f)) (show s)) $
        barTriang  (a, b) (c, d) (e, f) `shouldBe` s

spec :: Spec
spec = do
    describe "Barycenter: Basic Tests" $ do 
        testBary  (4, 6) (12, 4) (10, 10) (8.6667, 6.6667)
        testBary  (4, 2) (12, 2) (6, 10) (7.3333, 4.6667)
        testBary  (4, 8) (8, 2) (16, 6) (9.3333, 5.3333)
        testBary  (0, 0) (1, 3) (-1, 6) (0.0, 3.0)
        testBary  (0, 0) (1, 6) (8, -6) (3.0, 0.0)
