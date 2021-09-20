module ProductSpec where
import Test.Hspec
import Product (product')

spec :: Spec
spec = do
  describe "Example Tests" $
    it "should work with example tests" $ do
      product' ""       `shouldBe` 0
      product' "!"      `shouldBe` 0
      product' "!!??!!" `shouldBe` 8
