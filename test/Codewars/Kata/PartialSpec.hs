module Codewars.Kata.PartialSpec where
import Codewars.Kata.Partial
import Test.Hspec

spec :: Spec
spec = do
  describe "wordSearch" $ do
    it "should work for some examples" $ do
      wordSearch "ab"   ["za", "ab", "abc", "zab", "zbc"] `shouldBe` Just ["ab", "abc", "zab"]
      wordSearch "aB"   ["za", "ab", "abc", "zab", "zbc"] `shouldBe` Just ["ab", "abc", "zab"]
      wordSearch "ab"   ["za", "aB", "Abc", "zAB", "zbc"] `shouldBe` Just ["aB", "Abc", "zAB"]
      wordSearch "abcd" ["za", "aB", "Abc", "zAB", "zbc"] `shouldBe` Nothing
      wordSearch "abcd" []                                `shouldBe` Nothing
  describe "contains" $ do
    it "positive tests" $ do
      contains "" "" `shouldBe` True
      contains "a" "abc" `shouldBe` True
      contains "ab" "abc" `shouldBe` True
      contains "abc" "abc" `shouldBe` True
    it "negative tests" $ do
      contains "a" "" `shouldBe` False
      contains "ab" "a" `shouldBe` False
      contains "abc" "ab" `shouldBe` False
      contains "d" "abc" `shouldBe` False
