module AnagramDiffSpec where

import AnagramDiff
import Test.Hspec

spec :: Spec
spec = do
  describe "Anagram Difference" $ do
    it "Basic tests" $ do
      anagramDifference "" "" `shouldBe` 0
      anagramDifference "" "" `shouldBe` 0
      anagramDifference "a" "" `shouldBe` 1
      anagramDifference "" "a" `shouldBe` 1
      anagramDifference "ab" "a" `shouldBe` 1
      anagramDifference "ab" "ba" `shouldBe` 0
      anagramDifference "ab" "cd" `shouldBe` 4
      anagramDifference "aab" "a" `shouldBe` 2
      anagramDifference "a" "aab" `shouldBe` 2
      anagramDifference "codewars" "hackerrank" `shouldBe` 10
