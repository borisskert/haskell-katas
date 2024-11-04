module MatrixTransposeSpec where

import MatrixTranspose (transpose)
import Test.Hspec

spec :: Spec
spec = do
  describe "Fixed tests" $ do
    it "works on the example matrix" $ do
      transpose [[1, 2, 3], [4, 5, 6]] `shouldBe` [[1, 4], [2, 5], [3, 6]]
    it "works on other fixed inputs" $ do
      transpose [[1]] `shouldBe` [[1]]
      transpose [[1, 2, 3]] `shouldBe` [[1], [2], [3]]
      transpose [[1, 2, 3], [4, 5, 6], [7, 8, 9]] `shouldBe` [[1, 4, 7], [2, 5, 8], [3, 6, 9]]
      transpose [[1, 0, 0], [0, 1, 0], [0, 0, 1], [0, 1, 0], [1, 0, 0]]
        `shouldBe` [[1, 0, 0, 0, 1], [0, 1, 0, 1, 0], [0, 0, 1, 0, 0]]
