module FeynmanSpec where
import Feynman
import Test.Hspec

spec :: Spec
spec = do
  describe "countSquares" $ do
    it "should work for some examples" $ do
      countSquares 1 `shouldBe` 1
      countSquares 2 `shouldBe` 5
      countSquares 3 `shouldBe` 14
      countSquares 5 `shouldBe` 55
      countSquares 8 `shouldBe` 204
      countSquares 15 `shouldBe` 1240
