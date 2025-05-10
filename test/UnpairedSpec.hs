module UnpairedSpec where

import Test.Hspec
import Unpaired (hotSingles)

spec :: Spec
spec = do
  describe "Fixed Tests" $ do
    runTest [1, 2, 3, 3] [3, 2, 1, 4, 5] [4, 5]
    runTest ["tartar", "blanket", "cinnamon"] ["cinnamon", "blanket", "domino"] ["tartar", "domino"]
    runTest [77] [78, 42] [77, 78, 42]
    runTest [1, 2, 3, 3] [3, 2, 1, 4, 5, 4] [4, 5]
    runTest [1, 2, 3] [3, 3, 2, 1] []
    runTest [77, 64] [78, 42, 64] [77, 78, 42]
    runTest [100, 45, 7] [100, 2, 3, 45, 5] [7, 2, 3, 5]
    runTest [10, 200, 30] [10, 20, 3, 4, 5, 5, 5, 200] [30, 20, 3, 4, 5]

runTest :: (Show a, Eq a) => [a] -> [a] -> [a] -> Spec
runTest arr1 arr2 expected = do
  it (showInput (arr1, arr2)) $ do
    hotSingles arr1 arr2 `shouldBe` expected

showInput :: (Show a) => ([a], [a]) -> String
showInput (arr1, arr2) =
  showString "hotSingles\n  "
    . shows arr1
    . showString "\n  "
    $ show arr2
