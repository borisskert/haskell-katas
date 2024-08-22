module DuplicateArgumentsSpec (spec) where

import DuplicateArguments (solution)
import Test.HUnit (assertEqual)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    assertEqual "solution [1,2,3]" False $ solution [1, 2, 3]
    assertEqual "solution [1,2,3,2]" True $ solution [1, 2, 3, 2]
    assertEqual "solution \"1232\"" True $ solution "1232"
