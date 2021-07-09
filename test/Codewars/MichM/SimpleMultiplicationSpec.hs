module Codewars.MichM.SimpleMultiplicationSpec where

import Codewars.MichM.SimpleMultiplication (simpleMultiplication)
import Test.Hspec

testSimpleMultiplication :: Int -> Int -> Spec
testSimpleMultiplication n u = 
    it ("should return  for n: " ++ show n ++ " --> " ++ show u) $
        simpleMultiplication n `shouldBe` u

spec :: Spec
spec = do
    describe "simpleMultiplication basic tests" $ do
        testSimpleMultiplication 2  16
        testSimpleMultiplication 1 9
        testSimpleMultiplication 8 64
        testSimpleMultiplication 4 32
        testSimpleMultiplication 5 45
