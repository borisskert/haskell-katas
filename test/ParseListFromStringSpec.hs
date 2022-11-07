module ParseListFromStringSpec (spec) where

import ParseListFromString (parse)
import Test.Hspec

spec :: Spec
spec = do
  describe "parse" $ do
    it "should pass the example tests provided in the Description" $ do
      parse "1 -> 2 -> 3 -> null" `shouldBe` [1, 2, 3]
      parse "0 -> 1 -> 4 -> 9 -> 16 -> null" `shouldBe` [0, 1, 4, 9, 16]
      parse "null" `shouldBe` []
