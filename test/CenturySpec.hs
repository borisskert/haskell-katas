module CenturySpec (spec) where

import Century (century)
import Test.Hspec

spec = do
  it "Basic tests" $ do
    century 1705 `shouldBe` 18
    century 1900 `shouldBe` 19
    century 1601 `shouldBe` 17
    century 2000 `shouldBe` 20
