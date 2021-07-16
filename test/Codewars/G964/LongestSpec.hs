module Codewars.G964.LongestSpec where
import Codewars.G964.Longest (longest)   

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testLongest :: [Char] -> [Char] -> [Char] -> Spec
testLongest s1 s2 s = 
    it (printf "should return longest for s1: %s, s2: %s " s1 s2) $
        longest s1 s2 `shouldBe` s

spec :: Spec
spec = do
    describe "longest: Basic Tests" $ do 
        testLongest "aretheyhere" "yestheyarehere" "aehrsty"
        testLongest "loopingisfunbutdangerous" "lessdangerousthancoding" "abcdefghilnoprstu"
        testLongest "inmanylanguages" "theresapairoffunctions" "acefghilmnoprstuy"        
