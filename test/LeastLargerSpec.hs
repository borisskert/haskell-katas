module LeastLargerSpec (spec) where

import LeastLarger (leastLarger)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    leastLarger [4, 1, 3, 5, 6] 0 `shouldBe` Just 3
    leastLarger [4, 1, 3, 5, 6] 4 `shouldBe` Nothing
    leastLarger [1, 3, 5, 2, 4] 0 `shouldBe` Just 3
  it "random tests" $ do
    leastLarger [-3, 0, 0] 1 `shouldBe` Nothing
    leastLarger [5, 0, 5, -1, 0, -3, 2] 4 `shouldBe` Just 6
