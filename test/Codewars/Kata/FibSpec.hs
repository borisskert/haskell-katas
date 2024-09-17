module Codewars.Kata.FibSpec where
import Codewars.Kata.Fib (productFib)
import Test.Hspec

spec :: Spec
spec = do
  describe "productFib" $ do
    it "should work for some examples" $ do
      productFib 4895 `shouldBe` (55,  89, True)
      productFib 5895 `shouldBe` (89, 144, False)
