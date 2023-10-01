module ASCIITotalSpec (spec) where

import ASCIITotal (uniTotal)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    uniTotal "" `shouldBe` 0
    uniTotal "a" `shouldBe` 97
    uniTotal "b" `shouldBe` 98
    uniTotal "c" `shouldBe` 99
    uniTotal "d" `shouldBe` 100
    uniTotal "e" `shouldBe` 101
    uniTotal "aaa" `shouldBe` 291
    uniTotal "Mary Had A Little Lamb" `shouldBe` 1873
