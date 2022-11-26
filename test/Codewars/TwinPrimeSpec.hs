module Codewars.TwinPrimeSpec (spec) where

import Codewars.IsTwinPrime (isTwinPrime)
import Test.Hspec

spec :: Spec
spec = do
  it "description example tests" $ do
    isTwinPrime 5 `shouldBe` True
    isTwinPrime 7 `shouldBe` True
    isTwinPrime 9 `shouldBe` False
    isTwinPrime 953 `shouldBe` False
  it "more example tests" $ do
    isTwinPrime (-2) `shouldBe` False
    isTwinPrime 25 `shouldBe` False
  it "some of the random tests" $ do
    isTwinPrime 8264 `shouldBe` False
