module SumSpec where

import Sum
import Test.Hspec

spec :: Spec
spec = do
  it "works on fixed cases" $ do
    f 0 `shouldBe` [1, 1]
    f 1 `shouldBe` [1, 2, 3]
    f 2 `shouldBe` [1, 2, 4, 7]
    f 3 `shouldBe` [1, 2, 4, 8, 15]
    f 6 `shouldBe` [1, 2, 4, 8, 16, 32, 64, 127]
    f 10 `shouldBe` [1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2047]

-- the following line is optional for 8.2
main = hspec spec
