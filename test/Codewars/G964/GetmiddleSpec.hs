module Codewars.G964.GetmiddleSpec where
import Codewars.G964.Getmiddle (getMiddle)

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testGetMid :: String -> String -> Spec
testGetMid s u =
  it (printf "should return getMiddle for s : %s " s) $
    getMiddle s `shouldBe` u

spec :: Spec
spec = do
  describe "getMiddle" $ do
    testGetMid "test" "es"
    testGetMid "testing" "t"
    testGetMid "middle" "dd"
    testGetMid "A" "A"
