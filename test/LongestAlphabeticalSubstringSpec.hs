module LongestAlphabeticalSubstringSpec (spec) where

import LongestAlphabeticalSubstring (longest)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    longest "asd" `shouldBe` "as"
    longest "nab" `shouldBe` "ab"
    longest "abcdeapbcdef" `shouldBe` "abcde"
    longest "asdfaaaabbbbcttavvfffffdf" `shouldBe` "aaaabbbbctt"
    longest "asdfbyfgiklag" `shouldBe` "fgikl"
    longest "z" `shouldBe` "z"
    longest "zyba" `shouldBe` "z"
