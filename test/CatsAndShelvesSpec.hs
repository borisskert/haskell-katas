module CatsAndShelvesSpec (spec) where

import CatsAndShelves (solve)
import Test.Hspec
import Test.HUnit (assertEqual)

spec :: Spec
spec = do
  it "example tests" $ do
    assertEqual "solve 1 5" 2 $ solve 1 5
    assertEqual "solve 3 3" 0 $ solve 3 3
    assertEqual "solve 1 1" 0 $ solve 1 1
    assertEqual "solve 1 2" 1 $ solve 1 2
    assertEqual "solve 1 5" 2 $ solve 1 5
    assertEqual "solve 1 4" 1 $ solve 1 4
    assertEqual "solve 2 4" 2 $ solve 2 4
    assertEqual "solve 1 6" 3 $ solve 1 6
    assertEqual "solve 1 10" 3 $ solve 1 10
