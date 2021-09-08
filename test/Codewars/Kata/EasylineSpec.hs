module Codewars.Kata.EasylineSpec where
import Codewars.Kata.Easyline (easyLine)

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testLine :: Integer -> Integer -> Spec
testLine n s = 
  it (printf "should return easyLine for n = %i " n) $
    easyLine n `shouldBe` s
    
spec :: Spec
spec = do
    describe "easyline" $ do
        testLine 0 1
        testLine 1 2
        testLine 2 6
        testLine 3 20
        testLine 4 70
        testLine 5 252
        testLine 7 3432
        testLine 13 10400600
        testLine 17 2333606220
        testLine 19 35345263800
