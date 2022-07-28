module Codewars.G964.CarboatSpec where

import Codewars.G964.Carboat
import Test.Hspec
import Text.Printf (printf)

testhowmuch :: Int -> Int -> [[String]] -> Spec
testhowmuch a b s =
  it (printf "should return howmuch") $
    howmuch a b `shouldBe` s

spec :: Spec
spec = do
  describe "howmuch" $ do
    testhowmuch 1 100 [["M: 37", "B: 5", "C: 4"], ["M: 100", "B: 14", "C: 11"]]
    testhowmuch 2950 2950 []
    testhowmuch 10000 9950 [["M: 9991","B: 1427","C: 1110"]]
