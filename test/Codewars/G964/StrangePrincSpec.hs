module Codewars.G964.StrangePrincSpec where
import Codewars.G964.StrangePrinc

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testLockers :: Int -> Int -> Spec
testLockers n s = 
    it (printf "should return numOpenLockers for n: %d " n) $
        numOpenLockers n `shouldBe` s

spec :: Spec
spec = do
    describe "numOpenLockers: Basic Tests" $ do 
        testLockers 0 0
        testLockers 1 1
        testLockers 2 1
        testLockers 3 1
        testLockers 4 2
        testLockers 5 2
        testLockers 6 2
        testLockers 7 2
        testLockers 8 2
        testLockers 9 3
        testLockers 10 3
        testLockers 11 3
        testLockers 12 3
        testLockers 13 3
        testLockers 14 3
        testLockers 15 3
        testLockers 16 4
        testLockers 17 4
        testLockers 18 4
        testLockers 19 4
        testLockers 20 4
        testLockers 21 4
        testLockers 22 4
        testLockers 23 4
        testLockers 24 4
        testLockers 25 5
        testLockers 26 5
        testLockers 27 5
        testLockers 28 5
        testLockers 29 5
        testLockers 30 5
        testLockers 31 5
        testLockers 32 5
        testLockers 56 7
