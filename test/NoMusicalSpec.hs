module NoMusicalSpec (spec) where

import NoMusical (noMusical)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    noMusical 2000 2010 4 4 `shouldBe` 0
    noMusical 2000 2010 5 3 `shouldBe` 4
    noMusical 2000 2000 100 3 `shouldBe` 0
    noMusical 2000 3000 0 50 `shouldBe` 1001
    noMusical 2000 2020 2 4 `shouldBe` 0
    noMusical 2000 3000 5 2 `shouldBe` 600
    noMusical 2980 3321 14 17 `shouldBe` 0
    noMusical 2384 2656 12 11 `shouldBe` 23
    noMusical 2051 2087 8 16 `shouldBe` 0
    noMusical 2279 3092 15 9 `shouldBe` 327
