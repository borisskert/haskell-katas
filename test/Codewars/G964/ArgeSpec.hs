module Codewars.G964.ArgeSpec where
import Codewars.G964.Arge (nbYear)

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testNbYear :: Int -> Double -> Int -> Int -> Int -> Spec
testNbYear p0 percent aug p u = 
    it (printf "should return nbYear for n: %d %s %d %d " p0 (show percent) aug p) $
        nbYear p0 percent aug p `shouldBe` u

spec :: Spec
spec = do
    describe "nbYear" $ do
        testNbYear 1500 5 100 5000 15
        testNbYear 1500000 2.5 10000 2000000 10
        testNbYear 1500000 0.25 1000 2000000 94
