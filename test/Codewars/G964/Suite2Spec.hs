module Codewars.G964.Suite2Spec where

import Codewars.G964.Suite2
import Test.Hspec
import Text.Printf (printf)

testGame :: Integer -> Either Integer (Integer, Integer) -> Spec
testGame n s =
  it (printf "should return game") $
    game n `shouldBe` s

spec :: Spec
spec = do
  describe "game" $ do
    testGame 0 (Left 0)
    testGame 1 (Right (1, 2))
    testGame 8 (Left 32)
    testGame 40 (Left 800)
    testGame 101 (Right (10201,2))
    testGame 807 (Right (651249,2))
    testGame 750001 (Right (562501500001,2))
    testGame 3000001 (Right (9000006000001,2))
    testGame 5401 (Right (29170801,2))
    testGame 204 (Left 20808)
    testGame 1808 (Left 1634432)
    testGame 5014 (Left 12570098)
    testGame 120000 (Left 7200000000)
    testGame 3000000 (Left 4500000000000)
    testGame 37758 (Left 712833282)
