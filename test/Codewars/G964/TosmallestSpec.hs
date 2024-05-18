module Codewars.G964.TosmallestSpec where

import Codewars.G964.Tosmallest (smallest)
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

dotest :: Integer -> (Integer, Int, Int) -> Spec
dotest n s =
  it (printf "should return smallest for n : %d --> %s \n" n (show s)) $
    smallest n `shouldBe` s

spec :: Spec
spec = do
  describe "smallest" $ do
    dotest 261235 (126235, 2, 0)
    dotest 209917 (29917, 0, 1)
    dotest 285365 (238565, 3, 1)
    dotest 269045 (26945, 3, 0)
    dotest 296837 (239687, 4, 1)
    dotest 187863002809 (18786300289, 10, 0)
    dotest 935855753 (358557539, 0, 8)
    dotest 111111111 (111111111, 0, 0)
