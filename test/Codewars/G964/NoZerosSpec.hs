module Codewars.G964.NoZerosSpec where
import Codewars.G964.NoZeros

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testZeros :: Int -> Int -> Spec
testZeros n s = 
    it (printf "should return noBoringZeros for n : %d --> %d \n" n s) $
        noBoringZeros n `shouldBe` s
        
spec :: Spec
spec = do
    describe "noBoringZeros" $ do
        testZeros  1450 145
        testZeros  960000 96
        testZeros  1050 105
        testZeros  (-960000) (-96)
        testZeros  0 0
