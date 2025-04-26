module DotCalculatorSpec where

import DotCalculator (calculator)
import Test.Hspec

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    fixedTest "..... // ." "....."
    fixedTest "..... * .." ".........."
    fixedTest "..... // .." ".."
    fixedTest "..... - ." "...."
    fixedTest "..... + ..............." "...................."
    fixedTest "..... * ..." "..............."
    fixedTest "..... - ..." ".."
    fixedTest ". - ." ""
    fixedTest ". // .." ""

fixedTest :: String -> String -> Spec
fixedTest input expected = it (show input) $ calculator input `shouldBe` expected
