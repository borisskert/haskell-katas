module Codewars.G964.PrinterSpec where
import Codewars.G964.Printer (printerError)

import Test.Hspec
import Test.QuickCheck
import Text.Printf (printf)

testPrinter :: [Char] -> [Char] -> Spec
testPrinter s u = 
    it (printf "should return printerError for s : %s --> %s " s u) $
        printerError s `shouldBe` u

spec :: Spec
spec = do
    describe "printerError" $ do
        testPrinter "aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz" "3/56"
