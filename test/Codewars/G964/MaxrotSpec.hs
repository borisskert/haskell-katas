module Codewars.G964.MaxrotSpec where
import Codewars.G964.Maxrot (maxRot)   

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testMaxrot :: Integer -> Integer -> Spec
testMaxrot n u = 
    it (printf "should return maxRot for n: %d " n) $
        maxRot n `shouldBe` u
spec :: Spec
spec = do
    describe "maxRot" $ do
        testMaxrot 38458215 85821534
        testMaxrot 195881031 988103115
        testMaxrot 896219342 962193428
        testMaxrot 69418307 94183076
        testMaxrot 240522578 452782025
        testMaxrot 88700243816673 88700243816673
        testMaxrot 26693744260427 69746476420223
        testMaxrot 6856261969270 8669976521620
        testMaxrot 78995930702517 89959307025177
