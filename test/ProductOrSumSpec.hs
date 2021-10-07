module ProductOrSumSpec (spec) where

import ProductOrSum.Preloaded (ProductOrSum(..))
import ProductOrSum (productOrSum)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    productOrSum [10, 41, 8, 16, 20, 36, 9, 13, 20] 3 `shouldBe` Product
    productOrSum [1, 2, 3, 4, 5, 6, 7, 8, 9, 10] 4 `shouldBe` Sum
    productOrSum [10, 20, 3, 30, 5, 4] 3 `shouldBe` Same
    productOrSum [20] 0 `shouldBe` Product
    productOrSum [90,32] 1 `shouldBe` Sum
