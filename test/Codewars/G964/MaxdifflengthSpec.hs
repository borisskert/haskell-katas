module Codewars.G964.MaxdifflengthSpec where
import Codewars.G964.Maxdifflength (mxdiflg)   

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testMxdiflg ::  [String] -> [String] -> Maybe Int -> Spec
testMxdiflg s1 s2 s = 
    it (printf "should return mxdiflg for s1: %s, s2: %s \n" (show s1) (show s2)) $
        mxdiflg s1 s2 `shouldBe` s

spec :: Spec
spec = do
    describe "mxdiflg: Basic Tests" $ do 
        let s1 = ["hoqq", "bbllkw", "oox", "ejjuyyy", "plmiis", "xxxzgpsssa", "xxwwkktt", "znnnnfqknaz", "qqquuhii", "dvvvwz"]
        let s2 = ["cccooommaaqqoxii", "gggqaffhhh", "tttoowwwmmww"]
        testMxdiflg s1 s2 (Just 13)
