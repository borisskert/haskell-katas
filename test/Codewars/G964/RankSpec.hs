module Codewars.G964.RankSpec where

import Codewars.G964.Rank (rank)
import Data.Char
import Data.List
import Data.List.Split (splitOn)
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testRank :: [Char] -> [Int] -> Int -> [Char] -> Spec
testRank st we n s =
  it (printf "should return Rank for: %s %s %d " st (show we) n) $
    rank st we n `shouldBe` s

spec :: Spec
spec = do
  describe "Rank: Basic Tests" $ do
    testRank "Addison,Jayden,Sofia,Michael,Andrew,Lily,Benjamin" [4, 2, 1, 4, 3, 1, 2] 4 "Benjamin"
    testRank "Lagon,Lily" [1, 5] 2 "Lagon"
    testRank "Addison,Jayden,Sofia,Michael,Andrew,Lily,Benjamin" [4, 2, 1, 4, 3, 1, 2] 8 "Not enough participants"
    testRank "" [4, 2, 1, 4, 3, 1, 2] 6 "No participants"
    testRank "Elijah,Chloe,Elizabeth,Matthew,Natalie,Jayden" [1, 3, 5, 5, 3, 6] 2 "Matthew"
    testRank "William,Willaim,Olivia,Olivai,Lily,Lyli" [1, 1, 1, 1, 1, 1] 1 "Willaim"
    testRank "Jacob,Elijah" [4,3] 1 "Elijah"
