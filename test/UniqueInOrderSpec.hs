module UniqueInOrderSpec (spec) where

import UniqueInOrder (uniqueInOrder)
import Test.Hspec

spec = do
  it "should reduce duplicates" $ do
    uniqueInOrder "AAAABBBCCDAABBB" `shouldBe` "ABCDAB"
