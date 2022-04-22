module Codewars.G964.WeightSortSpec where
import Codewars.G964.WeightSort (orderWeight)

import Test.Hspec
import Text.Printf (printf)
        
testWeightSort :: [Char] -> [Char] -> Spec
testWeightSort strg s = 
    it (printf "should return weightSort for string: %s" strg) $
        orderWeight strg `shouldBe` s
    
spec :: Spec
spec = do
    describe "WeightSort: Basic Tests" $ do        
        testWeightSort "103 123 4444 99 2000" "2000 103 123 4444 99"
        testWeightSort "9999 10003 2000 44444444 9999" "2000 10003 44444444 9999 9999"
