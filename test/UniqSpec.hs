module UniqSpec (spec) where

import Uniq (uniq)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    uniq "aabbcabcc" `shouldBe` "abcabc"
    uniq "aaabbbccc" `shouldBe` "abc"
