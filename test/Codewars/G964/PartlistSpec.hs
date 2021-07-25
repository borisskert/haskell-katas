module Codewars.G964.PartlistSpec where
import Codewars.G964.Partlist

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testPart :: [[Char]] -> [([Char], [Char])] -> Spec
testPart s1 s = 
    it (printf "should return partlist for s1: %s " (show s1)) $
        partlist s1 `shouldBe` s

spec :: Spec
spec = do
    describe "partlist" $ do
        testPart ["I", "wish", "I", "hadn't", "come"]
            [("I", "wish I hadn't come"), ("I wish", "I hadn't come"), ("I wish I", "hadn't come"), ("I wish I hadn't", "come")]
        testPart ["cdIw", "tzIy", "xDu", "rThG"]
            [("cdIw", "tzIy xDu rThG"), ("cdIw tzIy", "xDu rThG"), ("cdIw tzIy xDu", "rThG")]
        testPart ["vJQ", "anj", "mQDq", "sOZ"]
            [("vJQ", "anj mQDq sOZ"), ("vJQ anj", "mQDq sOZ"), ("vJQ anj mQDq", "sOZ")]
