module Codewars.Strings1Spec where

import Codewars.Strings1 (lowercaseCount)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
  describe "lowercaseCount" $ do
    it "works for some examples" $ do
      lowercaseCount "abc" `shouldBe` 3
      lowercaseCount "abcABC" `shouldBe` 3
      lowercaseCount "abcABC123" `shouldBe` 3
      lowercaseCount "abcABC123!@€£#$%^&*()_-+=}{[]|\':;?/>.<,~" `shouldBe` 3
      lowercaseCount "" `shouldBe` 0
      lowercaseCount "ABC123!@€£#$%^&*()_-+=}{[]|\':;?/>.<,~" `shouldBe` 0
      lowercaseCount "abcdefghijklmnopqrstuvwxyz" `shouldBe` 26

