module NoisyCellCountsSpec (spec) where

import NoisyCellCounts (cleanedCounts)
import Test.HUnit (assertEqual)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    assertEqual "cleanedCounts [1,1,2,2,1,2,2,2,2]" [1, 1, 2, 2, 2, 2, 2, 2, 2] $ cleanedCounts [1, 1, 2, 2, 1, 2, 2, 2, 2]
    assertEqual "cleanedCounts [2,1,2]" [2, 2, 2] $ cleanedCounts [2, 1, 2]
    assertEqual "cleanedCounts [4,4,4,4]" [4, 4, 4, 4] $ cleanedCounts [4, 4, 4, 4]
    assertEqual "cleanedCounts [5,5,6,5,5,5,5,6]" [5, 5, 6, 6, 6, 6, 6, 6] $ cleanedCounts [5, 5, 6, 5, 5, 5, 5, 6]
