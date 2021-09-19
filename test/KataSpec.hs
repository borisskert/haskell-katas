module KataSpec where
import Test.Hspec
import Kata (product')

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      product' ""       `shouldBe` 0
      product' "!"      `shouldBe` 0
      product' "!!??!!" `shouldBe` 8
