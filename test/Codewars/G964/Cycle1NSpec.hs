module Codewars.G964.Cycle1NSpec (spec, main) where

import Codewars.G964.Cycle1N (cycli)
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

dotest :: Int -> Int -> Spec
dotest n u =
  it (printf "should return cycli n : %d --> %s " n (show u)) $
    cycli n `shouldBe` u

spec = do
  describe "cycli" $ do
    dotest 2 (-1)
    dotest 3 1
    dotest 4 (-1)
    dotest 5 (-1)
    dotest 6 (-1)
    dotest 7 6
    dotest 8 (-1)
    dotest 9 1
    dotest 10 (-1)
    dotest 11 2
    dotest 12 (-1)
    dotest 13 6
    dotest 14 (-1)
    dotest 15 (-1)
    dotest 16 (-1)
    dotest 17 16
    dotest 19 18
    dotest 33 2
    dotest 51 16
    dotest 53 13
    dotest 59 58
    dotest 69 22
    dotest 93 15
    dotest 97 96
    dotest 111 3
    dotest 133 18
    dotest 159 13
    dotest 167 166
    dotest 183 60
    dotest 197 98
    dotest 38127 6230
    dotest 218713 9744
    dotest 221193 3510
    dotest 431541 726
    dotest 1234567 34020
    dotest 468913 468912

    dotest 65 (-1)
    dotest 94 (-1)
    dotest 18118 (-1)

main = hspec spec
