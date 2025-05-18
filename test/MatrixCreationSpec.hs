module MatrixCreationSpec (spec) where

import MatrixCreation (getMatrix)
import Test.HUnit (assertEqual)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    assertEqual "getMatrix 0" [] $ getMatrix 0
    assertEqual "getMatrix 1" [[1]] $ getMatrix 1
    assertEqual
      "getMatrix 2"
      [ [1, 0],
        [0, 1]
      ]
      $ getMatrix 2
    assertEqual
      "getMatrix 5"
      [ [1, 0, 0, 0, 0],
        [0, 1, 0, 0, 0],
        [0, 0, 1, 0, 0],
        [0, 0, 0, 1, 0],
        [0, 0, 0, 0, 1]
      ]
      $ getMatrix 5
