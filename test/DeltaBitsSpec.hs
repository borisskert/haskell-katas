module DeltaBitsSpec (spec) where

import DeltaBits (convertBits)
import Test.HUnit (assertEqual)
import Test.Hspec

spec :: Spec
spec = do
  it "description example test" $ do
    assertEqual "convertBits 31 14" 2 $ convertBits 31 14
  it "more example tests" $ do
    assertEqual "convertBits 7 17" 3 $ convertBits 7 17
    assertEqual "convertBits 31 0" 5 $ convertBits 31 0
    assertEqual "convertBits 0 0" 0 $ convertBits 0 0
    assertEqual "convertBits 127681 127681" 0 $ convertBits 127681 127681
    assertEqual "convertBits 312312312 5645657" 13 $ convertBits 312312312 5645657
    assertEqual "convertBits 43 2009989843" 17 $ convertBits 43 2009989843
