module RepeatSequenceLengthSpec (spec) where

import RepeatSequenceLength (repeatSequenceLength)
import Test.HUnit (assertEqual)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    assertEqual "repeatSequenceLength 1" 1 $ repeatSequenceLength 1
    assertEqual "repeatSequenceLength 85" 8 $ repeatSequenceLength 85
    assertEqual "repeatSequenceLength 810" 8 $ repeatSequenceLength 810
    assertEqual "repeatSequenceLength 812" 8 $ repeatSequenceLength 812
    assertEqual "repeatSequenceLength 818" 1 $ repeatSequenceLength 818
    assertEqual "repeatSequenceLength 833" 1 $ repeatSequenceLength 833
