module KataSpec where

import Kata
import Test.Hspec

spec :: Spec
spec = do
  it "Sample tests" $ do
    nthEven 1 `shouldBe` 0
    nthEven 3 `shouldBe` 4
    nthEven 100 `shouldBe` 198
    nthEven 1298734 `shouldBe` 2597466
