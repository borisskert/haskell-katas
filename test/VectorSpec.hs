module VectorSpec where

import Test.Hspec
import Test.Hspec.Codewars
import Vector (magnitude)

spec :: Spec
spec = do
  it "Fixed Tests" $ do
    magnitude [0, 0] `shouldBeApprox` 0
    magnitude [2 / 3, 1 / 3, 2 / 3] `shouldBeApprox` 1
    magnitude [-2, -4, 4] `shouldBeApprox` 6
