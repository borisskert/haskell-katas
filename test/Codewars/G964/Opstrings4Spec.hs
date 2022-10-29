module Codewars.G964.Opstrings4Spec where

import Codewars.G964.Opstrings4
import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testOpstring4 :: String -> String -> Spec
testOpstring4 r s =
  it (printf "should return rot90Clock for strng: %s \n" (show r)) $
    oper rot90Clock r `shouldBe` s

testOpstring6 :: String -> String -> Spec
testOpstring6 r s =
  it (printf "should return diag1Sym for strng: %s \n" (show r)) $
    oper diag1Sym r `shouldBe` s

testOpstring8 :: String -> String -> Spec
testOpstring8 r s =
  it (printf "should return selfieAndDiag1 for strng: %s \n" (show r)) $
    oper selfieAndDiag1 r `shouldBe` s

spec :: Spec
spec = do
  describe "rot90Clock" $ do
    testOpstring4
      "rgavce\nvGcEKl\ndChZVW\nxNWgXR\niJBYDO\nSdmEKb"
      "Sixdvr\ndJNCGg\nmBWhca\nEYgZEv\nKDXVKc\nbORWle"

  describe "diag1Sym" $ do
    testOpstring6
      "wuUyPC\neNHWxw\nehifmi\ntBTlFI\nvWNpdv\nIFkGjZ"
      "weetvI\nuNhBWF\nUHiTNk\nyWflpG\nPxmFdj\nCwiIvZ"

  describe "selfieAndDiag1" $ do
    testOpstring8
      "NJVGhr\nMObsvw\ntPhCtl\nsoEnhi\nrtQRLK\nzjliWg"
      "NJVGhr|NMtsrz\nMObsvw|JOPotj\ntPhCtl|VbhEQl\nsoEnhi|GsCnRi\nrtQRLK|hvthLW\nzjliWg|rwliKg"
