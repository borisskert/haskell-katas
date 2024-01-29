module ConstructSubmatrixSpec (spec) where

import ConstructSubmatrix (constructSubmatrix)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    constructSubmatrix
      [ [1, 0, 0, 2],
        [0, 5, 0, 1],
        [0, 0, 3, 5]
      ]
      [1]
      [0, 2]
      `shouldBe` [ [0, 2],
                   [0, 5]
                 ]
    constructSubmatrix
      [ [1, 0, 0, 2],
        [0, 5, 0, 1],
        [0, 0, 3, 5]
      ]
      []
      [0]
      `shouldBe` [ [0, 0, 2],
                   [5, 0, 1],
                   [0, 3, 5]
                 ]
    constructSubmatrix [[1]] [] [] `shouldBe` [[1]]
    constructSubmatrix [[1]] [] [0] `shouldBe` [[]]
    constructSubmatrix [[1]] [0] [0] `shouldBe` []
