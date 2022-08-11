module Codewars.G964.HiddenseqSpec (spec, main) where
import Codewars.G964.Hiddenseq (fcn)

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testFcn :: Integer -> Integer -> Spec
testFcn n u = 
    it (printf "should return fcn for n: %d --> %d " n u) $
        fcn n `shouldBe` u

spec = do

    describe "fcn" $ do
        testFcn 0 1
        testFcn 1 2
        testFcn 14 16384 
        testFcn 17 131072
        testFcn 19 524288
        testFcn 21 2097152
        testFcn 43 8796093022208
        
main = hspec spec
