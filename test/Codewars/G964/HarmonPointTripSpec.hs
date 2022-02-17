module Codewars.G964.HarmonPointTripSpec (spec, main) where
import Codewars.G964.HarmonPointTrip (harmonPointTrip)

import Text.Printf (printf)

import Test.Hspec

testHarmon :: Float -> Float -> Float -> String -> Spec
testHarmon a b c s = 
    it (printf "should return harmonPointTrip for a: %f, b: %f , c: %f " a b c) $
        harmonPointTrip a b c `shouldBe` s
        
main = hspec spec
spec = do
    describe "harmonPointTrip: Basic Tests" $ do 
        testHarmon 2 10 20 "7.14"
        testHarmon 3 9 18 "6.75"
        testHarmon 6 10 11 "9.33"
