module ThreePowersOfTwoSpec (spec) where

import Test.HUnit (assertEqual)
import Test.Hspec
import ThreePowersOfTwo (threePowers)

spec :: Spec
spec = do
  it "example tests" $ do
    assertEqual "threePowers 1" False $ threePowers 1
    assertEqual "threePowers 2" False $ threePowers 2
    assertEqual "threePowers 3" True $ threePowers 3
    assertEqual "threePowers 4" True $ threePowers 4
    assertEqual "threePowers 5" True $ threePowers 5
    assertEqual "threePowers 9" True $ threePowers 9
    assertEqual "threePowers 15" False $ threePowers 15
    assertEqual "threePowers 276" True $ threePowers 276
    assertEqual "threePowers 354" False $ threePowers 354
