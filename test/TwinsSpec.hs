module TwinsSpec (spec) where

import Test.HUnit (assertEqual)
import Test.Hspec
import Twins (evenTwins)

spec :: Spec
spec = do
  it "Example Tests" $ do
    myTest [1, 2, 3, 4] 2
    myTest [99, 703] 1
    myTest [4, 4, 6] 2

myTest :: [Int] -> Int -> Expectation
myTest ns expected = do
  assertEqual message expected actual
  where
    actual = evenTwins ns
    message = "Failed at: " ++ showArgs
    showArgs = show ns
