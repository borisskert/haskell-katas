module PrimeStringSpec (spec) where

import Test.Hspec
import PrimeString (primeString)

spec :: Spec
spec = do
  it "example tests" $ do
    primeString "abac" `shouldBe` True
    primeString "abab" `shouldBe` False
    primeString "aaaa" `shouldBe` False
    primeString "x" `shouldBe` True
    primeString "abc" `shouldBe` True
    primeString "fdsyffdsyffdsyffdsyffdsyf" `shouldBe` False
    primeString "utdutdtdutd" `shouldBe` True
    primeString "abba" `shouldBe` True
