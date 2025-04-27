module UnscrambledEggsSpec (spec) where

import UnscrambledEggs (unscrambleEggs)
import Test.Hspec
import Test.HUnit (assertEqual)

spec :: Spec
spec = do
  it "example tests" $ do
    assertEqual "unscrambleEggs(\"Beggegeggineggneggeregg\")" "Beginner" $ unscrambleEggs "Beggegeggineggneggeregg"
    assertEqual "unscrambleEggs(\"ceggodegge heggeregge\")" "code here" $ unscrambleEggs "ceggodegge heggeregge"
    assertEqual "unscrambleEggs(\"FeggUNegg KeggATeggA\")" "FUN KATA" $ unscrambleEggs "FeggUNegg KeggATeggA"
