module AckermannSpec (spec, main) where

import Ackermann (ackermann)
import Test.Hspec

main = hspec spec

spec = do
  describe "ackermann" $ do
    it "should work on some simple examples" $ do
      ackermann 1 1 `shouldBe` 3
      ackermann 4 0 `shouldBe` 13
      ackermann 3 3 `shouldBe` 61
