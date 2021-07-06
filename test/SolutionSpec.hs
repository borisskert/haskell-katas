module SolutionSpec where

import Solution
import Test.Hspec

spec :: Spec
spec = do
  it "Sample tests" $ do
    solution "world" `shouldBe` "dlrow"
