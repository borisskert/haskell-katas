module Codewars.G964.ArrangestringSpec where
import Codewars.G964.Arrangestring (arrange)   

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testArrange :: String -> String -> Spec
testArrange r s = 
    it (printf "should return arrange for strng: %s " r) $
        arrange r`shouldBe` s

spec :: Spec
spec = do
    describe "arrange" $ do
        testArrange "who hit retaining The That a we taken"  "who RETAINING hit THAT a THE we TAKEN" -- 3
        testArrange "on I came up were so grandmothers" "i CAME on WERE up GRANDMOTHERS so" -- 4
        testArrange "way the my wall them him" "way THE my WALL him THEM" -- 1
        testArrange "turn know great-aunts aunt look A to back" "turn GREAT-AUNTS know AUNT a LOOK to BACK" -- 2
