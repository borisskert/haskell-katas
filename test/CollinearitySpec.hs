module CollinearitySpec (spec) where

import Collinearity (collinearity)
import Test.Hspec

spec :: Spec
spec = do
  describe "Example tests" $ do
    it "collinear vectors" $ do
      collinearity (1, 1) (1, 1) `shouldBe` True
      collinearity (1, 2) (2, 4) `shouldBe` True
      collinearity (1, 2) (-1, -2) `shouldBe` True
    it "non-collinear vectors" $ do
      collinearity (1, 1) (6, 1) `shouldBe` False
      collinearity (1, 2) (1, -2) `shouldBe` False
    it "vectors containing zero" $ do
      collinearity (4, 0) (11, 0) `shouldBe` True
      collinearity (0, 1) (6, 0) `shouldBe` False
      collinearity (4, 4) (0, 4) `shouldBe` False
    it "zero vectors" $ do
      collinearity (0, 0) (0, 0) `shouldBe` True
      collinearity (0, 0) (1, 0) `shouldBe` True
      collinearity (5, 7) (0, 0) `shouldBe` True
