module PrimorialSpec where

import Primorial
import Test.Hspec

spec = do
  describe "Primorial of a number" $ do
    it "Basic tests" $ do
      numPrimorial 1 `shouldBe` 2
      numPrimorial 2 `shouldBe` 6
      numPrimorial 3 `shouldBe` 30
      numPrimorial 4 `shouldBe` 210
      numPrimorial 5 `shouldBe` 2310
      numPrimorial 6 `shouldBe` 30030
      numPrimorial 7 `shouldBe` 510510
      numPrimorial 8 `shouldBe` 9699690
      numPrimorial 9 `shouldBe` 223092870
      numPrimorial 10 `shouldBe` 6469693230
      numPrimorial 11 `shouldBe` 200560490130
      numPrimorial 12 `shouldBe` 7420738134810
      numPrimorial 13 `shouldBe` 304250263527210
      numPrimorial 14 `shouldBe` 13082761331670030
      numPrimorial 15 `shouldBe` 614889782588491410
