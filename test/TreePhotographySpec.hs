module TreePhotographySpec (spec) where

import Test.HUnit (assertEqual)
import Test.Hspec
import TreePhotography (treePhotography)

spec :: Spec
spec = do
  it "example tests" $ do
    assertEqual "treePhotography [1, 2, 3, 6, 5]: 4 > 2" "left" $ treePhotography [1, 2, 3, 6, 5]
    assertEqual "treePhotography [5, 6, 5, 4]: 2 < 3" "right" $ treePhotography [5, 6, 5, 4]
    assertEqual "treePhotography [1, 3, 1, 6, 5]: 3 > 2" "left" $ treePhotography [1, 3, 1, 6, 5]
    assertEqual "treePhotography [1, 1, 2, 2, 2, 2, 3]: 3 > 1" "left" $ treePhotography [1, 1, 2, 2, 2, 2, 3]
    assertEqual "treePhotography [1, 2, 3, 2, 2, 2, 2, 2, 2, 2, 2]: 3 > 2" "left" $ treePhotography [1, 2, 3, 2, 2, 2, 2, 2, 2, 2, 2]
    assertEqual "treePhotography [3, 3, 3, 3, 2]: 1 < 2" "right" $ treePhotography [3, 3, 3, 3, 2]
    assertEqual "treePhotography [4, 3, 2, 3, 3, 3, 1]: 1 < 3" "right" $ treePhotography [4, 3, 2, 3, 3, 3, 1]
    assertEqual "treePhotography [3, 1, 4, 5, 2, 5, 1]: 3 > 2" "left" $ treePhotography [3, 1, 4, 5, 2, 5, 1]
    assertEqual "treePhotography [4, 3, 3, 4, 3, 1, 3]: 1 < 2" "right" $ treePhotography [4, 3, 3, 4, 3, 1, 3]
    assertEqual "treePhotography [5, 1, 2]: 1 < 2" "right" $ treePhotography [5, 1, 2]
    assertEqual "treePhotography [1, 2, 4, 1, 5, 3, 1]: 4 > 3" "left" $ treePhotography [1, 2, 4, 1, 5, 3, 1]
    assertEqual "treePhotography [1, 1, 1, 4, 1, 3, 5]: 3 > 1" "left" $ treePhotography [1, 1, 1, 4, 1, 3, 5]
    assertEqual "treePhotography [3, 1, 4, 1, 5, 9, 2, 6]: 4 > 2" "left" $ treePhotography [3, 1, 4, 1, 5, 9, 2, 6]
