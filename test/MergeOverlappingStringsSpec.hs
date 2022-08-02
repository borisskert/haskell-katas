module MergeOverlappingStringsSpec (spec) where

import MergeOverlappingStrings (merge)
import Test.Hspec

spec :: Spec
spec = do
  it "example tests" $ do
    merge "abcde" "cdefgh" `shouldBe` "abcdefgh"
    merge "abaab" "aabab" `shouldBe` "abaabab"
    merge "abc" "def" `shouldBe` "abcdef"
    merge "abc" "abc" `shouldBe` "abc"
    merge [GT,GT] [] `shouldBe` [GT,GT]
    merge [] [GT,GT] `shouldBe` [GT,GT]
    merge [GT,GT] [GT] `shouldBe` [GT,GT]
    merge [GT] [GT,GT] `shouldBe` [GT,GT]
    merge [GT, GT] [GT,GT] `shouldBe` [GT,GT]
