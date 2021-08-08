module Codewars.G964.RotationsSpec (spec, main) where
import Codewars.G964.Rotations

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

import Data.List (sort)

testRot :: String -> [String] -> Bool -> Spec
testRot strng arr s = 
    it (printf "should return containAllRots for strng arr : %s %s \n" strng (show arr)) $
        containAllRots strng arr `shouldBe` s

main = hspec spec
spec = do
    
    describe "containAllRots" $ do
        testRot "bsjq" ["bsjq", "qbsj", "sjqb", "twZNsslC", "jqbs"] True
        testRot "" [] True
        testRot "" ["bsjq", "qbsj"] True
        testRot "XjYABhR" ["TzYxlgfnhf", "yqVAuoLjMLy", "BhRXjYA", "YABhRXj", "hRXjYAB", "jYABhRX", "XjYABhR", "ABhRXjY"] False
        testRot "12341234" ["DIeF","IeFD","12341234","41234123","34123412","23412341"] True

    describe "rotate tests" $ do
      it "should rotate 'bsjq'" $
        (sort $ take 4 $ rotate "bsjq") `shouldBe` ["bsjq", "jqbs", "qbsj", "sjqb"]