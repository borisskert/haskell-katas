module BitCountingSpec (spec) where

import BitCounting (countBits)
import Test.Hspec
import Test.Hspec.Codewars

spec :: Spec
spec = do
  it "example tests" $ do
    countBits 0 `shouldBe` 0
    countBits 4 `shouldBe` 1
    countBits 7 `shouldBe` 3
    countBits 9 `shouldBe` 2
    countBits 10 `shouldBe` 2
  it "some library functions are not imported" $ do
    moduleShouldHide (FromModule "Data.Bits" "popCount") "src/BitCounting.hs"
    moduleShouldHide (FromModule "Data.Bits" "popCountDefault") "src/BitCounting.hs"
