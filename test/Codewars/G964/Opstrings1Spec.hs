module Codewars.G964.Opstrings1Spec where

import Codewars.G964.Opstrings1
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testOpstring5 :: String -> String -> Spec
testOpstring5 r s =
  it (printf "should return rot90Counter for strng: %s \n" (show r)) $
    rot90Counter r `shouldBe` s

testOpstring7 :: String -> String -> Spec
testOpstring7 r s =
  it (printf "should return diag2Sym for strng: %s \n" (show r)) $
    diag2Sym r `shouldBe` s

testOpstring8 :: String -> String -> Spec
testOpstring8 r s =
  it (printf "should return selfieDiag2Counterclock for strng: %s \n" (show r)) $
    selfieDiag2Counterclock r `shouldBe` s

spec :: Spec
spec = do
  describe "rot90Counter" $ do
    testOpstring5
      "EcGcXJ\naaygcA\nNgIshN\nyOrCZE\neBEqpm\nNkxCgw"
      "JANEmw\nXchZpg\ncgsCqC\nGyIrEx\ncagOBk\nEaNyeN"

  describe "diag2Sym" $ do
    testOpstring7
      "LmvLyg\nDKELBm\nylJhui\nXRXqHD\nzlisCT\nhPqxYb"
      "bTDimg\nYCHuBy\nxsqhLL\nqiXJEv\nPlRlKm\nhzXyDL"

  describe "selfieDiag2Counterclock" $ do
    testOpstring8
      "NJVGhr\nMObsvw\ntPhCtl\nsoEnhi\nrtQRLK\nzjliWg"
      "NJVGhr|gKilwr|rwliKg\nMObsvw|WLhtvh|hvthLW\ntPhCtl|iRnCsG|GsCnRi\nsoEnhi|lQEhbV|VbhEQl\nrtQRLK|jtoPOJ|JOPotj\nzjliWg|zrstMN|NMtsrz"
